package com.bitrhymes.nativeutils.functions;

import com.adobe.fre.*;
import android.util.*;
import com.bitrhymes.nativeutils.*;
import com.bitrhymes.nativeutils.utils.*;
import com.google.android.gcm.*;
import android.content.*;

public class RegisterForPush implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        Log.i("RegisterForPush : ", "");
        try {
            NativeUtilsContext.setFREContext(freContext);
            final String str = Utils.PUSH_SENDER_ID = array[0].getAsString();
            Log.i("RegisterForPush", "Register method called with sender id:" + str);
            final String registrationId = GCMRegistrar.getRegistrationId((Context)freContext.getActivity());
            Log.i("RegisterForPush", "GCMRegistrar.getRegistrationId called : regId : " + registrationId);
            if (registrationId != null && !registrationId.equals("")) {
                Log.i("RegisterForPush", "reg id found:" + registrationId);
                return FREObject.newObject(registrationId);
            }
            Log.i("RegisterForPush", "if regID is empty string");
            GCMRegistrar.register((Context)freContext.getActivity(), str);
            Log.i("RegisterForPush", "GCMRegistrar.register called");
        }
        catch (Exception ex) {
            Log.i("RegisterForPush : ", " error : " + ex.toString());
            ex.printStackTrace();
            freContext.dispatchStatusEventAsync("ERROR_EVENT", String.valueOf(ex.toString()) + "," + ex.getMessage() + "," + ex.getLocalizedMessage() + "," + Utils.getExceptionStackTraceAsString(ex));
        }
        return null;
    }
}
