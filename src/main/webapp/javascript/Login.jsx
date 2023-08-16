import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { sha256 } from "./Main";

export default function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [isButtonDisabled, setIsButtonDisabled] = useState(true);
  const [validLogin, setValidLogin] = useState(false);

  useEffect(() => {
    if (validLogin) {
      console.log("Your login was successful!");
    } else {
      console.log("Your username or password is incorrect!");
    }
  }, [validLogin]);

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

  async function checkLoginInfo() {
    const hashedPassword = await sha256(password);

    fetch(`/api/users`, { method: "GET", cache: "default" })
    .then((response) => response.json())
    .then((responseBody) => {
        for (let i = 0; i < responseBody["_embedded"]["userList"].length; i++) {
            if (username == responseBody["_embedded"]["userList"][i].userName) {
                console.log("inputted username " + username + " matched username " + responseBody["_embedded"]["userList"][i].userName);
                if (hashedPassword == responseBody["_embedded"]["userList"][i].passWord) {
                    console.log(password + " hashed is " + hashedPassword + ", which is a match with the stored password");
                    setValidLogin(true);
                }
                else {
                    console.log("user " + username + "'s password did not match the records. Password was " + password +
                        ", which is " + hashedPassword + " hashed. Should have been " + responseBody["_embedded"]["userList"][i].passWord);
                }
                break;
            }
            else {
                console.log("inputted username " + username + " did not match username " + responseBody["_embedded"]["userList"][i].userName);
            }
        }
    });
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