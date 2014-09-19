package com.bitrhymes.PlayHavenAndroidLib;

import com.adobe.fre.*;
import android.util.*;
import com.playhaven.src.common.*;
import com.playhaven.src.publishersdk.content.*;
import v2.com.playhaven.listeners.*;
import v2.com.playhaven.requests.content.*;
import v2.com.playhaven.model.*;

public class DisplayFullScreenAd implements FREFunction
{
    private FREContext _context;
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        Log.i("PlayhavenEXt", "DisplayFullScreenAd");
        this._context = context;
        try {
            Log.i("PlayhavenEXt", "DisplayFullScreenAd : suc");
            PHConfig.token = array[0].getAsString();
            PHConfig.secret = array[1].getAsString();
            final PHPublisherContentRequest phPublisherContentRequest = new PHPublisherContentRequest(context.getActivity(), array[2].getAsString());
            phPublisherContentRequest.setOnContentListener(new PHContentRequestListener() {
                @Override
                public void onDismissedContent(final PHContentRequest phContentRequest, final PHContentRequest.PHDismissType phDismissType) {
                    Log.i("PlayhavenEXt", "onDismissedContent ");
                }
                
                @Override
                public void onDisplayedContent(final PHContentRequest phContentRequest, final PHContent phContent) {
                    Log.i("PlayhavenEXt", "onDisplayedContent ");
                }
                
                @Override
                public void onFailedToDisplayContent(final PHContentRequest phContentRequest, final PHError phError) {
                    Log.i("PlayhavenEXt", "onFailedToDisplayContent ");
                    if (DisplayFullScreenAd.this._context != null) {
                        DisplayFullScreenAd.this._context.dispatchStatusEventAsync("PH_FULLSCREEN_AD_EVENT", "0");
                    }
                }
                
                @Override
                public void onNoContent(final PHContentRequest phContentRequest) {
                    Log.i("PlayhavenEXt", "onNoContent ");
                    if (DisplayFullScreenAd.this._context != null) {
                        DisplayFullScreenAd.this._context.dispatchStatusEventAsync("PH_FULLSCREEN_AD_EVENT", "0");
                    }
                }
                
                @Override
                public void onReceivedContent(final PHContentRequest phContentRequest, final PHContent phContent) {
                    if (DisplayFullScreenAd.this._context != null) {
                        DisplayFullScreenAd.this._context.dispatchStatusEventAsync("PH_FULLSCREEN_AD_EVENT", "1");
                    }
                    Log.i("PlayhavenEXt", "onReceivedContent ");
                }
                
                @Override
                public void onSentContentRequest(final PHContentRequest phContentRequest) {
                    Log.i("PlayhavenEXt", "onSentContentRequest ");
                }
                
                @Override
                public void onWillDisplayContent(final PHContentRequest phContentRequest, final PHContent phContent) {
                    Log.i("PlayhavenEXt", "onWillDisplayContent ");
                }
            });
            phPublisherContentRequest.send();
            return null;
        }
        catch (Exception ex) {
            Log.i("PlayhavenEXt", "DisplayFullScreenAd : failed");
            this._context.dispatchStatusEventAsync("ERROR_EVENT", "error : " + ex.toString());
            Log.e("ERROR_EVENT", "failed : " + ex.getMessage());
            return null;
        }
    }
}
