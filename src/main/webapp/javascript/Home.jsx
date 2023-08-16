import React, { useState, useEffect } from "react";

export default function Home() {
  return (
    <div>
      <h1>Useful and Invasive Plants</h1>
      <section id="about">
        <h3>About</h3>
        <p>
          {/* UIP is an informational application that shows you common
          helpful as well as invasive species of plants in Central Ohio.
          Search for a plant, it displays images and some information and
          links to an external source.*/}
          Welcome to "Useful and Invasive Plants," your virtual gateway to
          the mesmerizing world of plants! Immerse yourself in the
          captivating beauty of nature as you explore our extensive
          collection of plant images and detailed descriptions. Beginning
          your journey into the realm of plants, UIP is designed to
          satiate your curiosity and deepen your understanding of the
          beautiful plants around us. At the heart of our website is a
          powerful search bar that empowers you to embark on a
          personalized floral expedition. Simply type in the name of a
          plant, and watch as a treasure trove of images, and descriptions
          unfold before your eyes. Whether you're searching for the
          vibrant petals of a rare orchid, the lush foliage of a tropical
          fern, or the intricate patterns of succulents, our search
          feature will swiftly guide you to the visual and informational
          delight you seek.
        </p>
      </section>
      <section id="creators">
        <h3 id="meet-us">Meet The Creators:</h3>
        <div id="team-members">
          <div className="team-member">
            <img src="images/abdi-headshot.jpg" className="headshot" />
            <div className="info-box">
              <h4>Abdikarim Farah</h4>
              <a href="https://Abdikarimfarah.github.io">
                <img className="social-link" src="images/github-mark.png" />
              </a>
              <a href="mailto:abdikarimfarah12@gmail.com">
                <img
                  className="social-link"
                  src="images\Gmail-Email-PNG-Pic.png"
                />
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
              <a href="mailto:dawsonblack0816@gmail.com">
                <img
                  className="social-link"
                  src="images\Gmail-Email-PNG-Pic.png"
                />
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
                <img
                  className="social-link"
                  src="images\Gmail-Email-PNG-Pic.png"
                />
              </a>
              <a href="https://www.linkedin.com/in/robert-johnson-2489551a4">
                <img className="social-link" src="images\In-Blue-128.png" />
              </a>
            </div>
          </div>
          <div className="team-member">
            <img src="images/Siman_headshot.png" className="headshot" />
            <div className="info-box">
              <h4>Siman Farah</h4>
              <a href="https://Siman-1.github.io">
                <img className="social-link" src="images/github-mark.png" />
              </a>
              <a href="mailto:simanfaraa.h@gmail.com">
                <img
                  className="social-link"
                  src="images\Gmail-Email-PNG-Pic.png"
                />
              </a>
              <a href="https://www.linkedin.com/in/siman-farah-101682282/">
                <img className="social-link" src="images\In-Blue-128.png" />
              </a>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
