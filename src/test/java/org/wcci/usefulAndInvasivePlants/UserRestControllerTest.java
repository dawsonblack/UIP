package org.wcci.usefulAndInvasivePlants;

import static org.hamcrest.Matchers.hasKey;
import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.hateoas.MediaTypes;
import org.springframework.http.MediaType;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.transaction.annotation.Transactional;

import org.wcci.usefulAndInvasivePlants.entities.User;
import org.wcci.usefulAndInvasivePlants.restControllers.UserRestController;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.jayway.jsonpath.JsonPath;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
@ActiveProfiles(value = "test")
@Transactional()
public class UserRestControllerTest extends HateoasHelper {
        private static final String USER_LIST = "userList";

        @Autowired
        private MockMvc mvc;

        @Test
        public void testUpdateUser() throws Exception {
                User user = new User((long) 102, "email@email", "Michael", "MScott", "paper");

                final MvcResult userPostResult = this.mvc
                                .perform(MockMvcRequestBuilders.post("/api/users")
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON)
                                                .content(new ObjectMapper().writeValueAsString(user)))
                                .andExpect(status().isOk())
                                .andExpect(content().contentTypeCompatibleWith(MediaTypes.HAL_JSON))
                                .andExpect(jsonPath("$._links", hasKey("self")))
                                .andExpect(jsonPath("$._links", hasKey(UserRestController.LIST_ALL_USERS)))
                                .andReturn();

                final User userResultObject = this.extractObject(User.class, userPostResult);

                final MvcResult getAllUsersResult = this.mvc.perform(
                                MockMvcRequestBuilders
                                                .get(extractLink(userPostResult,
                                                                UserRestController.LIST_ALL_USERS))
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON)
                                                .content(new ObjectMapper().writeValueAsString(user))
                                                .accept(MediaTypes.HAL_JSON))
                                .andExpect(status().isOk())
                                .andReturn();

                final List<User> allUsers = extractEmbeddedList(getAllUsersResult, USER_LIST, User.class);
                final List<String> plants = new ArrayList<>();
                plants.add("-1");
                assertEquals(1, allUsers.size());

                this.mvc.perform(
                                MockMvcRequestBuilders
                                                .put("/api/users/" + userResultObject.getUserID() + "/plants")
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON)
                                                .content(new ObjectMapper().writeValueAsString(plants)))
                                .andExpect(status().isOk())
                                .andReturn();

                // And extract the object from the result
                final MvcResult withPlants = this.mvc.perform(
                                MockMvcRequestBuilders
                                                .get("/api/users/" + userResultObject.getUserID())
                                                .accept(MediaTypes.HAL_JSON))
                                .andExpect(status().isOk())
                                .andReturn();

                final User createdUser = new ObjectMapper().readValue(
                                withPlants.getResponse().getContentAsString(),
                                User.class);

                assertEquals(1, createdUser.getUserID());
                assertEquals(1, createdUser.getSavedPlants().size());

                plants.remove(0);
                plants.add("-14");
                this.mvc.perform(
                                MockMvcRequestBuilders
                                                .put("/api/users/" + userResultObject.getUserID() + "/plants")
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON)
                                                .content(new ObjectMapper().writeValueAsString(plants)))
                                .andExpect(status().isOk())
                                .andReturn();

                // And extract the object from the result
                final MvcResult withTwoPlants = this.mvc.perform(
                                MockMvcRequestBuilders
                                                .get("/api/users/" + userResultObject.getUserID())
                                                .accept(MediaTypes.HAL_JSON))
                                .andExpect(status().isOk())
                                .andReturn();

                final User createdUser2 = new ObjectMapper().readValue(
                                withTwoPlants.getResponse().getContentAsString(),
                                User.class);

                assertEquals(2, createdUser2.getSavedPlants().size());
        }
}
