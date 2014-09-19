package com.bitrhyms.tapjoylib;

import com.adobe.fre.*;

public class AndroidInitFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final AndroidExtensionContext androidExtensionContext = (AndroidExtensionContext)freContext;
        AndroidExtensionContext.setFREContext(freContext);
        androidExtensionContext.activity = androidExtensionContext.getActivity();
        return null;
    }
}
