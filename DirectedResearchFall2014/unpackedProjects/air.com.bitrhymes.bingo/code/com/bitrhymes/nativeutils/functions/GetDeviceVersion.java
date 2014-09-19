package com.bitrhymes.nativeutils.functions;

import android.os.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetDeviceVersion implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final String release = Build$VERSION.RELEASE;
        try {
            if (release.length() != 0 && release != null) {
                return FREObject.newObject(release);
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
