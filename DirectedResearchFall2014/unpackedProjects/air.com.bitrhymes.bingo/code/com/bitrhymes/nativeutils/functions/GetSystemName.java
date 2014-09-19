package com.bitrhymes.nativeutils.functions;

import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetSystemName implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            if ("Android OS".length() != 0 && "Android OS" != null) {
                return FREObject.newObject("Android OS");
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
