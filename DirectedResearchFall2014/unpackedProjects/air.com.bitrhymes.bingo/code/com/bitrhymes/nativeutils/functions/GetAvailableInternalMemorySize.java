package com.bitrhymes.nativeutils.functions;

import android.os.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetAvailableInternalMemorySize implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            final String formatSize = Utils.formatSize(statFs.getBlockSize() * statFs.getAvailableBlocks());
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
