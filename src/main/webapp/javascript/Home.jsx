import React, { useState } from "react";

export default function Home() {
  return (
    <div>
      <div className="logo">
        <img src="images/logo-image-png.png" />{" "}
      </div>
      <h1 id="title">Useful and Invasive Plants</h1>

      <section id="about">
        <h4 className="tagline">UNCOVER!</h4>

        <p className="home-page-description">
          Welcome to your virtual gateway to the mesmerizing world of plants!
          Useful and Invasive Plants (UIP) is an informational application that
          shows you common helpful as well as invasive species of plants in
          Central Ohio.
        </p>
        <h4 className="tagline">INTERACT!</h4>

        <p className="home-page-description">
          Immerse yourself in the captivating beauty of nature as you explore
          our extensive collection of plants as well as their detailed
          descriptions. UIP is designed to satiate your curiosity and deepen
          your understanding of the plants around us. If you want to garden cool
          plants without the risk of possibly threatening our entire eco-system,
          UIP is the application just for that!
        </p>
        <h4 className="tagline">PINPOINT!</h4>

        <p className="home-page-description">
          Simply type in the name, color or even description of a plant, and
          watch as a treasure trove of images unfold before your eyes. Whether
          you're searching for the vibrant petals of a prairie flower, the lush
          foliage of a native shrubbery, or the intricate colors of native
          fruit, our search feature will swiftly guide you to the visual and
          informational delight you seek!
        </p>
      </section>

      <section id="creators">
        <h2 className="tagline">Meet the Creators</h2>
        <div id="team-members">
          <div className="team-member">
            <h4 className="creatorName">Abdikarim Farah</h4>
            <img src="images/abdi-headshot.jpg" className="headshot" />
            <div className="info-box">
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
              <p className="position-description">
                Software developer with a passion for creating efficient and
                innovative solutions through code.
              </p>
            </div>
          </div>
          <div className="team-member">
            <h4 className="creatorName">Dawson Black</h4>
            <img src="images/Dawson_headshot.jpg" className="headshot" />
            <div className="info-box">
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
              <p className="position-description">
                Java software engineer with a background in physics and
                mathematics.
              </p>
            </div>
          </div>
          <div className="team-member">
            <h4 className="creatorName">Robert Johnson</h4>
            <img src="images/Robert_headshot.jpg" className="headshot" />
            <div className="info-box">
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
              <p className="position-description">
                Dedicated and adaptable Army veteran turned Software Engineer
                based in Columbus, Ohio.
              </p>
            </div>
          </div>
          <div className="team-member">
            <h4 className="creatorName">Siman Farah</h4>
            <img src="images/Siman_headshot.jpg" className="headshot" />
            <div className="info-box">
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
              <p className="position-description">
                Node.js Ninja with a passion for stashing. Based in Columbus OH,
                yet a digital transplant.
              </p>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}
