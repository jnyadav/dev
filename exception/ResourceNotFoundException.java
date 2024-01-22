package com.seveneleven.rishost.ageverification.exception;

public class ResourceNotFoundException extends RuntimeException {

    public ResourceNotFoundException(int id, Class aClass) {
        super(aClass.getSimpleName() + " id not found : " + id);
    }
}
