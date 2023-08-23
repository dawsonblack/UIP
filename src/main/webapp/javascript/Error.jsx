import React from "react";
import { Link } from "react-router-dom";

export default function Error() {
    return (
        <div className="error-page">
            <div className="error-container">
                <div id="error-message">
                    <h1>Error 404 - Page Not Found</h1>
                    <img src="images/crying_plant.PNG" alt=""/>
                </div>

                <p>Oops! It seems like the page you're looking for is as elusive as a rare blossom.</p>
                <p>But don't worry! You can continue your botanical exploration by using our powerful search bar to discover other captivating plants.</p>
                <p>
                    <Link to="/">Back to Home</Link>
                </p>
            </div>
        </div>
    );
}