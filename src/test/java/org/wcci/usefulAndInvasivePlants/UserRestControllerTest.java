package org.wcci.usefulAndInvasivePlants;

import static org.hamcrest.Matchers.hasKey;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

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
public class UserRestControllerTest extends HateoasHelper {
        private static final String ORGANIC_USER_LIST = "organicUserList";

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

                final User UserResultObject = this.extractObject(User.class, userPostResult);

                final MvcResult getAllUsersResult = this.mvc.perform(
                                MockMvcRequestBuilders
                                                .get(extractLink(userPostResult,
                                                                UserRestController.LIST_ALL_USERS))
                                                .accept(MediaTypes.HAL_JSON))
                                .andExpect(status().isOk())
                                .andReturn();

                final List<User> allUsers = extractEmbeddedList(getAllUsersResult, ORGANIC_USER_LIST, User.class);

                assertEquals(1, allUsers.size());

                this.mvc.perform(
                                MockMvcRequestBuilders
                                                .put("/api/users/" + UserResultObject.getUserID())
                                                .accept(MediaTypes.HAL_JSON))
                                .andExpect(status().isOk())
                                .andReturn();

                // And extract the object from the result
                this.mvc.perform(
                                MockMvcRequestBuilders
                                                .get("/api/users/" + UserResultObject.getUserID())
                                                .accept(MediaTypes.HAL_JSON))
                                .andExpect(status().isOk())
                                .andReturn();

                final User createdUser = new ObjectMapper().readValue(
                                userPostResult.getResponse().getContentAsString(),
                                User.class);

                assertEquals(102, createdUser.getUserID());
        }
}
