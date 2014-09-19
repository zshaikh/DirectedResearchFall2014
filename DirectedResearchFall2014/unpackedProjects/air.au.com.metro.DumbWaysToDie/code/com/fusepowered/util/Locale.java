package com.fusepowered.util;

public class Locale
{
    private String description;
    private String title;
    
    public Locale(final String title, final String description) {
        super();
        this.title = title;
        this.description = description;
    }
    
    public String getDescription() {
        return this.description;
    }
    
    public String getTitle() {
        return this.title;
    }
    
    public void setDescription(final String description) {
        this.description = description;
    }
    
    public void setTitle(final String title) {
        this.title = title;
    }
    
    @Override
    public String toString() {
        return "Locale [title=" + this.title + ", description=" + this.description + ']';
    }
}
