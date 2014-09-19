package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import com.bitrhymes.nativeutils.utils.*;

public class CanOpenURL implements FREFunction
{
    private static final String FACEBOOK_PACKAGE_NAME = "com.facebook.katana";
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            freContext.getActivity().getPackageManager().getApplicationInfo("com.facebook.katana", 0);
            return FREObject.newObject(true);
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
