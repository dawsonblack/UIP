package org.wcci.usefulAndInvasivePlants.restControllers;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.hateoas.Link;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import org.wcci.usefulAndInvasivePlants.entities.Plant;
import org.wcci.usefulAndInvasivePlants.services.PlantService;
import java.util.stream.Stream;

@RestController
@CrossOrigin
public class PlantRestController {
    public static final String LIST_ALL_PLANTS = "listAllPlants";

    final private PlantService plantService;

    // contructor injection through contructor @Autowired
    public PlantRestController(@Autowired PlantService plantService) {
        this.plantService = plantService;
    }

    @GetMapping("/api/plants")
    public CollectionModel<EntityModel<Plant>> getPlants(@RequestParam(value = "page", defaultValue = "1") int page) {
        int pageSize = 10; // Number of plants per page
        int offset = (page - 1) * pageSize;
        long totalPlants = this.plantService.getTotalPlantCount();
        long totalPages = (totalPlants / pageSize);

        Stream<Plant> allPlantsStream = this.plantService.plantStream();

        List<EntityModel<Plant>> plants = allPlantsStream
                .skip(offset)
                .limit(pageSize)
                .map(plant -> EntityModel.of(plant,
                        linkTo(methodOn(PlantRestController.class).getPlant(plant.getPlantID())).withSelfRel()))
                .collect(Collectors.toList());

        List<Link> links = new ArrayList<>();
        links.add(linkTo(methodOn(PlantRestController.class).getPlants(page)).withSelfRel());

        if (page < totalPages) {
            links.add(linkTo(methodOn(PlantRestController.class).getPlants(page + 1)).withRel("nextPage"));
        }

        if (page > 1) {
            links.add(linkTo(methodOn(PlantRestController.class).getPlants(page - 1)).withRel("prevPage"));
        }
        return CollectionModel.of(plants, links);
    }

    @GetMapping("/api/plants/{plant_id}")
    public EntityModel<Plant> getPlant(@PathVariable final Long plant_id) {
        final Plant plant = plantService.findPlant(plant_id);
        return EntityModel.of(plant,
                linkTo(methodOn(PlantRestController.class).getPlants(1)).withRel(LIST_ALL_PLANTS),
                linkTo(methodOn(PlantRestController.class).getPlant(plant_id)).withSelfRel());
    }

    @PostMapping("/api/plants")
    public EntityModel<Plant> newPlant(@RequestBody final Plant plant) {
        return EntityModel.of(plantService.writeToDatabase(plant),
                linkTo(methodOn(PlantRestController.class).getPlant(plant.getPlantID())).withSelfRel(),
                linkTo(methodOn(PlantRestController.class).getPlants(1)).withRel(LIST_ALL_PLANTS));
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
                linkTo(methodOn(PlantRestController.class).getPlant(plant.getPlantID())).withSelfRel());
    }
}