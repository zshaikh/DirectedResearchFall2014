package com.facebook;

public enum SessionState
{
    CLOSED("CLOSED", 6, SessionState$Category.CLOSED_CATEGORY), 
    CLOSED_LOGIN_FAILED("CLOSED_LOGIN_FAILED", 5, SessionState$Category.CLOSED_CATEGORY), 
    CREATED("CREATED", 0, SessionState$Category.CREATED_CATEGORY), 
    CREATED_TOKEN_LOADED("CREATED_TOKEN_LOADED", 1, SessionState$Category.CREATED_CATEGORY), 
    OPENED("OPENED", 3, SessionState$Category.OPENED_CATEGORY), 
    OPENED_TOKEN_UPDATED("OPENED_TOKEN_UPDATED", 4, SessionState$Category.OPENED_CATEGORY), 
    OPENING("OPENING", 2, SessionState$Category.CREATED_CATEGORY);
    
    private final SessionState$Category category;
    
    private SessionState(final String name, final int ordinal, final SessionState$Category category) {
        this.category = category;
    }
    
    public final boolean isClosed() {
        return this.category == SessionState$Category.CLOSED_CATEGORY;
    }
    
    public final boolean isOpened() {
        return this.category == SessionState$Category.OPENED_CATEGORY;
    }
}
