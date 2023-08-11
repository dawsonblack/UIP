import React, { useEffect } from "react";

import { createRoot } from "react-dom/client";
import { BrowserRouter, Routes, Route, Outlet, Link } from "react-router-dom";
import BackgroundVideo from "./BackgroundVideo";

import "../css/style.css";

import Home from "./Home";
import Test from "./Test";
import Search from "./Search";
import User from "./User";

function Layout() {
  useEffect(() => {
    let video = document.querySelector("video");
    video.playbackRate = 0.5;
  }, []);

  return (
    <>
      <nav>
        <Link to="/">Home</Link>
        <Link to="Test">Test</Link>
        <Link to="Search">Search</Link>
        <Link to="User">User</Link>
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
    <React.StrictMode>
      <BrowserRouter>
        <Routes>
          <Route
            path="/app4?/src?/main?/resources?/static?/index.html?"
            element={<Layout />}
          >
            <Route index element={<Home />} />
            <Route path="Test" element={<Test />} />
            <Route path="Search" element={<Search />} />
            <Route path="User" element={<User />} />
          </Route>
        </Routes>
      </BrowserRouter>
    </React.StrictMode>
  );
}
createRoot(document.getElementById("react-mountpoint")).render(<Main />);
