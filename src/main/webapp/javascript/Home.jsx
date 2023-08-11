import React, { useState, useEffect } from "react";

export default function Home() {
  return (
    <div>
      <div id="header">
        <h1>Useful and Invasive Plants</h1>
        <div id="about">
          <tr>
            <th>
              <h3>About</h3>
            </th>
          </tr>
          <tr>
            <td>
              <p>
                UIP is an informational application that shows you common
                helpful as well as invasive species of plants in Central Ohio.
                Search for a plant, it displays images and some information and
                links to an external source.
              </p>
            </td>
          </tr>
        </div>
      </div>
      <div id="creators">
        <div className="team-member">
          <img src="images/Abdikarim_headshot.jpg" className="headshot" />
          <div className="info-box">
            <h4>Abdikarim Farah</h4>
            <a href="https://Abdikarimfarah.github.io">
              <img className="social-link" src="images/github-mark.png" />
            </a>
            <a href="mailto:abdikarimfarah12@gmail.com">
              <img className="social-link" src="images\Gmail-Email-PNG-Pic.png" />
            </a>
            <a href="https://www.linkedin.com/in/abdikarim-farah-37a5b0274/">
              <img className="social-link" src="images\In-Blue-128.png" />
            </a>
          </div>
        </div>
        <div className="team-member">
          <img src="images/Dawson_headshot.jpg" className="headshot" />
          <div className="info-box">
            <h4>Dawson Black</h4>
            <a href="https://dawsonblack.github.io/">
              <img className="social-link" src="images/github-mark.png" />
            </a>
            <a href="dawsonblack0816@gmail.com">
              <img className="social-link" src="images\Gmail-Email-PNG-Pic.png" />
            </a>
            <a href="https://www.linkedin.com/in/ddablack/">
              <img className="social-link" src="images\In-Blue-128.png" />
            </a>
          </div>
        </div>
        <div className="team-member">
          <img src="images/Robert_headshot.jpg" className="headshot" />
          <div className="info-box">
            <h4>Robert Johnson</h4>
            <a href="https://Johnsonroberte.github.io">
              <img className="social-link" src="images/github-mark.png" />
            </a>
            <a href="mailto:JohnsonRobertE809@gmail.com">
              <img className="social-link" src="images\Gmail-Email-PNG-Pic.png" />
            </a>
            <a href="https://www.linkedin.com/in/robert-johnson-2489551a4">
              <img className="social-link" src="images\In-Blue-128.png" />
            </a>
          </div>
        </div>
        <div className="team-member">
          <img src="images/Siman_headshot.jpg" className="headshot" />
          <div className="info-box">
            <h4>Siman Farah</h4>
            <a href="https://Siman-1.github.io">
              <img className="social-link" src="images/github-mark.png" />
            </a>
            <a href="mailto:simanfaraa.h@gmail.com">
              <img className="social-link" src="images\Gmail-Email-PNG-Pic.png" />
            </a>
            <a href="https://www.linkedin.com/in/siman-farah-101682282/">
              <img className="social-link" src="images\In-Blue-128.png" />
            </a>
          </div>
        </div>
      </div>
    </div>
  );
}
