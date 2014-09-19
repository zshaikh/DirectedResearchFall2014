package com.bitrhymes.nativeutils.functions;

import android.app.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetAvailableRAMSize implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            freContext.getActivity();
            final ActivityManager activityManager = (ActivityManager)freContext.getActivity().getSystemService("activity");
            final ActivityManager$MemoryInfo activityManager$MemoryInfo = new ActivityManager$MemoryInfo();
            activityManager.getMemoryInfo(activityManager$MemoryInfo);
            final String formatSize = Utils.formatSize(activityManager$MemoryInfo.availMem);
            if (formatSize.length() != 0 && formatSize != null) {
                return FREObject.newObject(formatSize);
            }
            return FREObject.newObject("");
        }
        catch (FREWrongThreadException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
