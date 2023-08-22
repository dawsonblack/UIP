import React from "react";
import { Link } from "react-router-dom";

export default function Error() {
    return (
        <div class="error-container">
            <h1>404 - Plant Not Found</h1>
            <p>Oops! It seems like the plant you're looking for is as elusive as a rare blossom.</p>
            <p>But don't worry! You can continue your botanical exploration by using our powerful search bar to discover other captivating plants.</p>
            <img src="images/404_plant.PNG" alt="404 Image" />
            <p>
                <Link to="/">Back to Home</Link>
            </p>
        </div>
    );
}