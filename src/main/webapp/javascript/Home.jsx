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
                {/* UIP is an informational application that shows you common
                helpful as well as invasive species of plants in Central Ohio.
                Search for a plant, it displays images and some information and
                links to an external source.*/}
                Welcome to "Useful and Invasive Plants," your 
                virtual gateway to the mesmerizing world of plants! Immerse
                yourself in the captivating beauty of nature as you explore our
                extensive collection of plant images and detailed descriptions.
                Whether you're a seasoned botanist or just beginning your
                journey into the realm of plants, UIP is designed to
                satiate your curiosity and deepen your understanding of the
                beautiful plants around us. At the heart of our website is a
                powerful search bar that empowers you to embark on a
                personalized botanical expedition. Simply type in the name of a
                plant, and watch as a treasure trove of images unfolds before
                your eyes. Whether you're searching for the vibrant petals of a
                rare orchid, the lush foliage of a tropical fern, or the
                intricate patterns of succulents, our search feature will
                swiftly guide you to the visual and informational delight you seek.
              </p>
            </td>
          </tr>
        </div>
      </div>
      <div className="creators">
        <div>
          <h4>Abdikarim Farah</h4>
          <a href="https://Abdikarimfarah.github.io">
            <img className="github" src="images/github-mark.png" />
          </a>
          <a href="mailto:abdikarimfarah12@gmail.com">
            <img className="gmail" src="images\Gmail-Email-PNG-Pic.png" />
          </a>
          <a href="https://www.linkedin.com/in/abdikarim-farah-37a5b0274/">
            <img className="linkedin" src="images\In-Blue-128.png" />
          </a>
        </div>
        <div>
          <h4>Dawson Black</h4>
          <a href="https://dawsonblack.github.io/">
            <img className="github" src="images/github-mark.png" />
          </a>
          <a href="dawsonblack0816@gmail.com">
            <img className="gmail" src="images\Gmail-Email-PNG-Pic.png" />
          </a>
          <a href="https://www.linkedin.com/in/ddablack/">
            <img className="linkedin" src="images\In-Blue-128.png" />
          </a>
        </div>
        <div>
          <h4>Robert Johnson</h4>
          <a href="https://Johnsonroberte.github.io">
            <img className="github" src="images/github-mark.png" />
          </a>
          <a href="mailto:JohnsonRobertE809@gmail.com">
            <img className="gmail" src="images\Gmail-Email-PNG-Pic.png" />
          </a>
          <a href="https://www.linkedin.com/in/robert-johnson-2489551a4">
            <img className="linkedin" src="images\In-Blue-128.png" />
          </a>
        </div>
        <div>
          <h4>Siman Farah</h4>
          <a href="https://Siman-1.github.io">
            <img className="github" src="images/github-mark.png" />
          </a>
          <a href="mailto:simanfaraa.h@gmail.com">
            <img className="gmail" src="images\Gmail-Email-PNG-Pic.png" />
          </a>
          <a href="https://www.linkedin.com/in/siman-farah-101682282/">
            <img className="linkedin" src="images\In-Blue-128.png" />
          </a>
        </div>
      </div>
    </div>
  );
}
