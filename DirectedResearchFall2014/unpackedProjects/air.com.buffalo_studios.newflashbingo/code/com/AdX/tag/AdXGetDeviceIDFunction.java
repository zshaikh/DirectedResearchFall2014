package com.AdX.tag;

import com.adobe.fre.*;
import android.util.*;
import android.telephony.*;
import android.content.*;

public class AdXGetDeviceIDFunction implements FREFunction
{
    private static String AdX_PREFERENCE;
    
    static {
        AdXGetDeviceIDFunction.AdX_PREFERENCE = "AdXPrefrences";
    }
    
    @Override
    public FREObject call(final FREContext freContext, final FREObject[] array) {
        while (true) {
            Log.i("AdXGetDeviceIDFunction", "call");
            final Context applicationContext = ((AdXExtensionContext)freContext).getActivity().getApplicationContext();
            final SharedPreferences sharedPreferences = applicationContext.getSharedPreferences(AdXGetDeviceIDFunction.AdX_PREFERENCE, 0);
            TelephonyManager telephonyManager;
            String s = null;
            int n;
            String string;
            Block_7_Outer:Label_0147_Outer:Label_0116_Outer:
            while (true) {
                while (true) {
                    Label_0182: {
                        try {
                            telephonyManager = (TelephonyManager)applicationContext.getSystemService("phone");
                            s = null;
                            if (telephonyManager != null) {
                                s = telephonyManager.getDeviceId();
                            }
                            break Label_0182;
                            Label_0110: {
                                return FREObject.newObject(s);
                            }
                            // iftrue(Label_0110:, n == 0)
                            // iftrue(Label_0160:, string == null || string.equals((Object)""))
                            // iftrue(Label_0193:, s.length() == 0 || s.equals((Object)"000000000000000") || s.equals((Object)"0"))
                            while (true) {
                                while (true) {
                                    Block_5: {
                                        break Block_5;
                                        s = string;
                                        return FREObject.newObject(s);
                                        s = s.toLowerCase();
                                        n = 0;
                                        continue Block_7_Outer;
                                    }
                                    new StringBuffer().append("EMULATOR");
                                    string = sharedPreferences.getString("emulatorDeviceId", (String)null);
                                    continue Label_0147_Outer;
                                }
                                continue Label_0116_Outer;
                            }
                            Label_0160:
                            s = "TabletANON";
                            return FREObject.newObject(s);
                        }
                        catch (Exception ex) {
                            Log.i("AdXFunction", ex.getMessage());
                            return null;
                        }
                    }
                    if (s == null) {
                        n = 1;
                        continue Label_0116_Outer;
                    }
                    continue;
                }
                Label_0193: {
                    n = 1;
                }
                continue Label_0116_Outer;
            }
        }
    }
}
