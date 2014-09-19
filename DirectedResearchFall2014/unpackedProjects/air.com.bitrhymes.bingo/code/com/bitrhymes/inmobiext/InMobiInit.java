package com.bitrhymes.inmobiext;

import com.adobe.fre.*;
import android.util.*;
import com.inmobi.commons.*;
import com.inmobi.adtracker.androidsdk.*;

public class InMobiInit implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            Log.d("InMobiInit", "app download reporting to In Mobi");
            IMCommonUtil.setLogLevel(IMCommonUtil.LOG_LEVEL.DEBUG);
            IMAdTracker.getInstance().init(freContext.getActivity().getApplicationContext(), array[0].getAsString());
            IMAdTracker.getInstance().reportAppDownloadGoal();
            Log.d("InMobiInit", "app download reported to In Mobi");
            return null;
        }
        catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
