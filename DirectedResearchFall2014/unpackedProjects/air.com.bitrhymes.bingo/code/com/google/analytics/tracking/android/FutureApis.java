package com.google.analytics.tracking.android;

import java.io.*;
import android.os.*;

class FutureApis
{
    static boolean setOwnerOnlyReadWrite(final String pathname) {
        if (version() < 9) {
            return false;
        }
        final File file = new File(pathname);
        file.setReadable(false, false);
        file.setWritable(false, false);
        file.setReadable(true, true);
        file.setWritable(true, true);
        return true;
    }
    
    public static int version() {
        try {
            return Integer.parseInt(Build$VERSION.SDK);
        }
        catch (NumberFormatException ex) {
            Log.e("Invalid version number: " + Build$VERSION.SDK);
            return 0;
        }
    }
}
