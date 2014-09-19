package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import android.content.*;
import android.util.*;
import org.json.*;
import com.bitrhymes.nativeutils.utils.*;
import android.accounts.*;

public class GetGoogleAccountID implements FREFunction
{
    private static final String TAG;
    
    static {
        TAG = GetGoogleAccountID.class.getSimpleName();
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            FREObject object = null;
            while (true) {
                int n;
                try {
                    object = FREObject.newObject("");
                    final Account[] accounts = AccountManager.get((Context)freContext.getActivity()).getAccounts();
                    final JSONArray jsonArray = new JSONArray();
                    final int length = accounts.length;
                    n = 0;
                    if (n >= length) {
                        String string;
                        if (jsonArray.length() > 0) {
                            string = jsonArray.toString();
                        }
                        else {
                            string = "";
                        }
                        Log.d(GetGoogleAccountID.TAG, string);
                        return FREObject.newObject(string);
                    }
                    final Account account = accounts[n];
                    if (account.type.contains("google") || account.type.contains("facebook") || account.type.contains("twitter")) {
                        final JSONObject jsonObject = new JSONObject();
                        jsonObject.put("type", (Object)account.type);
                        jsonObject.put("name", (Object)account.name);
                        jsonArray.put((Object)jsonObject);
                    }
                }
                catch (Exception ex) {
                    freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
                    return object;
                }
                ++n;
                continue;
            }
        }
    }
}
