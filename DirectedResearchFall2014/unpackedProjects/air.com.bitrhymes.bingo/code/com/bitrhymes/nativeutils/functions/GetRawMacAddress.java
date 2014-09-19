package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import android.net.wifi.*;
import com.bitrhymes.nativeutils.utils.*;

public class GetRawMacAddress implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        FREObject freObject;
        try {
            final String macAddress = ((WifiManager)freContext.getActivity().getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress.length() != 0 && macAddress != null) {
                freObject = FREObject.newObject(macAddress);
            }
            else {
                freObject = FREObject.newObject("");
            }
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
        return freObject;
    }
}
