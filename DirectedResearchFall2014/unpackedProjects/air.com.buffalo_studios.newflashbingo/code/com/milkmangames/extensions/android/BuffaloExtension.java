package com.milkmangames.extensions.android;

import com.adobe.fre.*;
import android.util.*;

public class BuffaloExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        Log.d("[BUExtension]", "CreateContext");
        return BuffaloExtensionContext.getInstance(true);
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
