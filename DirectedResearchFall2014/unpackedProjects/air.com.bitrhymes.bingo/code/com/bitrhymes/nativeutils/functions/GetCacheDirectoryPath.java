package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import com.bitrhymes.nativeutils.utils.*;
import java.io.*;

public class GetCacheDirectoryPath implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FREObject freObject;
        try {
            File file = freContext.getActivity().getCacheDir();
            if (file == null) {
                file = freContext.getActivity().getFilesDir();
            }
            final String absolutePath = file.getAbsolutePath();
            if (file.length() != 0L && file != null) {
                freObject = FREObject.newObject(absolutePath);
            }
            else {
                freObject = FREObject.newObject(absolutePath);
            }
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        return freObject;
    }
}
