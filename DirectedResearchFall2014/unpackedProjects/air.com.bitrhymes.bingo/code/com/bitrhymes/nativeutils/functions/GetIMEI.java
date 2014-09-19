package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import android.telephony.*;
import com.bitrhymes.nativeutils.utils.*;

public class GetIMEI implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            String deviceId = ((TelephonyManager)freContext.getActivity().getApplicationContext().getSystemService("phone")).getDeviceId();
            if (deviceId == null) {
                deviceId = "";
            }
            return FREObject.newObject(deviceId);
        }
        catch (Exception ex) {
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
            return null;
        }
    }
}
