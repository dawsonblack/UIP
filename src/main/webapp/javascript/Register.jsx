import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import ReCAPTCHA from "react-google-recaptcha";
import { useLocation } from 'react-router-dom';

export default function Register() {
  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);

  const [email, setEmail] = useState(queryParams.get('email') || '');
  const [firstName, setFirstName] = useState(queryParams.get('firstName') || '');
  const [username, setUsername] = useState(queryParams.get('username') || '');
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");

  const [isInvalidEmail, setIsInvalidEmail] = useState(queryParams.get('invalidEmail') || null);

  const [firstNameTooLong, setFirstNameTooLong] = useState(queryParams.get('nameTooLong') || null);

  const [usernameHasSpace, setUsernameHasSpace] = useState(queryParams.get('usernameSpace') || null);
  const [usernameTooLong, setUsernameTooLong] = useState(queryParams.get('usernameTooLong') || null);

  const [invalidPassword, setInvalidPassword] = useState(queryParams.get('invalidPassword') || null);

  const [passwordsDoNotMatch, setPasswordsDoNotMatch] = useState(true);
  const [recaptchaCompleted, setRecaptchaCompleted] = useState(false);
  const [isButtonDisabled, setIsButtonDisabled] = useState(false);

  /*useEffect(() => {
    setIsButtonDisabled(
      email == "" ||
      username == "" ||
      password == "" ||
      isInvalidEmail ||
      firstNameTooLong ||
      usernameHasSpace ||
      usernameTooLong ||
      invalidPassword ||
      passwordsDoNotMatch ||
      !recaptchaCompleted
    );
  }, [email, firstName, username, password, confirmPassword, recaptchaCompleted]);*/

  const handleKeyPress = (event) => {
    if (event.key === "Enter" && !isButtonDisabled) {
      event.preventDefault();
      postUser();
    }
  };

  const handleEmailChange = ({ target }) => {
    setEmail(target.value);
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{1,63}$/;
    setIsInvalidEmail(!emailRegex.test(target.value));
  };

  const handleFirstNameChange = ({ target }) => {
    setFirstName(target.value);
    setFirstNameTooLong(target.value.length > 256);
  };

  const handleUsernameChange = ({ target }) => {
    setUsername(target.value);
    setUsernameHasSpace(target.value.includes(" "));
    setUsernameTooLong(target.value.length > 50);
  };

  const handlePasswordChange = ({ target }) => {
    setPassword(target.value);
    setInvalidPassword(target.value.length < 8 || target.value.length > 256);
    setPasswordsDoNotMatch(target.value !== confirmPassword);
  };

  const handleConfirmPasswordChange = ({ target }) => {
    setConfirmPassword(target.value);
    setPasswordsDoNotMatch(target.value !== password);
  };

  const recaptchaOnChange = () => {
    setRecaptchaCompleted(true);
  }
  const recaptchaOnExpired = () => {
    setRecaptchaCompleted(false);
  }

  const handleSubmit = async (event) => {
    event.preventDefault();

    const userData = {
      email,
      firstName,
      username,
      password
    };

    try {
      const response = await fetch('/Register', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(userData)
      });
      const responseUrl = await response.text();
      const textFields = new URLSearchParams();
      textFields.set('email', email);
      textFields.set('firstName', firstName);
      textFields.set('username', username);

      window.location.href = `/Register?${responseUrl}&${textFields.toString()}`;
    
    } catch (error) {
      // Handle network error or other exceptions
    }
  };

  return (
    <div className="register-login-container">
      <form onSubmit={handleSubmit}>
        <div className="register-login-form">
          {queryParams.get('success') && <p className="form-success-message">Account successfully created</p>}
          <label htmlFor="email">Email:</label>
          <input
            type="text"
            name="email"
            value={email}
            onChange={handleEmailChange}
            onKeyDown={handleKeyPress}
          ></input>
          {isInvalidEmail && email !=="" && <p className="form-error-message">Invalid email</p>}
          {queryParams.get('emptyEmail') && <p className="form-error-message">This field is required</p>}

          <label htmlFor="firstName">First Name:</label>
          <input
            type="text"
            name="firstName"
            value={firstName}
            onChange={handleFirstNameChange}
            onKeyDown={handleKeyPress}
          ></input>
          {firstNameTooLong && <p className="form-error-message">This field cannot be greater than 256 characters</p>}

          <label htmlFor="username">Username:</label>
          <input
            type="text"
            name="username"
            value={username}
            onChange={handleUsernameChange}
            onKeyDown={handleKeyPress}
          ></input>
          {queryParams.get('emptyUsername') && <p className="form-error-message">This field is required</p>}
          {usernameHasSpace && username !=="" && <p className="form-error-message">Usernames cannot contain spaces</p>}
          {usernameTooLong && username !=="" && <p className="form-error-message">Usernames cannot be greater than 50 characters</p>}

          <label htmlFor="password">Password:</label>
          <input
            type="password"
            name="password"
            value={password}
            onChange={handlePasswordChange}
            onKeyDown={handleKeyPress}
          ></input>
          {queryParams.get('emptyPassword') && <p className="form-error-message">This field is required</p>}
          {invalidPassword && password !=="" && <p className="form-error-message">Your password must contain at least 8 characters, but no more than 256 characters</p>}

          <label htmlFor="confirm-password">Confirm Password:</label>
          <input
            type="password"
            name="confirm-password"
            value={confirmPassword}
            onChange={handleConfirmPasswordChange}
            onKeyDown={handleKeyPress}
          ></input>
          {passwordsDoNotMatch && confirmPassword !=="" && <p className="form-error-message">Passwords do not match</p>}
          <ReCAPTCHA sitekey="6LenvssnAAAAAJOhnQQ3FEYuhRgx4kl-RDePeiRY"
            onChange={recaptchaOnChange}
            onExpired={recaptchaOnExpired} />

          {queryParams.get('emailUsed') && <p className="form-error-message">This email has already been registered</p>}
          {queryParams.get('usernameUsed') && <p className="form-error-message">This username is already in use</p>}
        </div>
        <div className="button-container">
          <button type="submit" disabled={isButtonDisabled}>Create Account</button>
        </div>
      </form>
      <p className="link">Already have an account? <Link to="/Login">Sign in</Link></p>
    </div>
  );
}