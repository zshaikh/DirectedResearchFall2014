package com.facebook.model;

import java.util.*;
import org.json.*;

public interface GraphObject
{
    Map asMap();
    
    GraphObject cast(Class p0);
    
    JSONObject getInnerJSONObject();
    
    Object getProperty(String p0);
    
    void removeProperty(String p0);
    
    void setProperty(String p0, Object p1);
}
