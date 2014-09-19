package v2.com.playhaven.utils;

import android.content.*;
import v2.com.playhaven.configuration.*;
import android.net.*;

public class PHConnectionUtils
{
    public static PHConfiguration.ConnectionType getConnectionType(final Context context) {
        try {
            final ConnectivityManager connectivityManager = (ConnectivityManager)context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return PHConfiguration.ConnectionType.NO_NETWORK;
            }
            final NetworkInfo networkInfo = connectivityManager.getNetworkInfo(0);
            final NetworkInfo networkInfo2 = connectivityManager.getNetworkInfo(1);
            if (networkInfo == null || networkInfo2 == null) {
                return PHConfiguration.ConnectionType.NO_NETWORK;
            }
            final NetworkInfo$State state = networkInfo.getState();
            final NetworkInfo$State state2 = networkInfo2.getState();
            if (state == NetworkInfo$State.CONNECTED || state == NetworkInfo$State.CONNECTING) {
                return PHConfiguration.ConnectionType.MOBILE;
            }
            if (state2 == NetworkInfo$State.CONNECTED || state2 == NetworkInfo$State.CONNECTING) {
                return PHConfiguration.ConnectionType.WIFI;
            }
        }
        catch (SecurityException ex) {
            return PHConfiguration.ConnectionType.NO_PERMISSION;
        }
        return PHConfiguration.ConnectionType.NO_NETWORK;
    }
}
