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
  const [email, setEmail] = useState("");
  const [isInvalidEmail, setIsInvalidEmail] = useState(true);

  const handleCommonNameChange = ({ target }) => {
    setCommonName(target.value);
  };

  const handleScientificNameChange = ({ target }) => {
    setScientificName(target.value);
  };

  const handleDescriptionChange = ({ target }) => {
    setDescription(target.value);
  };

  const handleColorChange = ({ target }) => {
    setColor(target.value);
  };

  const handleEmailChange = ({ target }) => {
    setEmail(target.value);

    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    setIsInvalidEmail(!emailRegex.test(target.value));
  };

  const handleImageFURLChange = (event) => {
    const inputValue = event.target.value;
    setImageFruitURL(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
  };

  const handleImageLURLChange = (event) => {
    const inputValue = event.target.value;
    setImageLeafURL(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
  };

  const handleImageFSourceChange = (event) => {
    const inputValue = event.target.value;
    setImageFruitSource(inputValue);

    const urlPattern = /^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$/i;
    setIsValidUrl(urlPattern.test(inputValue));
  };

  const handleImageLSourceChange = (event) => {
    const inputValue = event.target.value;
    setImageLeafSource(inputValue);

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
        email: email,
      }),
    }).then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      console.log("Plant saved successfully!");
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
      setEmail("");
    });
  };

  const handleDropdownSelect = (id, value) => {
    if (id === "isInvasive") {
      setIsInvasive(value);
    } else if (id === "isNative") {
      setIsNative(value);
    }
  };

  const TrueFalseDropdown = ({ id, label, value, onSelect }) => {
    const handleSelectChange = (event) => {
      onSelect(id, event.target.value);
    };

    return (
      <div>
        <label htmlFor={id}>{label}:</label>
        <select id={id} onChange={handleSelectChange} value={value}>
          <option value="true">True</option>
          <option value="false">False</option>
        </select>
      </div>
    );
  };

  return (
    <div>
      <div className="user-submission-container">
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

          <label htmlFor="email">Email:</label>
          <input
            type="text"
            name="email"
            value={email}
            onChange={handleEmailChange}
            onKeyDown={handleKeyPress}
          ></input>
          {isInvalidEmail && email !== "" && (
            <p className="form-info-error-message">Invalid email</p>
          )}

          <TrueFalseDropdown
            id="isInvasive"
            label="isInvasive"
            value={isInvasive}
            onSelect={handleDropdownSelect}
          />
          <TrueFalseDropdown
            id="isNative"
            label="isNative"
            value={isNative}
            onSelect={handleDropdownSelect}
          />
          <div>
            <label htmlFor="imageFruitURL">Fruit URL:</label>
            <input
              type="text"
              name="FruitURL"
              value={imageFruitURL}
              onChange={handleImageFURLChange}
              onKeyDown={handleKeyPress}
              style={{ borderColor: isValidUrl ? "green" : "red" }}
            ></input>
          </div>

          <div>
            <label htmlFor="imageLeafURL">Leaf URL:</label>
            <input
              type="text"
              name="imageLeafURL"
              value={imageLeafURL}
              onChange={handleImageLURLChange}
              onKeyDown={handleKeyPress}
              style={{ borderColor: isValidUrl ? "green" : "red" }}
            ></input>
          </div>

          <div>
            <label htmlFor="imageFruitSource">Fruit Image Source:</label>
            <input
              type="text"
              name="imageFruitSource"
              value={imageFruitSource}
              onChange={handleImageFSourceChange}
              onKeyDown={handleKeyPress}
              style={{ borderColor: isValidUrl ? "green" : "red" }}
            ></input>
          </div>

          <div>
            <label htmlFor="imageLeafSource">Leaf Image Source:</label>
            <input
              type="text"
              name="imageLeafSource"
              value={imageLeafSource}
              onChange={handleImageLSourceChange}
              onKeyDown={handleKeyPress}
              style={{ borderColor: isValidUrl ? "green" : "red" }}
            ></input>
          </div>

          <div>
            <label htmlFor="wikiLink">Wiki Link:</label>
            <input
              type="text"
              name="wikiLink"
              value={wikiLink}
              onChange={handleWikiLinkChange}
              onKeyDown={handleKeyPress}
              style={{ borderColor: isValidUrl ? "green" : "red" }}
            ></input>
          </div>
        </form>
        {!isValidUrl && <p>Please enter a valid URL or link.</p>}
        <button onClick={postSubmission}>Create Plant</button>
      </div>
      <SubmissionLister />
    </div>
  );
}

function SubmissionLister() {
  const [plants, setPlants] = useState([]);

  const getPlants = () => {
    fetch(`/api/submissions`, { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((response) => setPlants(response["_embedded"]["submissionList"]));
    console.log(plants);
    return () => {};
  }

  return (
    <div>
    <button onClick={getPlants}>See Plants Created</button>
      <ul className="item-list">
        {plants.map((oneSubmission) => (
          <Submission key={oneSubmission.plantID} submission={oneSubmission} />
        ))}
      </ul>
    </div>
  );
}

function Submission({ submission }) {
  return (
    <>
      <div
        id={`plant-number${submission.plantID}`}
        className="submission-container"
      >
        <ul>
          <li>Common Name: {submission.commonName}</li>
          <li>Scientific Name: {submission.scientificName}</li>
          <li className={submission.isInvasive ? "invasive" : "non-invasive"}>
            {submission.isInvasive ? "Invasive" : "Non-invasive"}
          </li>
          <li>{submission.isNative ? "Native" : "Foreign"}</li>
          <li>Color: {submission.color}</li>
          <li>Email: {submission.email}</li>
        </ul>
        <img src={submission.imageFruitURL} />
        <img src={submission.imageLeafURL} />
        <p>
          {submission.description} <a href={submission.wikiLink}>Learn More</a>
        </p>
      </div>
    </>
  );
}
