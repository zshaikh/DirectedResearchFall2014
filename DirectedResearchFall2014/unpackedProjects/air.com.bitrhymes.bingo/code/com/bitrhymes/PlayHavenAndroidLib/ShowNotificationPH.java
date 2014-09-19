package com.bitrhymes.PlayHavenAndroidLib;

import com.adobe.fre.*;
import android.util.*;
import com.playhaven.src.publishersdk.metadata.*;
import android.content.*;

public class ShowNotificationPH implements FREFunction
{
    FREContext context;
    
    @Override
    public FREObject call(final FREContext context, final FREObject[] array) {
        Log.i("PlayhavenEXt", "RequestForApp");
        this.context = context;
        try {
            Log.i("PlayhavenEXt", "RequestForApp : not fail ");
            new PHNotificationView((Context)this.context.getActivity(), array[0].getAsString()).refresh();
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            Log.i("PlayhavenEXt", "RequestForApp : fail ");
            this.context.dispatchStatusEventAsync("ERROR_EVENT", "error : " + ex.toString());
            return null;
        }
    }
}
