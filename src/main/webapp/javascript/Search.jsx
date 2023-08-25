import React, { useState, useEffect } from "react";

export default function TestingFetches() {
  function getPlant() {
    const ID = IDToFetch;

    fetch(`/api/plants/${ID}`, { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((responseBody) => console.log(responseBody));
    return () => {};
  }

  const handleKeyPress = (event) => {
    if (event.key === "Enter") {
      event.preventDefault();
      getPlants();
    }
  };

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

    const nextPageButton = () => {
      setCurrentPage(nextPage);
    };

    const previousPageButton = () => {
      setCurrentPage(priorPage);
    };
  }

  function getPlants() {
    fetch(`${currentPage}`, { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((responseBody) => {
        setPriorPage(responseBody["_links"]?.prevPage?.href);
        setNextPage(responseBody["_links"]?.nextPage?.href);

        if (searchKeywords == "") {
          setSearchResults(responseBody["_embedded"]["plantList"]);
        } else {
          const filteredResults = responseBody["_embedded"]["plantList"].filter((item) => {
            console.log("The " + searchBy + " is " + item[searchBy] + ", and its type is " + typeof item[searchBy]);
            return (
              item[searchBy].toString() == searchKeywords.toLowerCase() ||
              (typeof item[searchBy] !== "boolean" && item[searchBy].toLowerCase().includes(searchKeywords.toLowerCase())) ||
              (searchBy == "commonName" && item["scientificName"].toLowerCase().includes(searchKeywords.toLowerCase()))
            );
          });
          console.log("Here are the filtered search results: " + filteredResults);
          setSearchResults(filteredResults);
          setSearchWasRun(true);
        }
      });
  

  useEffect(() => getPlants(), [searchKeywords, currentPage]);

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
          onKeyDown={handleKeyPress}
        />
      </div>
      <div id="searchParameters">
        <div id="searchCheckbox">
          <input
            type="checkbox"
            id="commonName"
            value={searchKeywords}
            onChange={(e) => {
              setSearchBy("commonName");
            }}
          />
          <label for="commonName">Common Name</label>
        </div>
        <div id="searchCheckbox">
          <input
            type="checkbox"
            id="color"
            value={searchKeywords}
            onChange={(e) => {
              setSearchBy("color");
            }}
          />
          <label for="color">Plant Color</label>
        </div>
        <div id="searchCheckbox">
          <input
            type="checkbox"
            id="native"
            value={searchKeywords}
            onChange={(e) => {
              setSearchKeywords("true");
              setSearchBy("isNative");
            }}
          />
          <label for="native">Native</label>
        </div>
        <div id="searchCheckbox">
          <input
            type="checkbox"
            id="invasive"
            value={searchKeywords}
            onChange={(e) => {
              setSearchKeywords("false");
              setSearchBy("isNative");
            }}
          />
          <label for="native">Invasive</label>
        </div>
      </div>

      <div id="search-results">
        {searchResults.length > 0
          ? searchResults.map((oneResult) => <DisplaySearchResult key={oneResult.plantID} plant={oneResult} />)
          : searchWasRun && (
              <div id="no-results-message">
                <p id="no-results-message">Oops! We couldn't find any matching plants.</p>
                <img src="images/dead-plant.PNG" />
              </div>
            )}
      </div>
      <div>
        {" "}
        {priorPage && (
          <button id="priorPageButton" onClick={priorPageButton}>
            {priorPage}
          </button>
        )}
        {nextPage && (
          <button id="nextPageButton" onClick={nextPageButton}>
            {nextPage}
          </button>
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
          <li>{plant.isNative ? "Native" : "Foreign"}</li>
          <li>Color: {plant.color}</li>
        </ul>
        <img src={plant.imageFruitURL} />
        <img src={plant.imageLeafURL} />
        <p>
          {plant.description} <a href={plant.wikiLink} target="_blank"
              rel="noopener noreferrer">Learn More</a>
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
