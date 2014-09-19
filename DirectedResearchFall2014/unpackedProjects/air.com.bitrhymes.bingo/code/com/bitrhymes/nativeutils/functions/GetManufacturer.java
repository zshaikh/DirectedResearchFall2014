package com.bitrhymes.nativeutils.functions;

import android.os.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetManufacturer implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final String manufacturer = Build.MANUFACTURER;
        try {
            if (manufacturer.length() != 0 && manufacturer != null) {
                return FREObject.newObject(manufacturer);
            }
            return FREObject.newObject("");
        }
        catch (FREWrongThreadException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
