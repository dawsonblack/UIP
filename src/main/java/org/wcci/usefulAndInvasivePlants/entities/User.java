package org.wcci.usefulAndInvasivePlants.entities;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

// should we add age as a field??? 
@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long userID; /// should I use Int here instead?
    private String email;
    private String firstName;
    private String username;
    private String password;
    @Convert(converter = StringListConverter.class)
    private List<String> savedPlants;

    public User(String email, String firstName, String username, String password) {
        this.email = email;
        this.firstName = firstName;
        this.username = username;
        this.password = password;
    }

    public User() {
    }

    public Long getUserID() {
        return userID;
    }

    public void setUserID(Long user_id) {
        this.userID = user_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getUsername() {
        return username;
    }

    public void setUserName(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getSavedPlants() {
        if (savedPlants == null) {
            return new ArrayList<String>();
        }
        return savedPlants;
    }

    public void setSavedPlants(List<String> savedPlants) {
        this.savedPlants = savedPlants;
    }

}
