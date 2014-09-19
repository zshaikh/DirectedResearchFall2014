package com.facebook.model;

import org.json.*;
import java.util.*;

public interface OpenGraphAction extends GraphObject
{
    GraphObject getApplication();
    
    JSONObject getComments();
    
    Date getCreatedTime();
    
    Date getEndTime();
    
    Date getExpiresTime();
    
    GraphUser getFrom();
    
    String getId();
    
    List getImage();
    
    JSONObject getLikes();
    
    String getMessage();
    
    GraphPlace getPlace();
    
    Date getPublishTime();
    
    String getRef();
    
    Date getStartTime();
    
    List getTags();
    
    void setApplication(GraphObject p0);
    
    void setComments(JSONObject p0);
    
    void setCreatedTime(Date p0);
    
    void setEndTime(Date p0);
    
    void setExpiresTime(Date p0);
    
    void setFrom(GraphUser p0);
    
    void setId(String p0);
    
    void setImage(List p0);
    
    void setLikes(JSONObject p0);
    
    void setMessage(String p0);
    
    void setPlace(GraphPlace p0);
    
    void setPublishTime(Date p0);
    
    void setRef(String p0);
    
    void setStartTime(Date p0);
    
    void setTags(List p0);
}
