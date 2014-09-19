package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import com.bitrhymes.nativeutils.utils.*;
import android.net.wifi.*;

public class GetMacAddressOfDevice implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        final WifiInfo connectionInfo = ((WifiManager)freContext.getActivity().getSystemService("wifi")).getConnectionInfo();
        FREObject freObject;
        try {
            final String md5 = Utils.md5(connectionInfo.getMacAddress());
            if (md5.length() != 0 && md5 != null) {
                freObject = FREObject.newObject(md5);
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
