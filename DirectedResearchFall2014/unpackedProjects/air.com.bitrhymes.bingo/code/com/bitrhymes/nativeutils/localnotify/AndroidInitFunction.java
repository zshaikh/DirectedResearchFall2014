package com.bitrhymes.nativeutils.localnotify;

import com.adobe.fre.*;
import com.bitrhymes.nativeutils.*;

public class AndroidInitFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final NativeUtilsContext nativeUtilsContext = (NativeUtilsContext)freContext;
        nativeUtilsContext.activity = nativeUtilsContext.getActivity();
        return null;
    }
}
