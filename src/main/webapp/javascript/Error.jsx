import React from "react";

export default function Error() {
    return (
        <div>
            <h1>ERROR {errorCode}</h1>
            <p>Oops! Something went wrong. Please try again later.</p>
        </div>
    );
}