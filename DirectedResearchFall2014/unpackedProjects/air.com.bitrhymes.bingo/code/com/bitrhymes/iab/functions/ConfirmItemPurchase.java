package com.bitrhymes.iab.functions;

import com.bitrhymes.iab.util.*;
import android.content.*;
import com.adobe.fre.*;
import android.app.*;

public class ConfirmItemPurchase implements FREFunction
{
    IabHelper mHelper;
    
    @Override
    public FREObject call(final FREContext freContextObj, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            Utils.setFREContextObj(freContextObj);
            final Activity activity = freContextObj.getActivity();
            final Intent intent = new Intent();
            intent.setClassName(activity.getApplicationContext(), GoogleIABV3Activity.class.getCanonicalName());
            intent.putExtra("method", "CALL_CONFIRM_PURCHASE_ITEM");
            intent.putExtra("sku", asString);
            activity.startActivity(intent);
            return null;
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
            freContextObj.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
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
