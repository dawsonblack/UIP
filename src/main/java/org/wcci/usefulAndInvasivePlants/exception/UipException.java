package org.wcci.usefulAndInvasivePlants.exception;

public class UipException extends RuntimeException {

    private int errorCode;
    
    public UipException(int errorCode, String message){
        super(message);
        this.errorCode=errorCode;
    }
}
