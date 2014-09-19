package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import com.tapjoy.*;
import android.util.*;

public class ConnectTapjoy implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AndroidExtensionContext.setFREContext(freContext);
        try {
            TapjoyLog.enableLogging(true);
            TapjoyConnect.requestTapjoyConnect(freContext.getActivity().getApplicationContext(), array[0].getAsString(), array[1].getAsString());
            return null;
        }
        catch (Exception ex) {
            Log.e("ERROR_EVENT", ex.getMessage());
            return null;
        }
    }
}
