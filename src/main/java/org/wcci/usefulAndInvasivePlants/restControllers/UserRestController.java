package org.wcci.usefulAndInvasivePlants.restControllers;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.wcci.usefulAndInvasivePlants.entities.Plant;
import org.wcci.usefulAndInvasivePlants.entities.User;
import org.wcci.usefulAndInvasivePlants.services.PlantService;

@RestController
public class UserRestController {
    public static final String LIST_ALL_USERS = "listAllUsers";
    private PlantService plantService;

    public UserRestController(@Autowired PlantService plantService) {
        this.plantService = plantService;
    }

    @GetMapping("api/users/{id}")
    public Optional<User> getUser(@PathVariable long id) {
        return plantService.getUserById(id);
    }

    @GetMapping("api/users")
    public List<User> getUsers() {
        return plantService.getUsers();
    }

    @DeleteMapping("api/users/{id}")
    public void deleteById(@PathVariable long id) {
        plantService.deleteUserByID(id);
    }

    @PostMapping("/api/users")
    public EntityModel<User> newUser(@RequestBody final User user) {
        return EntityModel.of(plantService.addNewUser(user),
                linkTo(methodOn(UserRestController.class).getUser(User.getId())).withSelfRel(),
                linkTo(methodOn(UserRestController.class).getUser()).withRel(LIST_ALL_USERS));
    }

}
