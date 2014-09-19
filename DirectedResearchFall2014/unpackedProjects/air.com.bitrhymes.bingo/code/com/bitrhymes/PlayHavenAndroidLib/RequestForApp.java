package com.bitrhymes.PlayHavenAndroidLib;

import com.adobe.fre.*;
import android.util.*;
import com.playhaven.src.common.*;
import com.playhaven.src.publishersdk.open.*;
import v2.com.playhaven.listeners.*;
import v2.com.playhaven.requests.open.*;
import v2.com.playhaven.model.*;

public class RequestForApp implements FREFunction
{
    FREContext _context;
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        Log.i("PlayhavenEXt", "RequestForApp");
        this._context = context;
        try {
            PHConfig.token = array[0].getAsString();
            PHConfig.secret = array[1].getAsString();
            final PHPublisherOpenRequest phPublisherOpenRequest = new PHPublisherOpenRequest(context.getActivity().getApplicationContext());
            phPublisherOpenRequest.setOpenRequestListener(new PHOpenRequestListener() {
                @Override
                public void onOpenFailed(final PHOpenRequest phOpenRequest, final PHError phError) {
                    Log.e("AIR_AndroidDialog", " onOpenFailed ");
                    if (RequestForApp.this._context != null) {
                        RequestForApp.this._context.dispatchStatusEventAsync("PH_REQUEST_APP_EVENT", "0");
                    }
                }
                
                @Override
                public void onOpenSuccessful(final PHOpenRequest phOpenRequest) {
                    Log.e("AIR_AndroidDialog", " onOpenSuccessful ");
                    if (RequestForApp.this._context != null) {
                        RequestForApp.this._context.dispatchStatusEventAsync("PH_REQUEST_APP_EVENT", "1");
                    }
                }
            });
            phPublisherOpenRequest.send();
            return null;
        }
        catch (Exception ex) {
            this._context.dispatchStatusEventAsync("ERROR_EVENT", "error : " + ex.toString());
            Log.e("AIR_AndroidDialog", ex.getMessage());
            return null;
        }
    }
}
