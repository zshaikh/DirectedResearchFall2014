package com.fuse.ane.AirFuseAPI.functions;

import com.adobe.fre.*;
import com.fuse.ane.callback.*;
import com.fusepowered.fuseapi.*;
import com.fusepowered.util.*;

public class CheckAdAvailableFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FuseAPI.checkAdAvailable(new AdCallback(freContext.getActivity()));
        return null;
    }
}
