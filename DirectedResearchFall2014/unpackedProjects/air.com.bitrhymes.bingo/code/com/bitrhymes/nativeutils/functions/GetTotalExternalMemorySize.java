package com.bitrhymes.nativeutils.functions;

import com.bitrhymes.nativeutils.utils.*;
import android.os.*;
import com.adobe.fre.*;

public class GetTotalExternalMemorySize implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        String formatSize = "";
        try {
            if (Utils.externalMemoryAvailable()) {
                final StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                formatSize = Utils.formatSize(statFs.getBlockSize() * statFs.getBlockCount());
            }
            if (formatSize.length() != 0 && formatSize != null) {
                return FREObject.newObject(formatSize);
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
