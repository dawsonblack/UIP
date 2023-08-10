import React from "react";
import { createRoot } from "react-dom/client";
import { BrowserRouter, Routes, Route, Outlet, Link } from "react-router-dom";

import "../css/style.css";

import Home from "./Home";
import Test from "./Test";
import TestingFetches from "./TestingFetches";
import User from "./User";

function Layout() {
  return (
    <>
      <nav>
        <Link to="/">Home</Link>
        <Link to="Test">Test</Link>
        <Link to="TestingFetches">TestingFetches</Link>
        <Link to="User">User</Link>
      </nav>
      <Outlet />
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
            <Route path="TestingFetches" element={<TestingFetches />} />
            <Route path="User" element={<User />} />
          </Route>
        </Routes>
      </BrowserRouter>
    </React.StrictMode>
  );
}
createRoot(document.getElementById("react-mountpoint")).render(<Main />);
