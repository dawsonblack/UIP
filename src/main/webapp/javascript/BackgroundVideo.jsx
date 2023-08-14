import React, { Component } from "react";

const videos = [
  "flower1.mp4",
  "flower2.mp4",
  "flower3.mp4",
  "leaves-swaying.mp4",
];

class BackgroundVideo extends Component {
  constructor(props) {
    super(props);
    this.state = {
      currentVideoIndex: 0,
    };
    this.videoRef = React.createRef();
  }

  componentDidMount() {
    this.playVideo();
  }

  componentDidUpdate() {
    this.playVideo();
  }

  playVideo() {
    const video = this.videoRef.current;
    video.src = videos[this.state.currentVideoIndex];
    video.load();
    video.play();
    video.onended = this.handleVideoEnd;
  }

  handleVideoEnd = () => {
    this.setState((prevState) => ({
      currentVideoIndex: (prevState.currentVideoIndex + 1) % videos.length,
    }));
  };

  render() {
    return (
      <video
        ref={this.videoRef}
        autoPlay
        muted
        style={{
          position: "fixed",
          top: 0,
          left: 0,
          width: "100%",
          height: "100%",
          objectFit: "cover",
          zIndex: -2,
          filter: "blur(10px)",
        }}
      />
    );
  }
}

export default BackgroundVideo;
