package com.fuse.ane.AirFuseAPI.functions;

import com.fusepowered.fuseapi.*;
import com.fuse.ane.AirFuseAPI.*;
import com.adobe.fre.*;

public class RegisterGenderFunction implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            FuseAPI.registerGender(array[0].getAsInt());
            return null;
        }
        catch (IllegalStateException ex) {
            AirFuseAPIExtension.log("ERROR Illegal State");
            ex.printStackTrace();
            return null;
        }
        catch (FRETypeMismatchException ex2) {
            AirFuseAPIExtension.log("ERROR ERROR ERROR Got a type wrong!");
            ex2.printStackTrace();
            return null;
        }
        catch (FREInvalidObjectException ex3) {
            AirFuseAPIExtension.log("ERROR Invalid Object");
            ex3.printStackTrace();
            return null;
        }
        catch (FREWrongThreadException ex4) {
            AirFuseAPIExtension.log("ERROR Wrong Thread");
            ex4.printStackTrace();
            return null;
        }
    }
}
