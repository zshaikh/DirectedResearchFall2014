package com.fusepowered.m2.m2l.util;

import java.io.*;

public class Files
{
    public static File createDirectory(final String pathname) {
        if (pathname == null) {
            return null;
        }
        final File file = new File(pathname);
        if ((file.exists() && file.isDirectory()) || (file.mkdirs() && file.isDirectory())) {
            return file;
        }
        return null;
    }
    
    public static int intLength(final File file) {
        if (file == null) {
            return 0;
        }
        final long length = file.length();
        if (length < 2147483647L) {
            return (int)length;
        }
        return Integer.MAX_VALUE;
    }
}
