package com.bitrhymes.nativeutils.functions;

import android.os.*;
import com.bitrhymes.nativeutils.utils.*;
import com.adobe.fre.*;

public class GetMachineName implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final String cpu_ABI = Build.CPU_ABI;
        try {
            if (cpu_ABI.length() != 0 && cpu_ABI != null) {
                return FREObject.newObject(cpu_ABI);
            }
            return FREObject.newObject("");
        }
        catch (FREWrongThreadException ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
