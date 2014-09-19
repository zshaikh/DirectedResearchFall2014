package android.support.v4.net;

import android.os.*;
import android.content.*;
import android.net.*;

public class ConnectivityManagerCompat
{
    private static final ConnectivityManagerCompatImpl IMPL;
    
    static {
        if (Build$VERSION.SDK_INT >= 16) {
            IMPL = (ConnectivityManagerCompatImpl)new JellyBeanConnectivityManagerCompatImpl();
            return;
        }
        if (Build$VERSION.SDK_INT >= 13) {
            IMPL = (ConnectivityManagerCompatImpl)new HoneycombMR2ConnectivityManagerCompatImpl();
            return;
        }
        if (Build$VERSION.SDK_INT >= 8) {
            IMPL = (ConnectivityManagerCompatImpl)new GingerbreadConnectivityManagerCompatImpl();
            return;
        }
        IMPL = (ConnectivityManagerCompatImpl)new BaseConnectivityManagerCompatImpl();
    }
    
    public static NetworkInfo getNetworkInfoFromBroadcast(final ConnectivityManager connectivityManager, final Intent intent) {
        return connectivityManager.getNetworkInfo(((NetworkInfo)intent.getParcelableExtra("networkInfo")).getType());
    }
    
    public static boolean isActiveNetworkMetered(final ConnectivityManager connectivityManager) {
        return ConnectivityManagerCompat.IMPL.isActiveNetworkMetered(connectivityManager);
    }
    
    static class BaseConnectivityManagerCompatImpl implements ConnectivityManagerCompatImpl
    {
        @Override
        public boolean isActiveNetworkMetered(final ConnectivityManager connectivityManager) {
            final NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                switch (activeNetworkInfo.getType()) {
                    case 0: {
                        break;
                    }
                    default: {
                        return true;
                    }
                    case 1: {
                        return false;
                    }
                }
            }
            return true;
        }
    }
    
    interface ConnectivityManagerCompatImpl
    {
        boolean isActiveNetworkMetered(ConnectivityManager p0);
    }
    
    static class GingerbreadConnectivityManagerCompatImpl implements ConnectivityManagerCompatImpl
    {
        @Override
        public boolean isActiveNetworkMetered(final ConnectivityManager connectivityManager) {
            return ConnectivityManagerCompatGingerbread.isActiveNetworkMetered(connectivityManager);
        }
    }
    
    static class HoneycombMR2ConnectivityManagerCompatImpl implements ConnectivityManagerCompatImpl
    {
        @Override
        public boolean isActiveNetworkMetered(final ConnectivityManager connectivityManager) {
            return ConnectivityManagerCompatHoneycombMR2.isActiveNetworkMetered(connectivityManager);
        }
    }
    
    static class JellyBeanConnectivityManagerCompatImpl implements ConnectivityManagerCompatImpl
    {
        @Override
        public boolean isActiveNetworkMetered(final ConnectivityManager connectivityManager) {
            return ConnectivityManagerCompatJellyBean.isActiveNetworkMetered(connectivityManager);
        }
    }
}
