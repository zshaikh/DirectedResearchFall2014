package com.vungle.sdk;

import android.util.*;
import java.util.zip.*;
import java.util.*;
import java.io.*;

abstract class p
{
    public static boolean a(final String pathname, final String parent) {
        final File file = new File(parent);
        if (!file.exists()) {
            file.mkdirs();
            if (!file.isDirectory()) {
                return false;
            }
        }
        if (!file.isDirectory()) {
            return false;
        }
        while (true) {
            while (true) {
                InputStream inputStream;
                FileOutputStream fileOutputStream;
                try {
                    final File file2 = new File(pathname);
                    if (!file2.exists()) {
                        Log.e("unzipInto", "Provided zip-file does not exist.");
                        return false;
                    }
                    final ZipFile zipFile = new ZipFile(file2);
                    final Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    ZipEntry entry = null;
                    Label_0143: {
                        while (entries.hasMoreElements()) {
                            entry = (ZipEntry)entries.nextElement();
                            if (!entry.isDirectory()) {
                                break Label_0143;
                            }
                            final File file3 = new File(parent, entry.getName());
                            file3.mkdirs();
                            if (!file3.isDirectory()) {
                                return false;
                            }
                        }
                        break;
                    }
                    inputStream = zipFile.getInputStream(entry);
                    fileOutputStream = new FileOutputStream(new File(parent, entry.getName()));
                    final byte[] array = new byte[2048];
                    while (true) {
                        final int read = inputStream.read(array, 0, 2048);
                        if (read < 0) {
                            break;
                        }
                        fileOutputStream.write(array, 0, read);
                    }
                }
                catch (IOException ex) {
                    Log.e("unzipInto", "IO Exception during decompression: " + ex.getMessage());
                    return false;
                }
                inputStream.close();
                fileOutputStream.close();
                continue;
            }
        }
        return true;
    }
}
