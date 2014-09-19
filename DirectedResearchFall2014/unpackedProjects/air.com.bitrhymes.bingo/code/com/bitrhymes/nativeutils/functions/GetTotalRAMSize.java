package com.bitrhymes.nativeutils.functions;

import android.util.*;
import java.io.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetTotalRAMSize implements FREFunction
{
    private static final String TAG = "GetTotalRAMSize";
    
    private String readUsage() {
        try {
            final String line = new RandomAccessFile("/proc/meminfo", "r").readLine();
            Log.d("GetTotalRAMSize", line);
            return line;
        }
        catch (IOException ex) {
            ex.printStackTrace();
            return "";
        }
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String string = new StringBuilder().append(this.readUsage()).toString();
            if (string.length() != 0 && string != null) {
                return FREObject.newObject(string);
            }
            return FREObject.newObject("");
        }
        catch (FREWrongThreadException ex) {
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
