package com.fusepowered.m2.m2l.util;

import java.io.*;

public class Streams
{
    public static void closeStream(final Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        }
        catch (IOException ex) {}
    }
    
    public static void copyContent(final InputStream inputStream, final OutputStream outputStream) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        final byte[] array = new byte[65536];
        while (true) {
            final int read = inputStream.read(array);
            if (read == -1) {
                break;
            }
            outputStream.write(array, 0, read);
        }
    }
    
    public static void copyContent(final InputStream inputStream, final OutputStream outputStream, final long lng) throws IOException {
        if (inputStream == null || outputStream == null) {
            throw new IOException("Unable to copy from or to a null stream.");
        }
        final byte[] array = new byte[65536];
        long lng2 = 0L;
        while (true) {
            final int read = inputStream.read(array);
            if (read == -1) {
                return;
            }
            lng2 += read;
            if (lng2 >= lng) {
                throw new IOException("Error copying content: attempted to copy " + lng2 + " bytes, with " + lng + " maximum.");
            }
            outputStream.write(array, 0, read);
        }
    }
}
