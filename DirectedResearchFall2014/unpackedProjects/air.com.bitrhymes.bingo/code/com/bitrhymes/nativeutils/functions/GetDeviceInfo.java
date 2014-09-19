package com.bitrhymes.nativeutils.functions;

import android.os.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetDeviceInfo implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final String device = Build.DEVICE;
        try {
            return FREObject.newObject(device);
        }
        catch (FREWrongThreadException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
