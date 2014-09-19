package com.bitrhymes.inmobiext;

import com.adobe.fre.*;
import android.util.*;
import com.inmobi.commons.*;
import com.inmobi.adtracker.androidsdk.*;

public class ReportInMobiCustomGoal implements FREFunction
{
    private static final String TAG = "InMobiAdTracker";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            Log.i("InMobiAdTracker", " callig ReportInMobiCustomGoal ****** ");
            IMCommonUtil.setLogLevel(IMCommonUtil.LOG_LEVEL.DEBUG);
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            IMAdTracker.getInstance().init(freContext.getActivity().getApplicationContext(), asString);
            IMAdTracker.getInstance().reportCustomGoal(asString2);
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
