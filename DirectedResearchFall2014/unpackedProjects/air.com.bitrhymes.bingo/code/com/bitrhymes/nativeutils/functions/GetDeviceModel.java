package com.bitrhymes.nativeutils.functions;

import android.os.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetDeviceModel implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final String model = Build.MODEL;
        try {
            if (model.length() != 0 && model != null) {
                return FREObject.newObject(model);
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
