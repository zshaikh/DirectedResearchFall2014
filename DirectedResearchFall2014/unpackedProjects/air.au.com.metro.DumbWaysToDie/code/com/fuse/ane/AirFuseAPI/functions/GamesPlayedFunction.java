package com.fuse.ane.AirFuseAPI.functions;

import com.fusepowered.fuseapi.*;
import com.adobe.fre.*;

public class GamesPlayedFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final int gamesPlayed = FuseAPI.gamesPlayed();
        try {
            return FREObject.newObject(gamesPlayed);
        }
        catch (FREWrongThreadException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
