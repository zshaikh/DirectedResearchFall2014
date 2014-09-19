package com.fusepowered.util;

public class GameConfig
{
    private int id;
    private String key;
    private String value;
    
    public int getId() {
        return this.id;
    }
    
    public String getKey() {
        return this.key;
    }
    
    public String getValue() {
        return this.value;
    }
    
    public void setId(final int id) {
        this.id = id;
    }
    
    public void setKey(final String key) {
        this.key = key;
    }
    
    public void setValue(final String value) {
        this.value = value;
    }
    
    @Override
    public String toString() {
        return "GameConfig [id=" + this.id + ", key=" + this.key + ", value=" + this.value + ']';
    }
}
