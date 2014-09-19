package com.bitrhymes.nativeutils.functions;

import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetReferrerString implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String fromFile = Utils.readFromFile(Utils.REFERRER_STRING_PATH, freContext.getActivity().getApplicationContext());
            if (fromFile.length() != 0 && fromFile != null) {
                return FREObject.newObject(fromFile);
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
