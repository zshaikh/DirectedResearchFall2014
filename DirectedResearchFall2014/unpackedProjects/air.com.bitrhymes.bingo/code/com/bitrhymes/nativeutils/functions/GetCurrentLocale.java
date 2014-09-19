package com.bitrhymes.nativeutils.functions;

import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetCurrentLocale implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final String language = freContext.getActivity().getResources().getConfiguration().locale.getLanguage();
        try {
            if (language.length() != 0 && language != null) {
                return FREObject.newObject(language);
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
