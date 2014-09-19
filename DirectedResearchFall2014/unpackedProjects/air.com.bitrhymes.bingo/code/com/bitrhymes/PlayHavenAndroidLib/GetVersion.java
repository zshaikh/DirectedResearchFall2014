package com.bitrhymes.PlayHavenAndroidLib;

import com.adobe.fre.*;

public class GetVersion implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            return FREObject.newObject("1.0.2");
        }
        catch (FREWrongThreadException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
