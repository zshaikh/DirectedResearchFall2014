package com.AdX.tag;

import com.adobe.fre.*;
import android.util.*;

public class AdXSendAppOpenFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        Log.i("AdXSendAppOpenFunction", "call");
        final AdXExtensionContext adXExtensionContext = (AdXExtensionContext)freContext;
        try {
            AdXConnect.getAdXConnectInstance(adXExtensionContext.getActivity().getApplicationContext(), false, 2);
            return null;
        }
        catch (Exception ex) {
            Log.i("AdXFunction", ex.getMessage());
            return null;
        }
    }
}
