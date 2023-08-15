import React, { useState } from 'react';

const EmailValidator = () => {
  const [searchQuery, setSearchQuery] = useState('');
  const [isValidEmail, setIsValidEmail] = useState(null);

  const validateEmail = (email) => {
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    return emailRegex.test(email);
  };

  const handleSearchQueryChange = (event) => {
    const newSearchQuery = event.target.value;
    setSearchQuery(newSearchQuery);
    setIsValidEmail(null); // Reset the validation status when input changes
  };

  const handleValidateEmail = () => {
    setIsValidEmail(validateEmail(searchQuery));
  };

  return (
    <div>
      <input
        type="text"
        value={searchQuery}
        onChange={handleSearchQueryChange}
        placeholder="Enter an email address"
      />
      <button onClick={handleValidateEmail}>Check Email</button>
      {isValidEmail === false && <p>Not a valid email address</p>}
    </div>
  );
};

export default EmailValidator;