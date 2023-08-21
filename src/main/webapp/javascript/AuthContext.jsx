import React, { createContext, useContext, useState } from 'react';

const AuthContext = createContext();

export function AuthProvider({ children }) {
  const [name, setName] = useState(localStorage.getItem("loggedInName") || "");

  return (
    <AuthContext.Provider value={{ name, setName }}>
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  return useContext(AuthContext);
}