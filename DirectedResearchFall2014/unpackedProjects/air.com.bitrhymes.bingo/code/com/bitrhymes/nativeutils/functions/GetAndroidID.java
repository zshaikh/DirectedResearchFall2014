package com.bitrhymes.nativeutils.functions;

import android.content.*;
import com.adobe.fre.*;
import android.provider.*;
import java.security.*;
import java.math.*;
import java.util.*;
import com.bitrhymes.nativeutils.utils.*;

public class GetAndroidID implements FREFunction
{
    public static final String PREFS_NAME = "anroidid_prefs";
    public static final String PREF_KEY = "androidid";
    
    private void storeOpenUDID(final Context context, final String s) {
        final SharedPreferences$Editor edit = context.getSharedPreferences("anroidid_prefs", 0).edit();
        edit.putString("androidid", s);
        edit.commit();
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            String s = freContext.getActivity().getSharedPreferences("anroidid_prefs", 0).getString("androidid", (String)null);
            if (s == null || s.equals("9774d56d682e549c") || s.equals("357932001547705") || s.equals("88508850885050") || s.equals("357116042119126") || s.equals("0123456789abcde") || s.equals("A000002FCBAF13") || s.equals("352005048247251") || s.equals("99000027748054") || s.equals("4999010640000") || s.equals("A0000030FCB9DF") || s.length() < 5) {
                s = Settings$Secure.getString(freContext.getActivity().getContentResolver(), "android_id");
                if (s == null || s.equals("9774d56d682e549c") || s.equals("357932001547705") || s.equals("88508850885050") || s.equals("357116042119126") || s.equals("0123456789abcde") || s.equals("A000002FCBAF13") || s.equals("352005048247251") || s.equals("99000027748054") || s.equals("4999010640000") || s.equals("A0000030FCB9DF") || s.length() < 5) {
                    s = new BigInteger(64, new SecureRandom()).toString(16);
                }
                this.storeOpenUDID((Context)freContext.getActivity(), s);
            }
            return FREObject.newObject(s);
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
