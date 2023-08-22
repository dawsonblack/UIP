package org.wcci.usefulAndInvasivePlants.services;

import java.util.List;
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
import org.wcci.usefulAndInvasivePlants.entities.Submission;
import org.wcci.usefulAndInvasivePlants.entities.User;
import org.wcci.usefulAndInvasivePlants.repositories.PlantRepo;
import org.wcci.usefulAndInvasivePlants.repositories.SubmissionRepo;
import org.wcci.usefulAndInvasivePlants.repositories.UserRepo;

@Service
/**
 * I contain the business logic for responding to API requests for
 * plant-related requests. // contains business logic
 */
public class PlantService {
    final private static Logger logger = LoggerFactory.getLogger(PlantService.class);
    final private PlantRepo plantRepo;
    final private UserRepo userRepo;
    final private SubmissionRepo submissionRepo;

    public PlantService(@Autowired final PlantRepo plantRepo, @Autowired final UserRepo userRepo,
            @Autowired final SubmissionRepo submissionRepo) {
        this.plantRepo = plantRepo;
        this.userRepo = userRepo;
        this.submissionRepo = submissionRepo;
    }

    public Stream<Plant> plantStream() {
        final Iterable<Plant> plants = this.plantRepo.findAll();

        // Standard conversion from iterator to stream.
        return StreamSupport.stream(plants.spliterator(), false);
    }

    public Stream<User> userStream() {
        final Iterable<User> users = this.userRepo.findAll();

        // Standard conversion from iterator to stream.
        return StreamSupport.stream(users.spliterator(), false);
    }

    public Stream<Submission> submissionStream() {
        final Iterable<Submission> submissions = this.submissionRepo.findAll();

        // Standard conversion from iterator to stream.
        return StreamSupport.stream(submissions.spliterator(), false);
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
        return plantRepo.save(plant);
    }

    public User addNewUser(final User user) {
        return userRepo.save(user);
    }

    public void deletePlantById(final long plant_id) {
        if (!plantRepo.findById(plant_id).isPresent())
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Plant not found " + plant_id);

        plantRepo.deleteById(plant_id);
    }

    public void deleteUserByID(final long user_id) {
        if (!userRepo.findById(user_id).isPresent())
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found " + user_id);

        userRepo.deleteById(user_id);
    }

    public Plant updatePlant(Plant plant, long plant_id) {
        final Plant databasePlant = findPlant(plant_id);

        if (plant_id != databasePlant.getPlantID())
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Sorry, you may not change the plant_id");

        // Copy the non-ID info from the requestbody to the database object
        databasePlant.setCommonName(plant.getCommonName());
        databasePlant.setIsInvasive(plant.getIsInvasive());
        databasePlant.setColor(plant.getColor());

        // Ask the repo to write the modified student to MySQL (or whatever)
        writeToDatabase(databasePlant);

        return databasePlant;
    }

    public User findUser(final long user_id) {
        final Optional<User> possiblyAUser = userRepo.findById(user_id);
        if (!possiblyAUser.isPresent()) {
            logger.info("User not found: " + user_id);
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "User not found " + user_id);
        }
        return possiblyAUser.get();
    }

    public Iterable<User> getUsers() {

        return userRepo.findAll();

    }

    public User updateUser(User user, long user_id) {
        final User databaseUser = findUser(user_id);

        if (user_id != databaseUser.getUserID())
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Sorry, you may not change the user_id");

        // Copy the non-ID info from the requestbody to the database object
        databaseUser.setSavedPlants(user.getSavedPlants());

        // Ask the repo to write the modified student to MySQL (or whatever)
        addNewUser(databaseUser);

        return databaseUser;
    }

    public User updateUserPlants(List<String> plants, long user_id) {
        final User databaseUser = findUser(user_id);
        final List<String> updatedPlants = databaseUser.getSavedPlants();
        updatedPlants.addAll(plants);
        if (user_id != databaseUser.getUserID())
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
                    "Sorry, you may not change the user_id");

        // Copy the non-ID info from the requestbody to the database object
        databaseUser.setSavedPlants(updatedPlants);

        // Ask the repo to write the modified student to MySQL (or whatever)
        addNewUser(databaseUser);
        return databaseUser;
    }

    public Submission findSubmission(final Long plant_id) {
        final Optional<Submission> dataSubmission = submissionRepo.findById(plant_id);
        if (!dataSubmission.isPresent()) {
            logger.info("Submission not found: " + plant_id);
        }
        return dataSubmission.get();
    }

    public Iterable<Submission> getSubmissions() {

        return submissionRepo.findAll();
    }

    public Submission addNewSubmission(final Submission submission) {

        return submissionRepo.save(submission);
    }

    // public Submission addSubmissionToUser(final Submission submission){
    //     final Long user_id;
    //     final Long plant_id;
    //     final Optional<User> datbaseUser = userRepo.findById(user_id);
    //     if (!datbaseUser.isPresent()) {
    //          throw new ResponseStatusException(HttpStatus.BAD_REQUEST,
    //                 "Sorry, you must log in to add plants");
    //     }
    //     return submissionRepo.save(submission);
    // }
    
}
