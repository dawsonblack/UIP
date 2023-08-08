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
    private String color;

    @Id
    @GeneratedValue
    private Long plantID;

    public void setName(String name) {
        this.name = name;
    }

    public void setIsInvasive(Boolean isInvasive) {
        this.isInvasive = isInvasive;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setPlantID(Long ID) {
        this.plantID = ID;
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


}
