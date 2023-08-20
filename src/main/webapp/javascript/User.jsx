import React, {useState, useEffect} from "react";

export default function User() {
  const [username, setUsername] = useState('');
  const [plantId, setPlantId] = useState('');
  const [savedPlants, setSavedPlants] = useState([]);
  const [name, setName] = useState(localStorage.getItem("loggedInName") || "")

  const handleSavePlant = () => {
    if (username && plantId) {
      const newPlant = { id: plantId, username };
      setSavedPlants([...savedPlants, newPlant]);
      setPlantId('');
    }
  };

  return (
    <div>
      <h1>Plant Saver</h1>
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
      <button onClick={handleSavePlant}>Save Plant</button>

      <h2>Saved Plants</h2>
      <h2>Welcome, {name}!</h2>
      <ul>
        {savedPlants.map((plant) => (
          <li key={plant.id}>
            Plant ID: {plant.id}, Saved by: {plant.username}
          </li>
        ))}
      </ul>
    </div>
  );
}
