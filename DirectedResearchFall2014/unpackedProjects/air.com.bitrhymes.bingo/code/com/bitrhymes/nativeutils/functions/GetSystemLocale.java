package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import java.util.*;
import com.bitrhymes.nativeutils.utils.*;

public class GetSystemLocale implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FREObject freObject;
        try {
            final String displayLanguage = Locale.getDefault().getDisplayLanguage();
            if (displayLanguage.length() != 0 && displayLanguage != null) {
                freObject = FREObject.newObject(displayLanguage);
            }
            else {
                freObject = FREObject.newObject("");
            }
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        return freObject;
    }
}
