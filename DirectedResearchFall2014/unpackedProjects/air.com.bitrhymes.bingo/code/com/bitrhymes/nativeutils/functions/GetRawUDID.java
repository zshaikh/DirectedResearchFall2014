package com.bitrhymes.nativeutils.functions;

import android.content.*;
import com.adobe.fre.*;
import android.provider.*;
import com.bitrhymes.nativeutils.utils.*;

public class GetRawUDID implements FREFunction
{
    public static final String PREFS_NAME = "udid_prefs";
    public static final String PREF_KEY = "udid";
    
    private void storeUDID(final Context context, final String s) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("udid_prefs", 0).edit();
        edit.putString("udid", s);
        edit.commit();
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            String s = freContext.getActivity().getSharedPreferences("udid_prefs", 0).getString("udid", (String)null);
            if (s == null) {
                s = Settings$Secure.getString(freContext.getActivity().getContentResolver(), "android_id");
                if (s == null) {
                    s = "";
                }
                this.storeUDID((Context)freContext.getActivity(), s);
            }
            return FREObject.newObject(s);
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
