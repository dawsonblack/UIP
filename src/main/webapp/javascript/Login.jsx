import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";

export default function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [isButtonDisabled, setIsButtonDisabled] = useState(true);

  const handleUsernameChange = ({ target }) => {
    setUsername(target.value);
    checkIfFormIsFilled();
  };

  const handlePasswordChange = ({ target }) => {
    setPassword(target.value);
    checkIfFormIsFilled();
  };

  const checkIfFormIsFilled = () => {
    setIsButtonDisabled(
        username == "" ||
        password == ""
        );
  }
  return (
    <div className="register-login-container">
      <div>
        <form className="register-login-form">
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
        <button className="register-login-button" disabled={isButtonDisabled}>
          Sign In
        </button>
      </div>
      <p>Don't have an account? <Link to="/CopyOfCreateUser">Click here</Link> to Register</p>
    </div>
  );
}