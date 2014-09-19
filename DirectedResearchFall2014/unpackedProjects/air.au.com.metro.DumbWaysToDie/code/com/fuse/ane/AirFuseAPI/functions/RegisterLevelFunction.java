package com.fuse.ane.AirFuseAPI.functions;

import com.fusepowered.fuseapi.*;
import com.fuse.ane.AirFuseAPI.*;
import com.adobe.fre.*;

public class RegisterLevelFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            FuseAPI.registerLevel(array[0].getAsInt());
            return null;
        }
        catch (IllegalStateException ex) {
            AirFuseAPIExtension.log("RegisterLevel Illegal State");
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            AirFuseAPIExtension.log("RegisterLevel Type Mismatch");
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            AirFuseAPIExtension.log("RegisterLevel Invalid Object");
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            AirFuseAPIExtension.log("RegisterLevel Wrong Thread");
            ex4.printStackTrace();
            return null;
        }
    }
}
