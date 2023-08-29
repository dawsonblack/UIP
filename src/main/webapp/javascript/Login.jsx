import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { useLocation } from 'react-router-dom';

export default function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  useEffect(() => {
    fetch('/api/auth-status')
      .then(response => response.json())
      .then(data => {
        if (data.authenticated) {
          window.location.href = '/User';
        }
      })
    .catch(error => {
      console.error('Error checking authentication status:', error);
    });
  }, []);

  const handleUsernameChange = ({ target }) => {
    setUsername(target.value);
  };

  const handlePasswordChange = ({ target }) => {
    setPassword(target.value);
  };

  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);
  const errorMessage = queryParams.get('error');
  const logoutMessage = queryParams.get('logout');

  const saveInfo = () => {
    localStorage.setItem("loggedInUsername", username);
  }
  
  return (
    <div className="register-login-container">
      <form onSubmit={saveInfo} action="/Login" method="post">
        <div className="register-login-form">
          {logoutMessage && <p className="form-success-message">You have been successfully logged out</p>}
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
          {errorMessage && <p className="form-error-message">Your username or password was incorrect</p>}
        </div>
        <div className="button-container">
          <button type="submit">Sign In</button>
        </div>
      </form>
      <p className="link">Don't have an account? <Link to="/Register">Click here</Link> to Register</p>
    </div>
  );
}