package com.bitrhymes.messaging;

import com.adobe.fre.*;
import android.util.*;
import android.content.*;

public class LaunchSMS implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        try {
            final String asString = array[0].getAsString();
            Log.i("LaunchSms", "msgs");
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.setType("vnd.android-dir/mms-sms");
            intent.putExtra("sms_body", asString);
            freContext.getActivity().startActivity(intent);
            return null;
        }
        catch (Exception ex) {
            Log.e("AIR_AndroidDialog", ex.getMessage());
            return null;
        }
    }
}
