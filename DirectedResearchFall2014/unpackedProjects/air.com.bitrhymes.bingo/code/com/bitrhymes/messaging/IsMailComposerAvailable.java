package com.bitrhymes.messaging;

import com.adobe.fre.*;
import android.util.*;

public class IsMailComposerAvailable implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            return FREObject.newObject(true);
        }
        catch (Exception ex) {
            Log.e("AIR_AndroidDialog", ex.getMessage());
            return null;
        }
    }
}
