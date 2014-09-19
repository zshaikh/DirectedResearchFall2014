package com.facebook.model;

import java.util.*;
import org.json.*;

public interface GraphObject
{
    Map<String, Object> asMap();
    
     <T extends GraphObject> T cast(Class<T> p0);
    
    JSONObject getInnerJSONObject();
    
    Object getProperty(String p0);
    
     <T extends GraphObject> T getPropertyAs(String p0, Class<T> p1);
    
     <T extends GraphObject> GraphObjectList<T> getPropertyAsList(String p0, Class<T> p1);
    
    void removeProperty(String p0);
    
    void setProperty(String p0, Object p1);
}
