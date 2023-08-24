import React, { useState, useEffect } from "react";
import { useAuth } from "./AuthContext";

export default function User() {
  const [username, setUsername] = useState("");
  const [plantId, setPlantId] = useState("");
  const [savedPlants, setSavedPlants] = useState([]);
  const { user, setUser } = useAuth();

  const updateUser = () => {
    fetch(`/api/users/${user.ID}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(user),
    })
      .then((response) => {
        if (!response.ok) {
          throw new Error("Network response was not ok");
        }
        console.log("Pet updated successfully!");
      })
      .catch((error) => {
        console.error("Error updating pet:", error);
      });
  };

  const handleSavePlant = () => {
    if (username && plantId) {
      const newPlant = { id: plantId, username };
      setSavedPlants([...savedPlants, newPlant]);
      setPlantId("");
    }
  };

  function logOut() {
    window.location.href = '/logout';
  }

  return (
    <div id="search-container">
      <div>
        <h1 id="title">Welcome, {user.firstName}!</h1>
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
          type="text"
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
}
