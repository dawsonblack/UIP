package org.wcci.usefulAndInvasivePlants.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
//import com.fasterxml.jackson.core.JsonProcessingException;
////import com.fasterxml.jackson.core.type.TypeReference;
//import com.fasterxml.jackson.databind.ObjectMapper;

//import jakarta.annotation.Generated;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Plant {
    private String commonName;
    private String scientificName;
    @Column(length = 1000)
    private String description;
    private Boolean isInvasive;
    private Boolean isNative;
    private String color;
    private String imageFruitURL;
    private String imageLeafURL;
    @Column(length = 1000)
    private String imageFruitSource;
    @Column(length = 1000)
    private String imageLeafSource;
    private String WikiLink;

    @Id
    @GeneratedValue
    private long plantID;

    public Plant(String commonName, String scientificName, String description, Boolean isInvasive, Boolean isNative,
            String color, String FURL,
            String Fsource,
            String LURL, String Lsource, String wiki) {
        this.commonName = commonName;
        this.scientificName = scientificName;
        this.description = description;
        this.isInvasive = isInvasive;
        this.color = color;
        this.imageFruitURL = FURL;
        this.imageFruitSource = Fsource;
        this.imageLeafURL = LURL;
        this.imageLeafSource = Lsource;
        this.WikiLink = wiki;
    }

    public Plant() {

    }

    public void setCommonName(String commonName) {
        this.commonName = commonName;
    }

    public void setScientificName(String scientificName) {
        this.scientificName = scientificName;
    }

    public void setDescription(String description) {
        this.commonName = description;
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

    public void setImageFruitURL(String URL) {
        this.imageFruitURL = URL;
    }

    public void setImageFruitSource(String source) {
        this.imageFruitURL = source;
    }

    public void setImageLeafURL(String URL) {
        this.imageLeafURL = URL;
    }

    public void setImageLeafSource(String source) {
        this.imageLeafURL = source;
    }

    public void setWikiLink(String link) {
        this.WikiLink = link;
    }

    public String getCommonName() {
        return this.commonName;
    }

    public String getScientificName() {
        return this.scientificName;
    }

    public String getDescription() {
        return this.description;
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

    public String getImageFruitURL() {
        return this.imageFruitURL;
    }

    public String getImageFruitSource() {
        return this.imageFruitSource;
    }

    public Boolean getIsNative() {
        return this.isNative;
    }

    public String getImageLeafURL() {
        return this.imageLeafURL;
    }

    public String getImageLeafSource() {
        return this.imageLeafSource;
    }

    public String getWikiLink() {
        return this.WikiLink;
    }

}
