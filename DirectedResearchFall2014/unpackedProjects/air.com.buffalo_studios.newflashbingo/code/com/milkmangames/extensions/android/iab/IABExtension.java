package com.milkmangames.extensions.android.iab;

import com.adobe.fre.*;

public class IABExtension implements FREExtension
{
    private static a a;
    
    public static void main(final String[] array) {
    }
    
    @Override
    public FREContext createContext(final String s) {
        return IABExtension.a = new a();
    }
    
    @Override
    public void dispose() {
        if (IABExtension.a != null) {
            IABExtension.a.b();
        }
    }
    
    @Override
    public void initialize() {
    }
}
