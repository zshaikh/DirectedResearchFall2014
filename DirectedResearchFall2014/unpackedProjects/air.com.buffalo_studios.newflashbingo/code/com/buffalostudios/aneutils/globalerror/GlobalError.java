package com.buffalostudios.aneutils.globalerror;

import android.os.*;
import com.buffalostudios.aneutils.*;
import com.adobe.fre.*;

public class GlobalError
{
    private static void showErrorDialog(final Thread thread, final Throwable t) {
        final StackTraceElement[] stackTrace = t.getStackTrace();
        final StringBuffer sb = new StringBuffer(t.toString());
        sb.append("\n\n");
        sb.append("--------- Stack trace ---------\n\n");
        for (int i = 0; i < stackTrace.length; ++i) {
            sb.append("    ");
            sb.append(stackTrace[i].toString());
            sb.append("\n");
        }
        sb.append("-------------------------------\n\n");
        sb.append("--------- Cause ---------\n\n");
        final Throwable cause = t.getCause();
        if (cause != null) {
            sb.append(cause.toString());
            sb.append("\n\n");
            final StackTraceElement[] stackTrace2 = cause.getStackTrace();
            for (int j = 0; j < stackTrace2.length; ++j) {
                sb.append("    ");
                sb.append(stackTrace2[j].toString());
                sb.append("\n");
            }
        }
        sb.append("-------------------------------\n\n");
        sb.append("--------- Device ---------\n\n");
        sb.append("Brand: ");
        sb.append(Build.BRAND);
        sb.append("\n");
        sb.append("Device: ");
        sb.append(Build.DEVICE);
        sb.append("\n");
        sb.append("Model: ");
        sb.append(Build.MODEL);
        sb.append("\n");
        sb.append("Id: ");
        sb.append(Build.ID);
        sb.append("\n");
        sb.append("Product: ");
        sb.append(Build.PRODUCT);
        sb.append("\n");
        sb.append("-------------------------------\n\n");
        sb.append("--------- Firmware ---------\n\n");
        sb.append("SDK: ");
        sb.append(Build$VERSION.SDK_INT);
        sb.append("\n");
        sb.append("Release: ");
        sb.append(Build$VERSION.RELEASE);
        sb.append("\n");
        sb.append("Incremental: ");
        sb.append(Build$VERSION.INCREMENTAL);
        sb.append("\n");
        sb.append("-------------------------------\n\n");
        GlobalErrorActivity.start(ANEContext.getFREContext().getActivity(), sb.toString());
        System.exit(0);
    }
    
    public static class Init implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)new Thread.UncaughtExceptionHandler() {
                @Override
                public void uncaughtException(final Thread thread, final Throwable t) {
                    showErrorDialog(thread, t);
                }
            });
            return null;
        }
    }
}
