import React, { useState, useEffect } from "react";

export default function Test() {
  async function sha256(message) {
    // encode as UTF-8
    const msgBuffer = new TextEncoder().encode(message);                    

    // hash the message
    const hashBuffer = await crypto.subtle.digest('SHA-256', msgBuffer);

    // convert ArrayBuffer to Array
    const hashArray = Array.from(new Uint8Array(hashBuffer));

    // convert bytes to hex string                  
    const hashHex = hashArray.map(b => b.toString(16).padStart(2, '0')).join('');
    return hashHex;
  }

  async function hash() {
    const password = document.getElementById("password").value;
    console.log(password);
    const hashedPassword = await sha256(password);
    console.log(hashedPassword);
  }
  
  return (
    <div>
      <div>
        <input type="text" id="password" />
        <button onClick={hash}>Submit</button>
      </div>
    </div>
  );
}
