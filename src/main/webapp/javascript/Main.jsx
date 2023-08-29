import React, { useState, useEffect } from "react";

import { createRoot } from "react-dom/client";
import { BrowserRouter, Routes, Route, Outlet, Link } from "react-router-dom";
import BackgroundVideo from "./BackgroundVideo";

import "../css/style.css";

import Error from "./Error";
import Home from "./Home.jsx";
import Search from "./Search.jsx";
import User from "./User.jsx";
import Register from "./Register";
import Login from "./Login";
import Submissions from "./Submissions";

function Layout() {
  const [userIsLoggedIn, setUserIsLoggedIn] = useState(false);

  useEffect(() => {
    let video = document.querySelector("video");
    video.playbackRate = 0.5;

    fetch('/api/auth-status')
      .then(response => response.json())
      .then(data => {
        setUserIsLoggedIn(data.authenticated);
      })
    .catch(error => {
      console.error('Error checking authentication status:', error);
    });
  }, []);

  return (
    <>
      <nav>
        <Link to="/">Home</Link>
        {userIsLoggedIn ? (
          <Link to="User">My Profile</Link>
        ) : (
          <Link to="Login">Log In</Link>
        )}
        <Link to="Search">Search</Link>
        <Link to="Submissions">Plant Submissions</Link>
      </nav>
      <Outlet />
      <div className="App">
        <BackgroundVideo />
        {/* Your other content */}
      </div>
      {/* <video autoPlay muted loop id="background-video">
        <source src="leaves-swaying.mp4" type="video/mp4" />
      </video> */}
    </>
  );
}
function Main() {
  return (
    <BrowserRouter>
        {" "}
        <Routes>
          <Route
            path="/app4?/src?/main?/resources?/static?/index.html?"
            element={<Layout />}
          >
            <Route index element={<Home />} />
            <Route path="Search" element={<Search />} />
            <Route path="User" element={<User />} />
            <Route path="Register" element={<Register />} />
            <Route path="Login" element={<Login />} />
            <Route path="*" element={<Error />} />
            <Route path="Submissions" element={<Submissions />} />
          </Route>
        </Routes>
    </BrowserRouter>
  );
}
createRoot(document.getElementById("react-mountpoint")).render(<Main />);
