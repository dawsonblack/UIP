import React, { useState, useEffect } from "react";

export default function TestingFetches() {
  const [selectedID, setSelectedID] = useState(0);
  const [showAdoptPrompt, setShowAdoptPrompt] = useState(false);
  const [showPetMenu, setShowPetMenu] = useState(false);

  const [selectedPetName, setSelectedPetName] = useState("");

  let [selectedPet, setSelectedPet] = useState([]);


  function getPlant() {
    const ID = document.getElementById("id-input").value;
    
    fetch(`/api/plants/${ID}`, { method: "GET", cache: "default" })
      .then((response) => response.json())
      .then((responseBody) => console.log(responseBody))
    return () => {};
  }

  function newPlant() {
    const info = {
        name: "Test Plant",
        isInvasive: false,
        color: "All of them lawl",
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
     <input type="text" onChange={} id="id-input"/>
     <button onClick={getPlant}>Submit</button>
     <button onClick={newPlant}>Create New Plant</button>
    </div>
  );
}