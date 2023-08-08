package org.wcci.usefulAndInvasivePlants.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
//import com.fasterxml.jackson.core.JsonProcessingException;
////import com.fasterxml.jackson.core.type.TypeReference;
//import com.fasterxml.jackson.databind.ObjectMapper;

import jakarta.annotation.Generated;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Inheritance;
import jakarta.persistence.InheritanceType;

@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
@Inheritance(strategy = InheritanceType.JOINED)
public class Plant {
    private String name;
    private Boolean isInvasive;
    private Boolean isNative;
    private String color;
    private String imageURL;
    private String imageSource;

    @Id
    @GeneratedValue
    private long plantID;

    public Plant(String name, Boolean isInvasive, Boolean isNative, String color, String URL, String source) {
        this.name = name;
        this.isInvasive = isInvasive;
        this.color = color;
        this.imageURL = URL;
        this.imageSource = source;
    }

    public Plant() {

    }

    public void setName(String name) {
        this.name = name;
    }

    public void setIsInvasive(Boolean isInvasive) {
        this.isInvasive = isInvasive;
    }

    public void setIsNative(Boolean isNative) {
        this.isNative = isNative;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setPlantID(long ID) {
        this.plantID = ID;
    }

    public void setImageURL(String URL) {
        this.imageURL = URL;
    }

    public void setImageSource(String source) {
        this.imageURL = source;
    }

    public String getName() {
        return this.name;
    }

    public Boolean getIsInvasive() {
        return this.isInvasive;
    }

    public String getColor() {
        return this.color;
    }

    public Long getPlantID() {
        return this.plantID;
    }

    public String getImageURL() {
        return this.imageURL;
    }

    public String getImageSource() {
        return this.imageSource;
    }

    public Boolean getIsNative() {
        return this.isNative;
    }

}
