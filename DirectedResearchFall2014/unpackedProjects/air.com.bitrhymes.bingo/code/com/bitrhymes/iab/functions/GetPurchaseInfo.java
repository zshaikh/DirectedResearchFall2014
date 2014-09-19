package com.bitrhymes.iab.functions;

import com.bitrhymes.iab.util.*;
import com.adobe.fre.*;
import android.util.*;
import android.content.*;
import android.app.*;

public class GetPurchaseInfo implements FREFunction
{
    private static final String TAG;
    IabHelper mHelper;
    
    static {
        TAG = GetPurchaseInfo.class.getSimpleName();
    }
    
    @Override
    public FREObject call(final FREContext freContextObj, final FREObject[] array) {
        Log.i(GetPurchaseInfo.TAG, "***GetPurchaseInfo****");
        Utils.setFREContextObj(freContextObj);
        final Activity activity = freContextObj.getActivity();
        final Intent intent = new Intent();
        intent.setClassName(activity.getApplicationContext(), GoogleIABV3Activity.class.getCanonicalName());
        intent.putExtra("method", "CALL_GET_PURCHASE_INFO");
        activity.startActivity(intent);
        return null;
    }
}
