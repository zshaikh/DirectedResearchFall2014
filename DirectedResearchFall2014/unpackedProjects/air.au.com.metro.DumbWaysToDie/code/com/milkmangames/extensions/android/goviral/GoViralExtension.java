package com.milkmangames.extensions.android.goviral;

import com.adobe.fre.*;
import android.util.*;

public class GoViralExtension implements FREExtension
{
    public static void main(final String[] array) {
    }
    
    @Override
    public FREContext createContext(final String s) {
        Log.i("[GVExtension]", "try create context");
        return new b();
    }
    
    @Override
    public void dispose() {
    }
    
    @Override
    public void initialize() {
    }
}
