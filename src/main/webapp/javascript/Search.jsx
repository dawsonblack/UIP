import React, { useState, useEffect } from "react";

export default function TestingFetches() {
  function getPlant() {
    const ID = IDToFetch;

    fetch(`/api/plants/${ID}`, { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((responseBody) => console.log(responseBody));
    return () => {};
  }

  function newPlant() {
    const info = {
      name: newPlantName,
      isInvasive: newPlantIsInvasive,
      isNative: newPlantIsNative,
      color: newPlantColor,
    };

    fetch("/api/plants", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(info),
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        console.log("Plant saved successfully!");
      })
      .catch((error) => {
        console.error("Error saving dog:", error);
      });
  }

  const deletePlant = () => {
    const ID = IDToFetch;

    fetch(`/api/plants/${ID}`, {
      method: "DELETE",
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        console.log("Plant deleted successfully!");
      })
      .catch((error) => {
        console.error("Error deleting plant:", error);
      });
  };

  function SearchData() {
    const [searchResults, setSearchResults] = useState([]);
    const [searchWasRun, setSearchWasRun] = useState(false);

    const [searchKeywords, setSearchKeywords] = useState("");
    const [searchBy, setSearchBy] = useState("commonName");

    function getPlants() {
      fetch(`/api/plants`, { method: "GET", cache: "default" })
        .then((response) => response.json())
        .then((responseBody) => {
          if (searchKeywords == "") {
            setSearchResults(responseBody["_embedded"]["plantList"]);
          } else {
            const filteredResults = responseBody["_embedded"][
              "plantList"
            ].filter((item) => {
              console.log(
                "The " +
                  searchBy +
                  " is " +
                  item[searchBy] +
                  ", and its type is " +
                  typeof item[searchBy]
              );
              return (
                item[searchBy].toString() == searchKeywords.toLowerCase() ||
                (typeof item[searchBy] !== "boolean" &&
                  item[searchBy]
                    .toLowerCase()
                    .includes(searchKeywords.toLowerCase())) ||
                (searchBy == "commonName" &&
                  item["scientificName"]
                    .toLowerCase()
                    .includes(searchKeywords.toLowerCase()))
              );
            });
            console.log(
              "Here are the filtered search results: " + filteredResults
            );
            setSearchResults(filteredResults);
            setSearchWasRun(true);
          }
        });
    }

    console.log("search results: " + searchResults);
    return (
      <div id="search-container">
        <div>
          <input
            type="text"
            id="search-bar"
            placeholder="Search your plants"
            value={searchKeywords}
            onChange={(e) => setSearchKeywords(e.target.value)}
          />
          <button id="search-button" onClick={getPlants}>
            Search!
          </button>
        </div>
        <label htmlFor="search-by">Search By:</label>
        <div className="search-dropdown">
          <select id="search-by" onChange={(e) => setSearchBy(e.target.value)}>
            <option value="commonName">Name</option>
            <option value="isInvasive">Is Invasive</option>
            <option value="isNative">Is Native</option>
            <option value="color">Color</option>
            <option value="description">Description</option>
          </select>
          <div className="dropdown-arrow">&#9662;</div>
        </div>

        <div id="search-results">
          {searchResults.length > 0
            ? searchResults.map((oneResult) => (
                <DisplaySearchResult
                  key={oneResult.plantID}
                  plant={oneResult}
                />
              ))
            : searchWasRun && (
                <div id="no-results-message">
                  <p id="no-results-message">
                    Oops! We couldn't find any matching plants.
                  </p>
                  <img src="images/dead-plant.PNG" />
                </div>
              )}
        </div>
      </div>
    );
  }

  function DisplaySearchResult({ plant }) {
    console.log(plant);
    return (
      <div id={`plant-number${plant.plantID}`} className="plant-container">
        <ul>
          <li>Common Name: {plant.commonName}</li>
          <li>Scientific Name: {plant.scientificName}</li>
          <li className={plant.isInvasive ? "invasive" : "non-invasive"}>
            {plant.isInvasive ? "Invasive" : "Non-invasive"}
          </li>
          <li>{plant.isnative ? "Native" : "Foreign"}</li>
          <li>Color: {plant.color}</li>
        </ul>
        <img src={plant.imageFruitURL} />
        <img src={plant.imageLeafURL} />
        <p>
          {plant.description} <a href={plant.wikiLink}>Learn More</a>
        </p>
      </div>
    );
  }

  return (
    <div>
      <SearchData />
    </div>
  );
}
