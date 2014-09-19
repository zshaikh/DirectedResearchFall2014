package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;

public class GetAppleUUIDForVender implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            return FREObject.newObject("");
        }
        catch (FREWrongThreadException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
