import React, { useState, useEffect } from "react";

export default function User() {
  const [username, setUsername] = useState("");
  const [plantId, setPlantId] = useState("");
  const [savedPlants, setSavedPlants] = useState([]);
  const [user, setUser] = useState();

  function getUser() {
    fetch('/api/users', { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((responseBody) => {
        const foundUser = responseBody["_embedded"]["dBUserList"].find(
          (user) => user.username === localStorage.getItem("loggedInUsername")
        );
        
        if (foundUser) {
        console.log(foundUser);
        setUser(foundUser);
        }
      });
  }

  useEffect(() => {
    getUser();
  }, [])

  useEffect(() => {
    user && fetch(`/api/users/${user.userID}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ ...user, savedPlants: savedPlants }),
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        console.log("Plants updated successfully!");
      })
      .catch((error) => {
        console.error("Error updating plants:", error);
      });
  }, [savedPlants]);

  const handleSavePlant = () => {
    if (plantId) {
      setSavedPlants([...savedPlants, plantId]);
      setPlantId("");
    }
  };

  function logOut() {
    window.location.href = '/logout';
  }

  return (
    <div id="search-container">
      <div>
        <h1 id="title">Welcome{user && user.firstName && `, ${user.firstName}`}!</h1>
      </div>
      <div>
        <input
          type="text"
          placeholder="Enter your username"
          value={username}
          onChange={(e) => setUsername(e.target.value)}
        />
        <br />
        <input
          type="number"
          placeholder="Enter plant ID"
          value={plantId}
          onChange={(e) => setPlantId(e.target.value)}
        />
      </div>
      <div>
        <button onClick={handleSavePlant}>Save Plant</button>
        <button onClick={logOut}>Log Out</button>
      </div>
      <div>
        <h2>{user && user.savedPlants && `[${user.savedPlants}]`}</h2>
        <h2>Saved Plants</h2>
      </div>
      <div>
        <ul>
          {savedPlants.map((plant) => (
            <li key={plant.id}>
              Plant ID: {plant.id}, Saved by: {plant.username}
            </li>
          ))}
        </ul>
      </div>
    </div>
  );

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
          {plant.description} <a href={plant.wikiLink}>Learn More</a>
        </p>
      </div>
    );
  }
}
