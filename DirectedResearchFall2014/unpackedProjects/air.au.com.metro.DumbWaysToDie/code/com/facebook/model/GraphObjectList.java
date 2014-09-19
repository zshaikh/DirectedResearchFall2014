package com.facebook.model;

import java.util.*;
import org.json.*;

public interface GraphObjectList extends List
{
    GraphObjectList castToListOf(Class p0);
    
    JSONArray getInnerJSONArray();
}
