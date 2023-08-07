package org.wcci.usefulAndInvasivePlants.restControllers;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import org.wcci.usefulAndInvasivePlants.entities.Plant;

@RestController
public class PlantRestController {
    public static final String LIST_ALL_PLANTS = "listAllPlants";

    final private PlantService plantService;

    public PlantRestController(@Autowired PlantService plantService) {
        this.plantService = plantService;
    }

    @GetMapping("/api/plants")
    public CollectionModel<EntityModel<Plant>> getPlants() {
        List<EntityModel<Plant>> plants = this.plantService.plantStream()
                .map(plant -> EntityModel.of(plant))
                .collect(Collectors.toList());
        return CollectionModel.of(plants);
    }

    @GetMapping("/api/plants/{plant_id}")
    public EntityModel<Plant> getPlant(@PathVariable final Long plant_id) {
        final Plant plant = plantService.findPlant(plant_id);
        return EntityModel.of(plant,
                linkTo(methodOn(PlantRestController.class).getPlants()).withRel(LIST_ALL_ORGANIC_DOGS),
                linkTo(methodOn(PlantRestController.class).getPlant(plant_id)).withSelfRel());
    }

    @PostMapping("/api/plants")
    public EntityModel<Plant> newPlant(@RequestBody final Plant plant) {
        return EntityModel.of(plantService.writeToDatabase(plant),
                linkTo(methodOn(PlantRestController.class).getPlant(plant.getPetID())).withSelfRel(),
                linkTo(methodOn(PlantRestController.class).getPlants()).withRel(LIST_ALL_ORGANIC_DOGS));
    }

    @DeleteMapping("/api/plants/{plant_id}")
    public void deletePlant(@PathVariable long plant_id) {
        plantService.deletePlantById(plant_id);
    }

    // Talk to the Product Owner before changing this
    @DeleteMapping("/api/plants")
    public void deleteAllPlants() {
        throw new ResponseStatusException(HttpStatus.FORBIDDEN);
    }

    @PutMapping("/api/plants/{plant_id}")
    public EntityModel<Plant> updatePlant(
            @PathVariable final long plant_id, // the name of the parameter (plant_id) must match
                                                    // "{plant_id}" in
                                                    // the line above
            @RequestBody final Plant plant) {
        // Update the plant if that is the right thing to do
        final Plant databasePlant = plantService.updatePlant(plant, plant_id);

        // Return the modified database plant
        return EntityModel.of(databasePlant,
                linkTo(methodOn(PlantRestController.class).getPlant(plant.getPetID())).withSelfRel());
    }
}