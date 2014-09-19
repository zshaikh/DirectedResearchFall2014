package com.fuse.ane.AirFuseAPI.functions;

import com.fuse.ane.AirFuseAPI.*;
import com.fusepowered.fuseapi.*;
import com.adobe.fre.*;

public class RegisterCurrencyFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        AirFuseAPIExtension.log("Registering Currency");
        try {
            FuseAPI.registerCurrency(array[0].getAsInt(), array[1].getAsInt());
            return null;
        }
        catch (IllegalStateException ex) {
            AirFuseAPIExtension.log("Registering Currency illegal state");
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            AirFuseAPIExtension.log("Registering Currency type mismatch");
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            AirFuseAPIExtension.log("Registering Currency invalid object");
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            AirFuseAPIExtension.log("Registering Currency thread exception");
            ex4.printStackTrace();
            return null;
        }
    }
}
