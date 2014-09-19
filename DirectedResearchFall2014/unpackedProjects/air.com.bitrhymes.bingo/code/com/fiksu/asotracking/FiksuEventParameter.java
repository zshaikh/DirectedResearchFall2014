package com.fiksu.asotracking;

public enum FiksuEventParameter
{
    EVENT("EVENT", 0, "event"), 
    FVALUE("FVALUE", 3, "fvalue"), 
    IVALUE("IVALUE", 2, "ivalue"), 
    TVALUE("TVALUE", 4, "tvalue"), 
    USERNAME("USERNAME", 1, "username");
    
    private final String mName;
    
    private FiksuEventParameter(final String name, final int ordinal, final String mName) {
        this.mName = mName;
    }
    
    public final String getName() {
        return this.mName;
    }
}
