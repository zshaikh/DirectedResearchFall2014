package com.facebook.widget;

import com.facebook.model.*;

interface GraphObjectCursor
{
    boolean areMoreObjectsAvailable();
    
    void close();
    
    int getCount();
    
    GraphObject getGraphObject();
    
    int getPosition();
    
    boolean isAfterLast();
    
    boolean isBeforeFirst();
    
    boolean isClosed();
    
    boolean isFirst();
    
    boolean isFromCache();
    
    boolean isLast();
    
    boolean move(int p0);
    
    boolean moveToFirst();
    
    boolean moveToLast();
    
    boolean moveToNext();
    
    boolean moveToPosition(int p0);
    
    boolean moveToPrevious();
}
