package com.fuse.ane.AirFuseAPI.functions;

import com.fusepowered.fuseapi.*;
import com.adobe.fre.*;

public class GetGameConfigurationValueFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        if (array.length == 0) {
            return null;
        }
        try {
            String gameConfigurationValue = FuseAPI.getGameConfigurationValue(array[0].getAsString());
            if (gameConfigurationValue == null) {
                gameConfigurationValue = "";
            }
            return FREObject.newObject(gameConfigurationValue);
        }
        catch (IllegalStateException ex) {
            ex.printStackTrace();
        }
        catch (FRETypeMismatchException ex2) {
            ex2.printStackTrace();
            goto Label_0044;
        }
        catch (FREInvalidObjectException ex3) {
            ex3.printStackTrace();
            goto Label_0044;
        }
        catch (FREWrongThreadException ex4) {
            ex4.printStackTrace();
            goto Label_0044;
        }
    }
}
