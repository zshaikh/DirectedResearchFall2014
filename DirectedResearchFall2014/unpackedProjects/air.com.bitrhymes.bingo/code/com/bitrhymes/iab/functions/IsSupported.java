package com.bitrhymes.iab.functions;

import com.adobe.fre.*;
import android.util.*;
import android.content.*;
import android.app.*;

public class IsSupported implements FREFunction
{
    public static String TAG;
    
    static {
        IsSupported.TAG = IsSupported.class.getSimpleName();
    }
    
    @Override
    public FREObject call(final FREContext freContextObj, final FREObject[] array) {
        Log.i(IsSupported.TAG, "**IsSupportedFunction**");
        Utils.setFREContextObj(freContextObj);
        final Activity activity = freContextObj.getActivity();
        final Intent intent = new Intent();
        intent.setClassName(activity.getApplicationContext(), GoogleIABV3Activity.class.getCanonicalName());
        intent.putExtra("method", "CALL_IS_SUPPORTED");
        activity.startActivity(intent);
        return null;
    }
}
