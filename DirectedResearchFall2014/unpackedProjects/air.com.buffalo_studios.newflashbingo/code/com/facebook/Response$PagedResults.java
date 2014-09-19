package com.facebook;

import com.facebook.model.*;

interface Response$PagedResults extends GraphObject
{
    GraphObjectList<GraphObject> getData();
    
    Response$PagingInfo getPaging();
}
