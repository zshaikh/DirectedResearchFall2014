package com.AdX.tag;

import com.adobe.fre.*;
import android.util.*;

public class AdXSendEventFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        Log.i("AdXSendEventFunction", "call");
        final AdXExtensionContext adXExtensionContext = (AdXExtensionContext)freContext;
        try {
            AdXConnect.getAdXConnectEventInstance(adXExtensionContext.getActivity().getApplicationContext(), array[0].getAsString(), array[1].getAsString(), array[2].getAsString());
            return null;
        }
        catch (Exception ex) {
            Log.i("AdXFunction", ex.getMessage());
            return null;
        }
    }
}
