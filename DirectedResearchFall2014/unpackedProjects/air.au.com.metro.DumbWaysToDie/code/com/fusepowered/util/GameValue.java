package com.fusepowered.util;

public class GameValue
{
    boolean isBinary;
    String value;
    
    public GameValue(final String value, final boolean isBinary) {
        super();
        this.value = value;
        this.isBinary = isBinary;
    }
    
    public String getValue() {
        return this.value;
    }
    
    public boolean isBinary() {
        return this.isBinary;
    }
    
    public void setBinary(final boolean isBinary) {
        this.isBinary = isBinary;
    }
    
    public void setValue(final String value) {
        this.value = value;
    }
    
    @Override
    public String toString() {
        return "GameValue [value=" + this.value + ", isBinary=" + this.isBinary + ']';
    }
}
