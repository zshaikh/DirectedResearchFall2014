package com.fusepowered.util;

public class Response
{
    private String xml;
    
    public String getXml() {
        return this.xml;
    }
    
    public boolean isEmpty() {
        return this.xml == null || this.xml.length() < 1;
    }
    
    public void setXml(final String xml) {
        this.xml = xml;
    }
    
    @Override
    public String toString() {
        return "Response [xml=" + this.xml + ']';
    }
}
