import React, { useState, useEffect } from "react";

export default function CreateUser() {
  const [email, setEmail] = useState("");
  const [firstName, setFirstName] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  const handleEmailChange = ({ target }) => {
    setEmail(target.value);
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
      </div>
      <div>
        <button className="create-account-button" onClick={postUser}>
          Create Account
        </button>
      </div>
    </div>
  );
}
