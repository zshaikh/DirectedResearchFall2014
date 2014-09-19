package com.flurry.android;

import java.io.*;

final class bc
{
    private static String d;
    
    static {
        bc.d = "FlurryAgent";
    }
    
    static boolean b(final File file) {
        if (file == null) {
            return false;
        }
        final File parentFile = file.getParentFile();
        if (!parentFile.mkdirs() && !parentFile.exists()) {
            db.d(bc.d, "Unable to create persistent dir: " + parentFile);
            return false;
        }
        return true;
    }
}
