package com.fuse.ane.AirFuseAPI.functions;

import com.adobe.fre.*;
import com.fusepowered.fuseactivities.*;
import com.fusepowered.fuseapi.*;
import com.fusepowered.activities.*;

public class MoreGamesFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FuseAPI.displayMoreGames(new FuseApiMoregamesBrowser());
        return null;
    }
}
