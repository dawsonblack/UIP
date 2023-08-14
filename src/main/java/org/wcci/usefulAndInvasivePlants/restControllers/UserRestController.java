package org.wcci.usefulAndInvasivePlants.restControllers;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import org.wcci.usefulAndInvasivePlants.entities.User;
import org.wcci.usefulAndInvasivePlants.services.PlantService;



@RestController
public class UserRestController {

    //field injection through @autowired
    @Autowired
    private PlantService plantService;

    @GetMapping ("api/users/{id}")
    public Optional<User> getUser(@PathVariable long id){
        return plantService.getUserById(id); 
    }


    @GetMapping("api/users")
    public List<User> getUsers(){
        return plantService.getUsers();
    }

    @DeleteMapping("api/users/{id}")
    public void deleteById(@PathVariable long id){
        plantService.deleteUserByID(id);
    }


}
