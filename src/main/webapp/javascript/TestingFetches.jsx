import React, { useState, useEffect } from "react";

export default function TestingFetches() {
  const [IDToFetch, setIDToFetch] = useState(0);

  const [newPlantName, setNewPlantName] = useState("");
  const [newPlantIsInvasive, setNewPlantIsInvasive] = useState();
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

  return (
    <div>
     <p>ID of plant you want to get:</p>
     <input type="text" placeholder="ID" value={IDToFetch} onChange={handleIDToFetchChange}/>
     <button onClick={getPlant}>Submit</button>

     <br />

     <input type="text" placeholder="name" value={newPlantName} onChange={handleNewPlantNameChange}/>
     <p>Is It Invasive?</p>
     <select onChange={handleNewPlantIsInvasiveChange}>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
     </select>
     <input type="text" placeholder="color" value={newPlantColor} onChange={handleNewPlantColorChange}/>
     <button onClick={newPlant}>Create New Plant</button>
    </div>
  );
}