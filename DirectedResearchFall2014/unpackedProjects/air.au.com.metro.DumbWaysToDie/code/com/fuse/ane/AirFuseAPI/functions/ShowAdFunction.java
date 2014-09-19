package com.fuse.ane.AirFuseAPI.functions;

import com.adobe.fre.*;
import com.fusepowered.fuseactivities.*;
import com.fuse.ane.callback.*;
import com.fusepowered.fuseapi.*;
import com.fusepowered.activities.*;
import com.fusepowered.util.*;

public class ShowAdFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FuseAPI.displayAd(new FuseApiAdBrowser(), new AdCallback(freContext.getActivity()));
        return null;
    }
}
