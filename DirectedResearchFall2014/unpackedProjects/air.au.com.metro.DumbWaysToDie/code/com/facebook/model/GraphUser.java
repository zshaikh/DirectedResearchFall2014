package com.facebook.model;

public interface GraphUser extends GraphObject
{
    String getBirthday();
    
    String getFirstName();
    
    String getId();
    
    String getLastName();
    
    String getLink();
    
    GraphLocation getLocation();
    
    String getMiddleName();
    
    String getName();
    
    String getUsername();
    
    void setBirthday(String p0);
    
    void setFirstName(String p0);
    
    void setId(String p0);
    
    void setLastName(String p0);
    
    void setLink(String p0);
    
    void setLocation(GraphLocation p0);
    
    void setMiddleName(String p0);
    
    void setName(String p0);
    
    void setUsername(String p0);
}
