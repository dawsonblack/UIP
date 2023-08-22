import React, { useState, useEffect } from "react";

export default function Submissions() {
  const [commonName, setCommonName] = useState("");
  const [scientificName, setScientificName] = useState("");
  const [description, setDescription] = useState("");
  const [isInvasive, setIsInvasive] = useState(false);
  const [isNative, setIsNative] = useState(false);
  const [color, setColor] = useState("");
  const [imageFruitURL, setImageFruitURL] = useState("");
  const [imageLeafURL, setImageLeafURL] = useState("");
  const [imageFruitSource, setImageFruitSource] = useState("");
  const [imageLeafSource, setImageLeafSource] = useState("");
  const [wikiLink, setWikiLink] = useState("");

  const handleCommonNameChange = ({ target }) => {
    setCommonName(target.value);
  };

  const handleScientificNameChange = ({ target }) => {
    setScientificName(target.value);
  };

  const handleDescriptionChange = ({ target }) => {
    setDescription(target.value);
  };

  const handleIsInvasiveChange = () => {
    setIsInvasive(!isInvasive);
  };

  const handleIsNativeChange = () => {
    setIsNative(!isNative);
  };

  const handleColorChange = ({ target }) => {
    setColor(target.value);
  };

  const handleImageFURLChange = ({ target }) => {
    setImageFruitURL(target.value);
  };

  const handleImageLURLChange = ({ target }) => {
    setImageLeafURL(target.value);
  };

  const handleImageFSourceChange = ({ target }) => {
    setImageFruitSource(target.value);
  };

  const handleImageLSourceChange = ({ target }) => {
    setImageLeafSource(target.value);
  };

  const handleWikiLinkChange = ({ target }) => {
    setWikiLink(target.value);
  };

  const handleKeyPress = (event) => {
    if (event.key === "Enter" && !isButtonDisabled) {
      event.preventDefault();
      postSubmission();
    }
  };

  const postSubmission = () => {
    fetch("/api/submissions", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        commonName: commonName,
        scientificName: scientificName,
        description: description,
        isInvasive: isInvasive,
        isNative: isNative,
        color: color,
        imageFruitURL: imageFruitURL,
        imageLeafURL: imageLeafURL,
        imageFruitSource: imageFruitURL,
        imageLeafSource: imageLeafSource,
        wikiLink: wikiLink,
      }),
    }).then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      console.log("Plant saved successfully!");
    });

    setCommonName("");
    setScientificName("");
    setDescription("");
    setIsInvasive("");
    setIsNative("");
    setColor("");
    setImageFruitURL("");
    setImageLeafURL("");
    setImageFruitSource("");
    setImageLeafSource("");
    setWikiLink("");
  };

  return (
    <div className="user-submission-container">
      <div>
        <form className="user-submission-form">
          <label htmlFor="commonName">Common Name:</label>
          <input
            type="text"
            name="commonName"
            value={commonName}
            onChange={handleCommonNameChange}
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="scientificName">Scientific Name:</label>
          <input
            type="text"
            name="scientificName"
            value={scientificName}
            onChange={handleScientificNameChange}
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="description">Description:</label>
          <input
            type="text"
            name="description"
            value={description}
            onChange={handleDescriptionChange}
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="color">Color:</label>
          <input
            type="text"
            name="color"
            value={color}
            onChange={handleColorChange}
            onKeyDown={handleKeyPress}
          ></input>

          <p>Is Invasive: {isInvasive ? "True" : "False"}</p>
          <button onClick={handleIsInvasiveChange}>Toggle</button>

          <p>Is Native: {isNative ? "True" : "False"}</p>
          <button onClick={handleIsNativeChange}>Toggle</button>

          <label htmlFor="wikiLink">Wiki Link:</label>
          <input
            type="text"
            name="wikiLink"
            value={wikiLink}
            onChange={handleWikiLinkChange}
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="imageFruitURL">Fruit URL:</label>
          <input
            type="text"
            name="FruitURL"
            value={imageFruitURL}
            onChange={handleImageFURLChange}
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="imageLeafURL">Leaf URL:</label>
          <input
            type="text"
            name="imageLeafURL"
            value={imageLeafURL}
            onChange={handleImageLURLChange}
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="imageFruitSource">Fruit Image Source:</label>
          <input
            type="text"
            name="imageFruitSource"
            value={imageFruitSource}
            onChange={handleImageFSourceChange}
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="imageLeafSource">Leaf Image Source:</label>
          <input
            type="text"
            name="imageLeafSource"
            value={imageLeafSource}
            onChange={handleImageLSourceChange}
            onKeyDown={handleKeyPress}
          ></input>
        </form>

        <button onClick={postSubmission}>Create Plant</button>
      </div>
    </div>
  );
}
