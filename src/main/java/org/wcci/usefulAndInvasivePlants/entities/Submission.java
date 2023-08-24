package org.wcci.usefulAndInvasivePlants.entities;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
@JsonIgnoreProperties(ignoreUnknown = true)
public class Submission {
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
    private String wikiLink;
    private String email;

    

    @Id
    @GeneratedValue
    private long plantID;


    public Submission(String commonName, String scientificName, String description, Boolean isInvasive, Boolean isNative,
    String color, String imageFruitURL,
    String imageFruitSource,
    String imageLeafURL, String imageLeafSource, String wikiLink, String email){
        this.commonName = commonName;
        this.scientificName = scientificName;
        this.description = description;
        this.isInvasive = isInvasive;
        this.isNative = isNative;
        this.color = color;
        this.imageFruitURL = imageFruitURL;
        this.imageLeafURL = imageLeafURL;
        this.imageFruitSource = imageFruitURL;
        this.imageLeafSource = imageLeafSource;
        this.wikiLink = wikiLink;
        this.email = email;
    }

    public Submission(){

    }

    public String getCommonName() {
        return commonName;
    }

    public void setCommonName(String commonName) {
        this.commonName = commonName;
    }

    public String getScientificName() {
        return scientificName;
    }

    public void setScientificName(String scientificName) {
        this.scientificName = scientificName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getIsInvasive() {
        return isInvasive;
    }

    public void setIsInvasive(Boolean isInvasive) {
        this.isInvasive = isInvasive;
    }

    public Boolean getIsNative() {
        return isNative;
    }

    public void setIsNative(Boolean isNative) {
        this.isNative = isNative;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getImageFruitURL() {
        return imageFruitURL;
    }

    public void setImageFruitURL(String imageFruitURL) {
        this.imageFruitURL = imageFruitURL;
    }

    public String getImageLeafURL() {
        return imageLeafURL;
    }

    public void setImageLeafURL(String imageLeafURL) {
        this.imageLeafURL = imageLeafURL;
    }

    public String getImageFruitSource() {
        return imageFruitSource;
    }

    public void setImageFruitSource(String imageFruitSource) {
        this.imageFruitSource = imageFruitSource;
    }

    public String getImageLeafSource() {
        return imageLeafSource;
    }

    public void setImageLeafSource(String imageLeafSource) {
        this.imageLeafSource = imageLeafSource;
    }

    public String getWikiLink() {
        return wikiLink;
    }

    public void setWikiLink(String wikiLink) {
        this.wikiLink = wikiLink;
    }

    public long getPlantID() {
        return plantID;
    }

    public void setPlantID(long ID) {
        this.plantID = ID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
