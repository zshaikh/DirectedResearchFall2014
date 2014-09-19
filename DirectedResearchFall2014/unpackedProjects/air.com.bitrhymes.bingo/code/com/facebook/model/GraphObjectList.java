package com.facebook.model;

import java.util.*;
import org.json.*;

public interface GraphObjectList<T> extends List<T>
{
     <U extends GraphObject> GraphObjectList<U> castToListOf(Class<U> p0);
    
    JSONArray getInnerJSONArray();
}
