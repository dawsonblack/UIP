import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import ReCAPTCHA from "react-google-recaptcha";
import { useLocation } from 'react-router-dom';
import { AES, enc } from 'crypto-js';

export default function Register() {
  function encryptData(data, key) {
    const encrypted = AES.encrypt(data, key).toString();
    return encrypted;
  }
  
  // Function to decrypt data using AES
  function decryptData(encryptedData, key) {
    const decrypted = AES.decrypt(encryptedData, key).toString(enc.Utf8);
    return decrypted;
  }

  const location = useLocation();
  const queryParams = new URLSearchParams(location.search);

  const [email, setEmail] = useState(queryParams.get('e') || '');
  const [firstName, setFirstName] = useState(queryParams.get('n') || '');
  const [username, setUsername] = useState(queryParams.get('u') || '');

  const [password, setPassword] = useState(queryParams.get('pw') && decryptData(queryParams.get('pw'), "q2Rv7FpD9aLX5gTnEwZiY1mCjKoHsU6x") || '');
  const [confirmPassword, setConfirmPassword] = useState(queryParams.get('cpw') && decryptData(queryParams.get('cpw'), "q2Rv7FpD9aLX5gTnEwZiY1mCjKoHsU6x") || '');


  const [isInvalidEmail, setIsInvalidEmail] = useState(queryParams.get('invalidEmail') || null);

  const [firstNameTooLong, setFirstNameTooLong] = useState(queryParams.get('nameTooLong') || null);

  const [usernameHasSpace, setUsernameHasSpace] = useState(queryParams.get('usernameSpace') || null);
  const [usernameTooLong, setUsernameTooLong] = useState(queryParams.get('usernameTooLong') || null);

  const [invalidPassword, setInvalidPassword] = useState(queryParams.get('invalidPassword') || null);

  const [passwordsDoNotMatch, setPasswordsDoNotMatch] = useState(queryParams.get('nonMatchingPasswords') || null);
  const [recaptchaCompleted, setRecaptchaCompleted] = useState(false);
  const [isButtonDisabled, setIsButtonDisabled] = useState(false);

  useEffect(() => {
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
  }, [email, firstName, username, password, confirmPassword, recaptchaCompleted]);

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
    console.log("recaptcha completion: " + recaptchaCompleted);

    const userData = {
      email,
      firstName,
      username,
      password,
      confirmPassword,
      recaptchaCompleted
    };

    try {
      const response = await fetch('/Register', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(userData)
      });
      if (response.ok) {
          window.location.href = '/Register?success=true';
      } else {
          const textFields = new URLSearchParams();
          email !== "" && textFields.set('e', email);
          firstName !== "" && textFields.set('n', firstName);
          username !== "" && textFields.set('u', username);
          password !== "" && textFields.set('pw', encryptData(password, "q2Rv7FpD9aLX5gTnEwZiY1mCjKoHsU6x"));
          confirmPassword !== "" && textFields.set('cpw', encryptData(confirmPassword, "q2Rv7FpD9aLX5gTnEwZiY1mCjKoHsU6x"));

          const responseUrl = await response.text();
          window.location.href = `/Register?${responseUrl}&${textFields.toString()}`;
      }
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
          ></input>
          {isInvalidEmail && email !=="" && <p className="form-error-message">Invalid email</p>}
          {queryParams.get('emptyEmail') && <p className="form-error-message">This field is required</p>}

          <label htmlFor="firstName">First Name:</label>
          <input
            type="text"
            name="firstName"
            value={firstName}
            onChange={handleFirstNameChange}
          ></input>
          {firstNameTooLong && <p className="form-error-message">This field cannot be greater than 256 characters</p>}

          <label htmlFor="username">Username:</label>
          <input
            type="text"
            name="username"
            value={username}
            onChange={handleUsernameChange}
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
          ></input>
          {queryParams.get('emptyPassword') && <p className="form-error-message">This field is required</p>}
          {invalidPassword && password !=="" && <p className="form-error-message">Your password must contain at least 8 characters, but no more than 256 characters</p>}

          <label htmlFor="confirm-password">Confirm Password:</label>
          <input
            type="password"
            name="confirm-password"
            value={confirmPassword}
            onChange={handleConfirmPasswordChange}
          ></input>
          {queryParams.get('emptyConfirmPassword') && <p className="form-error-message">This field is required</p>}
          {passwordsDoNotMatch && confirmPassword !=="" && <p className="form-error-message">Passwords do not match</p>}
          <ReCAPTCHA sitekey="6LenvssnAAAAAJOhnQQ3FEYuhRgx4kl-RDePeiRY"
            onChange={recaptchaOnChange}
            onExpired={recaptchaOnExpired} />

          {queryParams.get('badRecaptcha') && <p className="form-error-message">This field is required</p>}
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