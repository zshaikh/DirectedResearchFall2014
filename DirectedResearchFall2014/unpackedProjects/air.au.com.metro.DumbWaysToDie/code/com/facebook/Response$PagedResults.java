package com.facebook;

import com.facebook.model.*;

interface Response$PagedResults extends GraphObject
{
    GraphObjectList getData();
    
    Response$PagingInfo getPaging();
}
