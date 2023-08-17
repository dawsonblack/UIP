import React, { useState, useEffect } from "react";

export default function CreateUser() {
  const [email, setEmail] = useState("");
  const [firstName, setFirstName] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [plantToSave, setPlantToSave] = useState("");
  const [user_id, setUser_id] = useState("");

  const handleEmailChange = (event) => {
    const newEmail = event.target.value;
    setEmail(newEmail);
    setIsValidEmail(null); // Reset the validation status when input changes
  };

  const handleFirstNameChange = ({ target }) => {
    setFirstName(target.value);
  };

  const handleUsernameChange = ({ target }) => {
    setUsername(target.value);
  };

  const handlePasswordChange = ({ target }) => {
    setPassword(target.value);
  };

  const handlePlantToSaveChange = ({ target }) => {
    setPlantToSave(target.value);
  };

  const handleUser_idChange = ({ target }) => {
    setUser_id(target.value);
  };

  const postUser = () => {
    fetch("/api/users", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        email: email,
        firstName: firstName,
        userName: username,
        passWord: password,
      }),
    }).then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      console.log("User saved successfully!");
    });
  };

  const updateSavedPlants = () => {
    fetch(`/api/users/${user_id}`, {
      method: "PUT",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(plantToSave),
    }).then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      console.log("Plant saved successfully!");
    });
  };

  return (
    <div className="create-user-container">
      <div>
        <form className="create-user-form">
          <label htmlFor="email">Email:</label>
          <input
            type="text"
            name="email"
            value={email}
            onChange={handleEmailChange}
          ></input>

          <label htmlFor="firstName">First Name:</label>
          <input
            type="text"
            name="firstName"
            value={firstName}
            onChange={handleFirstNameChange}
          ></input>

          <label htmlFor="username">Username:</label>
          <input
            type="text"
            name="username"
            value={username}
            onChange={handleUsernameChange}
          ></input>

          <label htmlFor="password">Password:</label>
          <input
            type="password"
            name="password"
            value={password}
            onChange={handlePasswordChange}
          ></input>
        </form>
        <form>
          <label htmlFor="user_id">Account ID: </label>
          <input
            type="text"
            name="user_id"
            value={user_id}
            onChange={handleUser_idChange}
          ></input>

          <label htmlFor="plantToSave">Plant ID: </label>
          <input
            type="text"
            name="plantToSave"
            value={plantToSave}
            onChange={handlePlantToSaveChange}
          ></input>
        </form>
      </div>
      <div>
        <button onClick={postUser}>Create Account</button>
        <button onClick={updateSavedPlants}>Update Saved Plants</button>
      </div>
    </div>
  );
}
