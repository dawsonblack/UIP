import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { sha256 } from "./Main";

export default function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [isButtonDisabled, setIsButtonDisabled] = useState(true);
  const [invalidLogin, setInvalidLogin] = useState();

  useEffect(() => {
    setIsButtonDisabled(username === "" || password === "");
  }, [username, password]);

  useEffect(() => {
    if (invalidLogin == false) {
      console.log("Your login was successful!");
    } else {
      console.log("Your username or password is incorrect!");
    }
  }, [invalidLogin]);

  const handleKeyPress = (event) => {
    if (event.key === "Enter" && !isButtonDisabled) {
      event.preventDefault();
      checkLoginInfo();
    }
  };

  const handleUsernameChange = ({ target }) => {
    setUsername(target.value);
  };

  const handlePasswordChange = ({ target }) => {
    setPassword(target.value);
  };

  async function checkLoginInfo() {
    const hashedPassword = await sha256(username + password);

    fetch(`/api/users`, { method: "GET", cache: "default" })
    .then((response) => response.json())
    .then((responseBody) => {
        for (let i = 0; i < responseBody["_embedded"]["userList"].length; i++) {
            if (username == responseBody["_embedded"]["userList"][i].userName) {
                if (hashedPassword == responseBody["_embedded"]["userList"][i].passWord) {
                    console.log(password + " hashed is " + hashedPassword + ", which is a match with the stored password");
                    setInvalidLogin(false);
                }
                break;
            }
        }
        if (invalidLogin == null) {
            setInvalidLogin(true);
        }
    });

    setUsername("");
    setPassword("");
  }

  if (invalidLogin == false) {
    return <Redirect to="/User" />; // Redirect here
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
            onKeyDown={handleKeyPress}
          ></input>

          <label htmlFor="password">Password:</label>
          <input
            type="password"
            name="password"
            value={password}
            onChange={handlePasswordChange}
            onKeyDown={handleKeyPress}
          ></input>
          {invalidLogin && <p className="form-info-error-message">Your username or password was incorrect</p>}
        </form>
      </div>
      <div>
        <button className="register-login-button" onClick={checkLoginInfo} disabled={isButtonDisabled}>
          Sign In
        </button>
      </div>
      <p>Don't have an account? <Link to="/Register">Click here</Link> to Register</p>
    </div>
  );
}