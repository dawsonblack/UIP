import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import ReCAPTCHA from "react-google-recaptcha";
import { sha256 } from "./Main";

export default function Register() {
  const [email, setEmail] = useState("");
  const [firstName, setFirstName] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  const [isInvalidEmail, setIsInvalidEmail] = useState(true);
  const [isInvalidPassword, setIsInvalidPassword] = useState(true);
  const [passwordsDoNotMatch, setPasswordsDoNotMatch] = useState(true);
  const [recaptchaCompleted, setRecaptchaCompleted] = useState(false);
  const [isButtonDisabled, setIsButtonDisabled] = useState(true);

  /*const [plantToSave, setPlantToSave] = useState("");
  const [user_id, setUser_id] = useState("");*/

  useEffect(() => {
    setIsButtonDisabled(
      email == "" ||
      firstName == "" ||
      username == "" ||
      password == "" ||
      isInvalidEmail ||
      isInvalidPassword ||
      passwordsDoNotMatch ||
      !recaptchaCompleted
    );
  }, [email, firstName, username, password, confirmPassword, recaptchaCompleted]);

  const handleKeyPress = (event) => {
    if (event.key === "Enter" && !isButtonDisabled) {
      event.preventDefault();
      postUser();
    }
  };

  const handleEmailChange = ({ target }) => {
    setEmail(target.value);

    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    setIsInvalidEmail(!emailRegex.test(target.value));
  };

  const handleFirstNameChange = ({ target }) => {
    setFirstName(target.value);
  };

  const handleUsernameChange = ({ target }) => {
    setUsername(target.value);
  };

  const handlePasswordChange = ({ target }) => {
    setPassword(target.value);
    setIsInvalidPassword(target.value.length < 8);
    setPasswordsDoNotMatch(target.value !== confirmPassword);
  };

  const handleConfirmPasswordChange = ({ target }) => {
    setConfirmPassword(target.value);
    setPasswordsDoNotMatch(target.value !== password);
  };

  /*const handlePlantToSaveChange = ({ target }) => {
    setPlantToSave(target.value);
  };

  const handleUser_idChange = ({ target }) => {
    setUser_id(target.value);
  };*/

  const postUser = async () => {
    const hashedPassword = await sha256(username + password);
    
    fetch("/api/users", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        email: email,
        firstName: firstName,
        username: username,
        password: hashedPassword,
      }),
    }).then((response) => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      console.log("User saved successfully!");
    });

    setEmail("");
    setFirstName("");
    setUsername("");
    setPassword("");
    setConfirmPassword("");
  };

  /*const updateSavedPlants = () => {
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
  };*/

  const recaptchaOnChange = () => {
    setRecaptchaCompleted(true);
  }
  const recaptchaOnExpired = () => {
    setRecaptchaCompleted(false);
  }

  return (
    <div className="register-login-container">
      <div>
        <form className="register-login-form">
          <label htmlFor="email">Email:</label>
          <input
            type="text"
            name="email"
            value={email}
            onChange={handleEmailChange}
            onKeyDown={handleKeyPress}
          ></input>
          {isInvalidEmail && email !=="" && <p className="form-info-error-message">Invalid email</p>}

          <label htmlFor="firstName">First Name:</label>
          <input
            type="text"
            name="firstName"
            value={firstName}
            onChange={handleFirstNameChange}
            onKeyDown={handleKeyPress}
          ></input>

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
          {isInvalidPassword && password !=="" && <p className="form-info-error-message">Your password must be at least 8 characters long</p>}

          <label htmlFor="confirm-password">Confirm Password:</label>
          <input
            type="password"
            name="confirm-password"
            value={confirmPassword}
            onChange={handleConfirmPasswordChange}
            onKeyDown={handleKeyPress}
          ></input>
          {passwordsDoNotMatch && confirmPassword !=="" && <p className="form-info-error-message">Passwords do not match</p>}
          <ReCAPTCHA sitekey="6LenvssnAAAAAJOhnQQ3FEYuhRgx4kl-RDePeiRY"
            onChange={recaptchaOnChange}
            onExpired={recaptchaOnExpired} />
        </form>
      </div>
      <div>
        <button className="register-login-button" onClick={postUser} disabled={isButtonDisabled}>
          Create Account
        </button>
      </div>
      <p className="link">Already have an account? <Link to="/Login">Sign in</Link></p>
    </div>
  );
}