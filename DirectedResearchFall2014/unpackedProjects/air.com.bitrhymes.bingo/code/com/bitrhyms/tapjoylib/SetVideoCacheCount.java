package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;
import android.app.*;
import android.content.*;
import com.tapjoy.*;
import android.util.*;

public class SetVideoCacheCount implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final AndroidExtensionContext androidExtensionContext = (AndroidExtensionContext)freContext;
        AndroidExtensionContext.setFREContext(freContext);
        new AlertDialog$Builder((Context)androidExtensionContext.activity);
        try {
            TapjoyLog.enableLogging(true);
            if (TapjoyConnect.getTapjoyConnectInstance() != null) {
                TapjoyConnect.getTapjoyConnectInstance().setVideoCacheCount(array[0].getAsInt());
            }
            return null;
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", ex.toString());
            Log.e("AIR_AndroidDialog", ex.getMessage());
            return null;
        }
    }
}
