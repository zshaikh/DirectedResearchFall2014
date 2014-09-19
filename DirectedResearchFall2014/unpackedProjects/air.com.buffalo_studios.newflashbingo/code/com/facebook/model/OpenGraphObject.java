package com.facebook.model;

import java.util.*;

public interface OpenGraphObject extends GraphObject
{
    GraphObject getApplication();
    
    GraphObjectList<GraphObject> getAudio();
    
    @PropertyName("fbsdk:create_object")
    boolean getCreateObject();
    
    Date getCreatedTime();
    
    GraphObject getData();
    
    String getDescription();
    
    String getDeterminer();
    
    String getId();
    
    GraphObjectList<GraphObject> getImage();
    
    boolean getIsScraped();
    
    String getPostActionId();
    
    List<String> getSeeAlso();
    
    String getSiteName();
    
    String getTitle();
    
    String getType();
    
    Date getUpdatedTime();
    
    String getUrl();
    
    GraphObjectList<GraphObject> getVideo();
    
    void setApplication(GraphObject p0);
    
    void setAudio(GraphObjectList<GraphObject> p0);
    
    @PropertyName("fbsdk:create_object")
    void setCreateObject(boolean p0);
    
    void setCreatedTime(Date p0);
    
    void setData(GraphObject p0);
    
    void setDescription(String p0);
    
    void setDeterminer(String p0);
    
    void setId(String p0);
    
    void setImage(GraphObjectList<GraphObject> p0);
    
    @CreateGraphObject("url")
    @PropertyName("image")
    void setImageUrls(List<String> p0);
    
    void setIsScraped(boolean p0);
    
    void setPostActionId(String p0);
    
    void setSeeAlso(List<String> p0);
    
    void setSiteName(String p0);
    
    void setTitle(String p0);
    
    void setType(String p0);
    
    void setUpdatedTime(Date p0);
    
    void setUrl(String p0);
    
    void setVideo(GraphObjectList<GraphObject> p0);
}
