package com.AdX.tag;

import com.adobe.fre.*;
import android.util.*;

public class AdXGetReferralFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        Log.i("AdXGetReferralFunction", "call");
        final AdXExtensionContext adXExtensionContext = (AdXExtensionContext)freContext;
        try {
            return FREObject.newObject(AdXConnect.getAdXReferral(adXExtensionContext.getActivity().getApplicationContext(), 0));
        }
        catch (Exception ex) {
            Log.i("AdXFunction", ex.getMessage());
            return null;
        }
    }
}
