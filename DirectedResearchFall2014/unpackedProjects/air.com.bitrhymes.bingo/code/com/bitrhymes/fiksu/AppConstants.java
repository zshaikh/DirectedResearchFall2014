package com.bitrhymes.fiksu;

import android.content.*;
import android.util.*;
import java.io.*;

public class AppConstants
{
    public static final String ERROR_EVENT = "ERROR_EVENT";
    public static String REFERRER_STRING_PATH;
    
    static {
        AppConstants.REFERRER_STRING_PATH = "bingo_fiksu_config.txt";
    }
    
    public static String getExceptionStackTraceAsString(final Exception ex) {
        final StringWriter out = new StringWriter();
        ex.printStackTrace(new PrintWriter(out));
        return out.toString();
    }
    
    public static void writeToFile(final String str, final Context context, final String s) {
        try {
            context.deleteFile(s);
            final OutputStreamWriter outputStreamWriter = new OutputStreamWriter(context.openFileOutput(s, 0));
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        }
        catch (IOException ex) {
            Log.e("Exception", "File write failed: " + ex.toString());
        }
    }
}
