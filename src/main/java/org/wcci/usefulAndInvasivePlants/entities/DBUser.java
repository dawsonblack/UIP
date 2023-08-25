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
@Entity(name = "users")
@JsonIgnoreProperties(ignoreUnknown = true)
public class DBUser {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long userID; /// should I use Int here instead?
    private String email;
    private String firstName;
    private String username;
    private String password;
    private String roles;
    @Convert(converter = LongListConverter.class)
    private List<Long> savedPlants;

    public DBUser(String username, String password, String roles) {
        this.username = username;
        this.password = password;
        this.roles = roles;
    }

    public DBUser() {
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

    public List<Long> getSavedPlants() {
        if (savedPlants == null) {
            return new ArrayList<Long>();
        }
        return savedPlants;
    }

    public void setSavedPlants(List<Long> savedPlants) {
        this.savedPlants = savedPlants;
    }

    public void setRoles(String roles) {
        this.roles = roles;
    }

    public List<String> getRoles() {
        if (this.roles == null)
            return List.of();
        return List.of(this.roles.split(","));
    }

}
