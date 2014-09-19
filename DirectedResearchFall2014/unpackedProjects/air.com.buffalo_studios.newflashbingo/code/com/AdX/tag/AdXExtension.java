package com.AdX.tag;

import com.adobe.fre.*;
import android.util.*;

public class AdXExtension implements FREExtension
{
    @Override
    public FREContext createContext(final String s) {
        Log.i("AdXExtension", "createContext");
        return new AdXExtensionContext();
    }
    
    @Override
    public void dispose() {
        Log.i("AdXExtension", "dispose");
    }
    
    @Override
    public void initialize() {
        Log.i("AdXExtension", "initialize");
    }
}
