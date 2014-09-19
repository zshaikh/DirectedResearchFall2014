package com.fuse.ane.AirFuseAPI.functions;

import com.adobe.fre.*;
import com.fusepowered.fuseapi.*;
import com.fusepowered.util.*;

public class ResumeSessionFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FuseAPI.resumeSession(null);
        return null;
    }
}
