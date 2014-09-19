package com.fuse.ane.AirFuseAPI.functions;

import com.adobe.fre.*;
import com.fusepowered.fuseapi.*;

public class SuspendSessionFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FuseAPI.suspendSession();
        return null;
    }
}
