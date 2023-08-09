import React, { useState, useEffect } from "react";

export default function TestingFetches() {
  const [IDToFetch, setIDToFetch] = useState(0);

  const [newPlantName, setNewPlantName] = useState("");
  const [newPlantIsInvasive, setNewPlantIsInvasive] = useState();
  const [newPlantIsNative, setNewPlantIsNative] = useState();
  const [newPlantColor, setNewPlantColor] = useState("");

  const handleIDToFetchChange = ({ target }) => {
    setIDToFetch(target.value);
  }
  
  const handleNewPlantNameChange = ({ target }) => {
    setNewPlantName(target.value);
  }

  const handleNewPlantIsInvasiveChange = ({ target }) => {
    setNewPlantIsInvasive(target.value);
  }

  const handleNewPlantIsNativeChange = ({ target }) => {
    setNewPlantIsNative(target.value);
  }

  const handleNewPlantColorChange = ({ target }) => {
    setNewPlantColor(target.value);
  }


  function getPlant() {
    const ID = IDToFetch;
    
    fetch(`/api/plants/${ID}`, { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((responseBody) => console.log(responseBody))
    return () => {};
  }

  function newPlant() {
    const info = {
        name: newPlantName,
        isInvasive: newPlantIsInvasive,
        isNative: newPlantIsNative,
        color: newPlantColor,
    }

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
    
    function getPlants() {
      fetch(`/api/plants`, { method: "GET", cache: "default" })
        .then((response) => response.json())
        .then((responseBody) => {
          const filteredResults = responseBody["_embedded"]["plantList"].filter(item => {
            return item.name.toLowerCase().includes(searchKeywords.toLowerCase());
          });
          console.log("Here are the filtered search results: " + filteredResults);
          setSearchResults(filteredResults);
          setSearchWasRun(true);
        });
    }
    
    console.log("search results: " + searchResults);
    return (
      <div>
        <input type="text" placeholder='Search your plants' value={searchKeywords} onChange={(e) => setSearchKeywords(e.target.value)}/>
        <button onClick={getPlants}>Search!</button>
        <div id="search-results">
          {searchResults &&
            searchResults.map((oneResult) => (
                <DisplaySearchResult key={oneResult.plantID} plant={oneResult} />
            ))}
        </div>
      </div>
    );
  }

    function DisplaySearchResult({ plant }) {
        return (
            <ul id={`plant-number-${plant.plantID}`}>
                <li>Name: {plant.name}</li>
                <li>Is Invasive: {plant.is_Invasive}</li>
                <li>Is Native: {plant.is_Native}</li>
                <li>Color: {plant.color}</li>
                <li>ID: {plant.plantID}</li>
            </ul>
        );
    }

  return (
    <div>
      <p>ID of plant you want to get:</p>
      <input type="text" placeholder="ID" value={IDToFetch} onChange={handleIDToFetchChange}/>
      <button onClick={getPlant}>Get Plant</button>
      <button onClick={deletePlant}>Delete Plant</button>

      <br />

      <input type="text" placeholder="name" value={newPlantName} onChange={handleNewPlantNameChange}/>
      <select onChange={handleNewPlantIsInvasiveChange}>
        <option disabled selected value="">Is It Invasive?</option>
        <option value="true">Yes</option>
        <option value="false">No</option>
      </select>
      <select onChange={handleNewPlantIsNativeChange}>
        <option disabled selected value="">Is It Native?</option>
        <option value="true">Yes</option>
        <option value="false">No</option>
      </select>
      <input type="text" placeholder="color" value={newPlantColor} onChange={handleNewPlantColorChange}/>
      <button onClick={newPlant}>Create New Plant</button>

      <br />
      <br />
      <br />
      <br />

      <SearchData />
    </div>
  );
}