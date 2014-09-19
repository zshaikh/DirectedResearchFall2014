package com.bitrhymes.PlayHavenAndroidLib;

import com.adobe.fre.*;
import android.util.*;
import com.playhaven.src.common.*;
import com.playhaven.src.publishersdk.content.*;
import org.json.*;

public class RequestContentPH implements FREFunction, Delegate
{
    FREContext context;
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        Log.i("PlayhavenEXt", "RequestContentPH");
        this.context = context;
        try {
            PHConfig.token = array[0].getAsString();
            PHConfig.secret = array[1].getAsString();
            new PHPublisherContentRequest(context.getActivity(), array[2].getAsString()).send();
            return null;
        }
        catch (Exception ex) {
            Log.i("PlayhavenEXt", "RequestContentPH : failed");
            Log.e("ERROR_EVENT", "failed : " + ex.getMessage());
            return null;
        }
    }
    
    @Override
    public void requestFailed(final PHAPIRequest phapiRequest, final Exception ex) {
        Log.i("PlayhavenEXt", "RequestContentPH : requestFailed");
        this.context.dispatchStatusEventAsync("PH_REQUEST_CONTENT_EVENT", "0");
    }
    
    @Override
    public void requestSucceeded(final PHAPIRequest phapiRequest, final JSONObject jsonObject) {
        try {
            Log.i("PlayhavenEXt", "RequestContentPH : requestSucceeded");
            this.context.dispatchStatusEventAsync("PH_REQUEST_CONTENT_EVENT", "1," + jsonObject.toString(2));
        }
        catch (JSONException ex) {
            ex.printStackTrace();
        }
    }
}
