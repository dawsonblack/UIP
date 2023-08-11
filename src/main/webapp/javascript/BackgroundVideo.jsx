import React, { Component } from "react";
import { CSSTransition } from 'react-transition-group';
import './BackgroundVideo.css';

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
  
    handleVideoEnd = () => {
      this.setState(
        (prevState) => ({
          currentVideoIndex: (prevState.currentVideoIndex + 1) % videos.length,
        }),
        this.playVideo
      );
    };
  
    playVideo() {
      const video = this.videoRef.current;
      video.src = videos[this.state.currentVideoIndex];
      video.load();
      video.play();
      video.onended = this.handleVideoEnd;
    }
  
    render() {
      return (
        <div className="background-video-container">
          <CSSTransition
            in={true}
            appear={true}
            timeout={1000}
            classNames="fade"
            key={this.state.currentVideoIndex}
          >
            <video
              ref={this.videoRef}
              autoPlay
              muted
              className="background-video"
              key={this.state.currentVideoIndex}
            />
          </CSSTransition>
        </div>
      );
    }
  }
  
  export default BackgroundVideo;
// class BackgroundVideo extends Component {
//     constructor(props) {
//       super(props);
//       this.state = {
//         currentVideoIndex: 0,
//       };
//       this.videoRef = React.createRef();
//     }

//     componentDidMount() {
//       this.playVideo();
//     }

//     handleVideoEnd = () => {
//       this.setState((prevState) => ({
//         currentVideoIndex: (prevState.currentVideoIndex + 1) % videos.length,
//       }), this.playVideo);
//     };

//     playVideo() {
//       const video = this.videoRef.current;
//       video.src = videos[this.state.currentVideoIndex];
//       video.load();
//       video.play();
//       video.onended = this.handleVideoEnd;
//     }

//     render() {
//       return (
//         <video
//           ref={this.videoRef}
//           autoPlay
//           muted
//           style={{ position: 'fixed', top: 0, left: 0, width: '100%', height: '100%', objectFit: 'cover', zIndex: -1 }}
//         />
//       );
//     }
//   }

//   export default BackgroundVideo;
