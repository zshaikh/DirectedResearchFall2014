package com.bitrhymes.nativeutils.functions;

import java.util.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetCountryCode implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final String country = Locale.getDefault().getCountry();
        try {
            if (country.length() != 0 && country != null) {
                return FREObject.newObject(country);
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
