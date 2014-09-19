package com.fiksu.asotracking;

public class FiksuIntegrationError extends RuntimeException
{
    private static final long serialVersionUID = 2468412625444291679L;
    
    FiksuIntegrationError(final String message) {
        super(message);
    }
}
