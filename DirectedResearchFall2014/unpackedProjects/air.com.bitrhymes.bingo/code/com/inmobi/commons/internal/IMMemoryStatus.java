package com.inmobi.commons.internal;

import android.os.*;

public class IMMemoryStatus
{
    private static final int a = -1;
    
    public static boolean externalMemoryAvailable() {
        synchronized (IMMemoryStatus.class) {
            return Environment.getExternalStorageState().equals("mounted");
        }
    }
    
    public static String formatSize(final long n) {
        // monitorenter(IMMemoryStatus.class)
        String string = null;
        Label_0012: {
            if (n != 0L) {
                while (true) {
                    Label_0108: {
                        if (n < 1024L) {
                            break Label_0108;
                        }
                        String str = " KB";
                        try {
                            long l = n / 1024L;
                            if (l >= 1024L) {
                                str = " MB";
                                l /= 1024L;
                            }
                            if (l >= 1024L) {
                                str = " GB";
                                l /= 1024L;
                            }
                            string = String.valueOf(l) + str;
                            break Label_0012;
                        }
                        finally {
                        }
                        // monitorexit(IMMemoryStatus.class)
                    }
                    long l = n;
                    String str = null;
                    continue;
                }
            }
            string = null;
        }
        // monitorexit(IMMemoryStatus.class)
        return string;
    }
    
    public static long getTotalExternalMemorySize() {
        synchronized (IMMemoryStatus.class) {
            try {
                long n;
                if (externalMemoryAvailable()) {
                    final StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                    n = statFs.getBlockSize() * statFs.getBlockCount();
                }
                else {
                    n = -1L;
                }
                return n;
            }
            catch (Exception ex) {
                return -1L;
            }
        }
    }
    
    public static long getTotalInternalMemorySize() {
        synchronized (IMMemoryStatus.class) {
            try {
                final StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                return statFs.getBlockSize() * statFs.getBlockCount();
            }
            catch (Exception ex) {
                return -1L;
            }
        }
    }
}
