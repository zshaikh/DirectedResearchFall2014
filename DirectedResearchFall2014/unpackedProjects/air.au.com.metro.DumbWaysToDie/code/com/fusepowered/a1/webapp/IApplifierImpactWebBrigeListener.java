package com.fusepowered.a1.webapp;

import org.json.*;

public interface IApplifierImpactWebBrigeListener
{
    void onCloseImpactView(JSONObject p0);
    
    void onOpenPlayStore(JSONObject p0);
    
    void onPauseVideo(JSONObject p0);
    
    void onPlayVideo(JSONObject p0);
    
    void onWebAppInitComplete(JSONObject p0);
}
