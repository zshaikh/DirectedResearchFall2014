package com.adobe.air.net;

import android.content.*;
import java.util.*;
import android.text.format.*;
import android.net.*;
import android.net.wifi.*;

class AndroidNetworkInfo
{
    private static final String LOG_TAG = "AndroidNetworkInfo";
    private static AndroidNetworkInfo sAndroidNetworkInfo;
    private Context mContext;
    private Vector<NetworkInterface> mInterfaces;
    
    static {
        AndroidNetworkInfo.sAndroidNetworkInfo = null;
    }
    
    private AndroidNetworkInfo(final Context mContext) {
        super();
        this.mContext = mContext;
        this.mInterfaces = new Vector<NetworkInterface>();
    }
    
    public static AndroidNetworkInfo GetAndroidNetworkInfo(final Context context) {
        if (AndroidNetworkInfo.sAndroidNetworkInfo == null) {
            AndroidNetworkInfo.sAndroidNetworkInfo = new AndroidNetworkInfo(context);
        }
        return AndroidNetworkInfo.sAndroidNetworkInfo;
    }
    
    private void enumerateNetworkInterfaces() {
        try {
            final NetworkInfo[] allNetworkInfo = ((ConnectivityManager)this.mContext.getSystemService("connectivity")).getAllNetworkInfo();
            for (int i = 0; i < allNetworkInfo.length; ++i) {
                final NetworkInfo networkInfo = allNetworkInfo[i];
                NetworkInterface e = null;
                switch (networkInfo.getType()) {
                    default: {
                        e = this.getDefaultData(networkInfo);
                        break;
                    }
                    case 1: {
                        e = this.getWifiData(networkInfo);
                        break;
                    }
                }
                this.mInterfaces.add(e);
            }
        }
        catch (Exception ex) {
            this.mInterfaces.clear();
        }
    }
    
    public NetworkInterface GetNetworkInterface(final int index) {
        if (index < 0 || index >= this.mInterfaces.size()) {
            return null;
        }
        return this.mInterfaces.elementAt(index);
    }
    
    public int GetNetworkInterfacesCount() {
        this.mInterfaces.clear();
        this.enumerateNetworkInterfaces();
        return this.mInterfaces.size();
    }
    
    public void InterfacesReadComplete() {
        this.mInterfaces.clear();
    }
    
    InterfaceAddress getAddress(final NetworkInfo networkInfo) {
        final InterfaceAddress interfaceAddress = new InterfaceAddress();
        if (!networkInfo.isConnected()) {
            return null;
        }
        final WifiManager wifiManager = (WifiManager)this.mContext.getSystemService("wifi");
        if (wifiManager == null) {
            return null;
        }
        final DhcpInfo dhcpInfo = wifiManager.getDhcpInfo();
        if (dhcpInfo != null) {
            interfaceAddress.address = Formatter.formatIpAddress(dhcpInfo.ipAddress);
            interfaceAddress.prefixLength = Integer.bitCount(dhcpInfo.netmask);
            interfaceAddress.broadcast = Formatter.formatIpAddress(dhcpInfo.ipAddress | (-1 ^ dhcpInfo.netmask));
            interfaceAddress.ipVersion = "IPv4";
            return interfaceAddress;
        }
        final WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        if (connectionInfo == null) {
            return null;
        }
        interfaceAddress.address = Formatter.formatIpAddress(connectionInfo.getIpAddress());
        interfaceAddress.ipVersion = "IPv4";
        return interfaceAddress;
    }
    
    NetworkInterface getDefaultData(final NetworkInfo networkInfo) {
        final NetworkInterface networkInterface = new NetworkInterface();
        networkInterface.active = networkInfo.isConnected();
        networkInterface.displayName = networkInfo.getTypeName();
        networkInterface.name = networkInfo.getTypeName();
        return networkInterface;
    }
    
    NetworkInterface getWifiData(final NetworkInfo networkInfo) {
        final NetworkInterface networkInterface = new NetworkInterface();
        final WifiManager wifiManager = (WifiManager)this.mContext.getSystemService("wifi");
        if (wifiManager != null) {}
        final WifiInfo connectionInfo = wifiManager.getConnectionInfo();
        while (true) {
            if (connectionInfo == null) {
                networkInterface.active = networkInfo.isConnected();
                networkInterface.displayName = networkInfo.getTypeName();
                networkInterface.name = networkInfo.getTypeName();
                if (connectionInfo != null) {
                    String macAddress = connectionInfo.getMacAddress();
                    if (macAddress == null) {
                        macAddress = "";
                    }
                    networkInterface.hardwareAddress = macAddress;
                }
                networkInterface.addAddress(this.getAddress(networkInfo));
                return networkInterface;
            }
            continue;
        }
    }
}
