package com.bitrhymes.nativeutils.functions;

import java.util.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetCountryName implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String displayCountry = Locale.getDefault().getDisplayCountry();
            if (displayCountry != null && displayCountry.length() != 0) {
                return FREObject.newObject(displayCountry);
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
