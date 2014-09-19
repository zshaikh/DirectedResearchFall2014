package com.fusepowered.m2.m2l;

import android.content.*;
import java.security.*;

public class Utils
{
    public static boolean deviceCanHandleIntent(final Context context, final Intent intent) {
        return context.getPackageManager().queryIntentActivities(intent, 0).size() > 0;
    }
    
    public static String sha1(final String s) {
        try {
            final MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(s.getBytes());
            final byte[] digest = instance.digest();
            final StringBuffer sb = new StringBuffer();
            for (int i = 0; i < digest.length; ++i) {
                sb.append(Integer.toHexString(0x100 | (0xFF & digest[i])).substring(1));
            }
            return sb.toString();
        }
        catch (NoSuchAlgorithmException ex) {
            return "";
        }
        catch (NullPointerException ex2) {
            return "";
        }
    }
}
