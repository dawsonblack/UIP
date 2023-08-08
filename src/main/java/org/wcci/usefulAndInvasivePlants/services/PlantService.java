package org.wcci.usefulAndInvasivePlants.services;

import java.util.Optional;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import org.wcci.usefulAndInvasivePlants.entities.Plant;
import org.wcci.usefulAndInvasivePlants.repositories.PlantRepo;

@Service
/**
 * I contain the business logic for responding to API requests for
 * plant-related requests.
 */
public class PlantService {
    final private static Logger logger = LoggerFactory.getLogger(PlantService.class);
    final private PlantRepo plantRepo;

    public PlantService(@Autowired final PlantRepo plantRepo) {
        this.plantRepo = plantRepo;
    }

    public Stream<Plant> plantStream() {
        final Iterable<Plant> plants = this.plantRepo.findAll();

        // Standard conversion from iterator to stream.
        return StreamSupport.stream(plants.spliterator(), false);
    }

    public Plant findPlant(final long plant_id) {
        final Optional<Plant> possiblyAPlant = plantRepo.findById(plant_id);
        if (!possiblyAPlant.isPresent()) {
            logger.info("Plant not found: " + plant_id);
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Plant not found " + plant_id);
        }
        return possiblyAPlant.get();
    }

    public Plant writeToDatabase(final Plant plant) {
        if (plant.getName().contains("bad word"))
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Sorry, cursing not allowed");

        return plantRepo.save(plant);
    }

    public void deletePlantById(final long plant_id) {
        if (!plantRepo.findById(plant_id).isPresent())
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Plant not found " + plant_id);

        plantRepo.deleteById(plant_id);
    }

    public Plant updatePlant(Plant plant, long plant_id) {
        final Plant databasePlant = findPlant(plant_id);

        if (plant_id != databasePlant.getPlantID())
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Sorry, you may not change the plant_id");

        // Copy the non-ID info from the requestbody to the database object
        databasePlant.setName(plant.getName());
        databasePlant.setIsInvasive(plant.getIsInvasive());
        databasePlant.setColor(plant.getColor());

        // Ask the repo to write the modified student to MySQL (or whatever)
        writeToDatabase(databasePlant);

        return databasePlant;
    }
}
