package org.wcci.usefulAndInvasivePlants;

import static org.hamcrest.Matchers.hasKey;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

//import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
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
import org.wcci.usefulAndInvasivePlants.entities.DBUser;
import org.wcci.usefulAndInvasivePlants.restControllers.UserRestController;

import com.fasterxml.jackson.databind.ObjectMapper;
//import com.jayway.jsonpath.JsonPath;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
@AutoConfigureMockMvc
@ActiveProfiles(value = "test")
@Transactional()
public class UserRestControllerTest extends HateoasHelper {
        private static final String USER_LIST = "userList";

        @Autowired
        private MockMvc mvc;

        @Test
        public void testUpdateDBUser() throws Exception {
                DBUser user = new DBUser("MScott", "paper", "USER");
                user.setUserID((long) 102);
                user.setEmail("email@email");
                user.setFirstName("Michael");


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

                final DBUser userResultObject = this.extractObject(DBUser.class, userPostResult);

                final MvcResult getAllDBUsersResult = this.mvc.perform(
                                MockMvcRequestBuilders
                                                .get(extractLink(userPostResult,
                                                                UserRestController.LIST_ALL_USERS))
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON)
                                                .content(new ObjectMapper().writeValueAsString(user))
                                                .accept(MediaTypes.HAL_JSON))
                                .andExpect(status().isOk())
                                .andReturn();

                final List<DBUser> allDBUsers = extractEmbeddedList(getAllDBUsersResult, USER_LIST, DBUser.class);
                final List<String> plants = new ArrayList<>();
                plants.add("-1");
                assertEquals(1, allDBUsers.size());

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

                final DBUser createdDBUser = new ObjectMapper().readValue(
                                withPlants.getResponse().getContentAsString(),
                                DBUser.class);

                assertEquals(1, createdDBUser.getUserID());
                assertEquals(1, createdDBUser.getSavedPlants().size());

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

                final DBUser createdDBUser2 = new ObjectMapper().readValue(
                                withTwoPlants.getResponse().getContentAsString(),
                                DBUser.class);

                assertEquals(2, createdDBUser2.getSavedPlants().size());
        }

        @Test
        public void deleteDBUserSuccessTest()throws Exception{
                DBUser user = new DBUser("MScott", "paper", "USER");
                user.setUserID((long) 102);
                user.setEmail("email@email");
                user.setFirstName("Michael");

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

                final DBUser userResultObject = this.extractObject(DBUser.class, userPostResult);


                                this.mvc
                                .perform(MockMvcRequestBuilders.delete("/api/users/" + userResultObject.getUserID())
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON))
                                .andExpect(status().isNoContent());
                
        }

        @Test
        public void deleteDBUserFailsWrongIdTest()throws Exception{
                this.mvc
                                .perform(MockMvcRequestBuilders.delete("/api/users/" + 111)
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON))
                                .andExpect(status().isNotFound());
        }

        @Test
        public void deleteDBUserFailsBadRequestTest()throws Exception{
                this.mvc
                                .perform(MockMvcRequestBuilders.delete("/api/users/shfkdsj")
                                                .accept(MediaTypes.HAL_JSON)
                                                .contentType(MediaType.APPLICATION_JSON))
                                .andExpect(status().isBadRequest());
        }
}
