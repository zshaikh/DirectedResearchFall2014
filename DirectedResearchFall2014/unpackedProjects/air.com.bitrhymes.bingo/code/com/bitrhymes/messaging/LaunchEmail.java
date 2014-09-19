package com.bitrhymes.messaging;

import com.adobe.fre.*;
import android.util.*;
import android.content.*;
import java.net.*;

public class LaunchEmail implements FREFunction
{
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            try {
                final String string = "mailto:" + array[0].getAsString() + "?subject=" + array[1].getAsString() + "&body=" + array[2].getAsString();
                Log.i("LaunchEmail", "formLink");
                try {
                    freContext.getActivity().startActivity(Intent.parseUri(string, 1));
                    return null;
                }
                catch (URISyntaxException ex) {
                    ex.printStackTrace();
                }
            }
            catch (Exception ex2) {
                Log.e("AIR_AndroidDialog", ex2.getMessage());
                continue;
            }
            break;
        }
    }
}
