package com.adobe.air;

import android.util.*;
import android.content.*;

class AndroidEncryptedLocalStore
{
    private static final String LOG_TAG = "AndroidELS -------";
    
    public byte[] getItem(final String s, final String s2) throws OutOfMemoryError {
        final String string = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).getString(s2, (String)null);
        if (string != null) {
            return Base64.decode(string, 0);
        }
        return null;
    }
    
    public boolean removeItem(final String s, final String s2) {
        final SharedPreferences$Editor edit = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        edit.remove(s2);
        return edit.commit();
    }
    
    public boolean reset(final String s) {
        final SharedPreferences$Editor edit = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        edit.clear();
        return edit.commit();
    }
    
    public boolean setItem(final String s, final String s2, final byte[] array) throws OutOfMemoryError {
        final String encodeToString = Base64.encodeToString(array, 0);
        final SharedPreferences$Editor edit = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        edit.putString(s2, encodeToString);
        return edit.commit();
    }
}
