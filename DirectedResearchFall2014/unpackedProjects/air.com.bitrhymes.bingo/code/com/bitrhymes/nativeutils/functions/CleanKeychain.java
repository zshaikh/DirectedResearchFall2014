package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import com.bitrhymes.nativeutils.utils.*;

public class CleanKeychain implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            freContext.getActivity().getSharedPreferences("bitrhymes_openudid_prefs", 0).edit().remove("openudid").commit();
            return null;
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
