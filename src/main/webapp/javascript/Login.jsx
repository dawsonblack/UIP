import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import sha256 from "./Main";

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

  function checkLoginInfo() {
    const [validLogin, setValidLogin] = useState(false);

    fetch(`/api/users`, { method: "GET", cache: "default" })
    .then((response) => response.json())
    .then((responseBody) => {
        for (let i = 0; i < responseBody["_embedded"]["userList"].length; i++) {
            if (username === responseBody["_embedded"]["userList"][i].username) {
                if (sha256(password) === responseBody["_embedded"]["userList"][i].password) {
                    setValidLogin(true);
                }
                break;
            }
        }
    });

    if (validLogin) {
        console.log("Your login was successful!");
    } else {
        console.log("Your username or password is incorrect!");
    }
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
        <button className="register-login-button" onClick={checkLoginInfo} disabled={isButtonDisabled}>
          Sign In
        </button>
      </div>
      <p>Don't have an account? <Link to="/CopyOfCreateUser">Click here</Link> to Register</p>
    </div>
  );
}