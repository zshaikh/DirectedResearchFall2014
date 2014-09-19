package com.bitrhymes.iab.functions;

import com.bitrhymes.iab.util.*;
import android.util.*;
import android.content.*;
import com.adobe.fre.*;
import android.app.*;

public class PurchaseItem implements FREFunction
{
    private static final String TAG;
    IabHelper mHelper;
    
    static {
        TAG = PurchaseItem.class.getSimpleName();
    }
    
    @Override
    public FREObject call(final FREContext freContextObj, final FREObject[] array) {
        Log.d(PurchaseItem.TAG, "Creating IAB helper.");
        try {
            final String asString = array[0].getAsString();
            final String asString2 = array[1].getAsString();
            Log.i(PurchaseItem.TAG, "quantity : " + array[2].getAsInt());
            Utils.setFREContextObj(freContextObj);
            final Activity activity = freContextObj.getActivity();
            final Intent intent = new Intent();
            intent.setClassName(activity.getApplicationContext(), GoogleIABV3Activity.class.getCanonicalName());
            intent.putExtra("method", "CALL_PURCHASE_ITEM");
            intent.putExtra("sku", asString);
            intent.putExtra("devPayload", asString2);
            activity.startActivity(intent);
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            ex4.printStackTrace();
            return null;
        }
    }
}
