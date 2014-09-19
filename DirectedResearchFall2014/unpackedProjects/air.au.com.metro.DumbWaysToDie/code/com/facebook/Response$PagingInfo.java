package com.facebook;

import com.facebook.model.*;

interface Response$PagingInfo extends GraphObject
{
    String getNext();
    
    String getPrevious();
}
