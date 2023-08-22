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
  const [isValidUrl, setIsValidUrl] = useState(true);

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

  const handleImageFURLChange = (event) => {
    const inputValue = event.target.value;
    setImageFruitURL(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
  };

  const handleImageLURLChange = (event) => {
    const inputValue = event.target.value;
    setImageFruitURL(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
  };

  const handleImageFSourceChange = (event) => {
    const inputValue = event.target.value;
    setImageFruitURL(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
  };

  const handleImageLSourceChange = (event) => {
    const inputValue = event.target.value;
    setImageFruitURL(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
  };

  const handleWikiLinkChange = (event) => {
    const inputValue = event.target.value;
    setWikiLink(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
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
    setIsInvasive(false);
    setIsNative(false);
    setColor("");
    setImageFruitURL("");
    setImageLeafURL("");
    setImageFruitSource("");
    setImageLeafSource("");
    setWikiLink("");
  };

  const getSubmissions = () => {
    fetch("/api/submissions", { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((responseBody) => {
        console.log(commonName,
          scientificName,
          description,
          isInvasive,
          isNative,
          color,
          imageFruitURL,
          imageLeafURL,
          imageFruitSource,
          imageLeafSource,
          wikiLink)
      });
    setCommonName("");
    setScientificName("");
    setDescription("");
    setIsInvasive(false);
    setIsNative(false);
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

          <label htmlFor="imageFruitURL">Fruit URL:</label>
          <input
            type="text"
            name="FruitURL"
            value={imageFruitURL}
            onChange={handleImageFURLChange}
            onKeyDown={handleKeyPress}
            style={{ borderColor: isValidUrl ? "green" : "red" }}
          ></input>

          <label htmlFor="imageLeafURL">Leaf URL:</label>
          <input
            type="text"
            name="imageLeafURL"
            value={imageLeafURL}
            onChange={handleImageLURLChange}
            onKeyDown={handleKeyPress}
            style={{ borderColor: isValidUrl ? "green" : "red" }}
          ></input>

          <label htmlFor="imageFruitSource">Fruit Image Source:</label>
          <input
            type="text"
            name="imageFruitSource"
            value={imageFruitSource}
            onChange={handleImageFSourceChange}
            onKeyDown={handleKeyPress}
            style={{ borderColor: isValidUrl ? "green" : "red" }}
          ></input>

          <label htmlFor="imageLeafSource">Leaf Image Source:</label>
          <input
            type="text"
            name="imageLeafSource"
            value={imageLeafSource}
            onChange={handleImageLSourceChange}
            onKeyDown={handleKeyPress}
            style={{ borderColor: isValidUrl ? "green" : "red" }}
          ></input>

          <label htmlFor="wikiLink">Wiki Link:</label>
          <input
            type="text"
            name="wikiLink"
            value={wikiLink}
            onChange={handleWikiLinkChange}
            onKeyDown={handleKeyPress}
            style={{ borderColor: isValidUrl ? "green" : "red" }}
          ></input>
        </form>

        <button onClick={postSubmission}>Create Plant</button>
      </div>

      <button onClick={getSubmissions}>Plants Created</button>
    </div>
  );
}
