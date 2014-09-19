package com.buffalostudios.aneutils.deviceinfo;

import android.os.*;
import android.util.*;
import android.view.*;
import java.net.*;
import org.apache.http.conn.util.*;
import java.util.*;
import android.telephony.*;
import com.adobe.fre.*;

public class DeviceInfo
{
    public static class GetBuildProperty implements FREFunction
    {
        private static final int BUILD_MANUFACTURER = 0;
        private static final int BUILD_MODEL = 1;
        private static final int BUILD_VERSION_RELEASE = 2;
        private static final int BUILD_VERSION_SDK_INT = 3;
        
        private String getBuildProperty(final int n) {
            switch (n) {
                default: {
                    return null;
                }
                case 0: {
                    return Build.MANUFACTURER;
                }
                case 1: {
                    return Build.MODEL;
                }
                case 2: {
                    return Build$VERSION.RELEASE;
                }
                case 3: {
                    return Integer.toString(Build$VERSION.SDK_INT);
                }
            }
        }
        
        private void onError(final String s) {
        }
        
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final String buildProperty = this.getBuildProperty(Util.getAsInt(array[0]));
            if (buildProperty == null) {
                return null;
            }
            try {
                return FREObject.newObject(buildProperty);
            }
            catch (FREWrongThreadException ex) {
                this.onError("ERROR: FREWrongThreadException in DeviceInfoGetBuildProperty#call");
                return null;
            }
        }
    }
    
    public static class GetDisplayProperty implements FREFunction
    {
        private static final int DISPLAY_DIAGONAL = 0;
        private static final int DISPLAY_DPI = 1;
        private static final int DISPLAY_HEIGHT = 2;
        private static final int DISPLAY_HEIGHT_INCHES = 3;
        private static final int DISPLAY_WIDTH = 4;
        private static final int DISPLAY_WIDTH_INCHES = 5;
        
        private double getDiagonal(final DisplayMetrics displayMetrics) {
            final double widthInches = this.getWidthInches(displayMetrics);
            final double heightInches = this.getHeightInches(displayMetrics);
            return Math.sqrt(widthInches * widthInches + heightInches * heightInches);
        }
        
        private double getDisplayProperty(final Display display, final int n) {
            final DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            switch (n) {
                default: {
                    return 0.0;
                }
                case 0: {
                    return this.getDiagonal(displayMetrics);
                }
                case 1: {
                    return this.getDpi(displayMetrics);
                }
                case 2: {
                    return this.getHeight(displayMetrics);
                }
                case 3: {
                    return this.getHeightInches(displayMetrics);
                }
                case 4: {
                    return this.getWidth(displayMetrics);
                }
                case 5: {
                    return this.getWidthInches(displayMetrics);
                }
            }
        }
        
        private double getDpi(final DisplayMetrics displayMetrics) {
            return Math.sqrt(displayMetrics.xdpi * displayMetrics.ydpi);
        }
        
        private double getHeight(final DisplayMetrics displayMetrics) {
            return Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        
        private double getHeightInches(final DisplayMetrics displayMetrics) {
            return this.getHeight(displayMetrics) / this.getDpi(displayMetrics);
        }
        
        private double getWidth(final DisplayMetrics displayMetrics) {
            return Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        
        private double getWidthInches(final DisplayMetrics displayMetrics) {
            return this.getWidth(displayMetrics) / this.getDpi(displayMetrics);
        }
        
        private void onError(final String s) {
        }
        
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final double displayProperty = this.getDisplayProperty(freContext.getActivity().getWindowManager().getDefaultDisplay(), Util.getAsInt(array[0]));
            try {
                return FREObject.newObject(displayProperty);
            }
            catch (FREWrongThreadException ex) {
                this.onError("ERROR: FREWrongThreadException in DeviceInfoGetDisplayProperty#call");
                return null;
            }
        }
    }
    
    public static class GetFingerprintProperty implements FREFunction
    {
        private static final int VENDOR_ID;
        
        private String getFingerprintProperty(final int n) {
            switch (n) {
                default: {
                    return null;
                }
                case 0: {
                    return this.getVendorId();
                }
            }
        }
        
        private String getVendorId() {
            return "N/A";
        }
        
        private void onError(final String s) {
        }
        
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final String fingerprintProperty = this.getFingerprintProperty(Util.getAsInt(array[0]));
            if (fingerprintProperty == null) {
                return null;
            }
            try {
                return FREObject.newObject(fingerprintProperty);
            }
            catch (FREWrongThreadException ex) {
                this.onError("ERROR: FREWrongThreadException in DeviceInfoGetFingerprintProperty#call");
                return null;
            }
        }
    }
    
    public static class GetNetworkProperty implements FREFunction
    {
        private static final int IP_ADDRESS;
        
        private String getIPAddress() {
            while (true) {
                Enumeration<NetworkInterface> networkInterfaces = null;
                Label_0037: {
                    try {
                        networkInterfaces = NetworkInterface.getNetworkInterfaces();
                        if (networkInterfaces == null) {
                            return "N/A";
                        }
                        break Label_0037;
                    }
                    catch (SocketException ex) {
                        return "N/A";
                    }
                    final Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        final InetAddress inetAddress = inetAddresses.nextElement();
                        final String hostAddress = inetAddress.getHostAddress();
                        if (!inetAddress.isLoopbackAddress() && InetAddressUtils.isIPv4Address(hostAddress)) {
                            return hostAddress;
                        }
                    }
                }
                if (!networkInterfaces.hasMoreElements()) {
                    return "N/A";
                }
                continue;
            }
        }
        
        private String getNetworkProperty(final int n) {
            switch (n) {
                default: {
                    return null;
                }
                case 0: {
                    return this.getIPAddress();
                }
            }
        }
        
        private void onError(final String s) {
        }
        
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final String networkProperty = this.getNetworkProperty(Util.getAsInt(array[0]));
            if (networkProperty == null) {
                return null;
            }
            try {
                return FREObject.newObject(networkProperty);
            }
            catch (FREWrongThreadException ex) {
                this.onError("ERROR: FREWrongThreadException in DeviceInfoGetNetworkProperty#call");
                return null;
            }
        }
    }
    
    public static class GetTelephonyProperty implements FREFunction
    {
        private static final int TELEPHONY_NETWORK_OPERATOR = 0;
        private static final int TELEPHONY_NETWORK_TYPE = 1;
        
        private String getNetworkOperator(final TelephonyManager telephonyManager) {
            return telephonyManager.getNetworkOperatorName();
        }
        
        private String getNetworkType(final TelephonyManager telephonyManager) {
            switch (telephonyManager.getNetworkType()) {
                default: {
                    return null;
                }
                case 7: {
                    return "1xRTT";
                }
                case 4: {
                    return "CDMA";
                }
                case 2: {
                    return "EDGE";
                }
                case 14: {
                    return "eHRPD";
                }
                case 5: {
                    return "EVDO revision 0";
                }
                case 6: {
                    return "EVDO revision A";
                }
                case 12: {
                    return "EVDO revision B";
                }
                case 1: {
                    return "GPRS";
                }
                case 8: {
                    return "HSDPA";
                }
                case 10: {
                    return "HSPA";
                }
                case 15: {
                    return "HSPA+";
                }
                case 9: {
                    return "HSUPA";
                }
                case 11: {
                    return "iDen";
                }
                case 13: {
                    return "LTE";
                }
                case 3: {
                    return "UMTS";
                }
                case 0: {
                    return "Unknown";
                }
            }
        }
        
        private String getTelephonyProperty(final TelephonyManager telephonyManager, final int n) {
            telephonyManager.getPhoneType();
            switch (n) {
                default: {
                    return null;
                }
                case 0: {
                    return this.getNetworkOperator(telephonyManager);
                }
                case 1: {
                    return this.getNetworkType(telephonyManager);
                }
            }
        }
        
        private void onError(final String s) {
        }
        
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            final int asInt = Util.getAsInt(array[0]);
            final TelephonyManager telephonyManager = (TelephonyManager)freContext.getActivity().getSystemService("phone");
            if (telephonyManager == null) {
                return null;
            }
            final String telephonyProperty = this.getTelephonyProperty(telephonyManager, asInt);
            if (telephonyProperty == null) {
                return null;
            }
            try {
                return FREObject.newObject(telephonyProperty);
            }
            catch (FREWrongThreadException ex) {
                this.onError("ERROR: FREWrongThreadException in DeviceInfoGetTelephonyProperty#call");
                return null;
            }
        }
    }
    
    public static class Init implements FREFunction
    {
        @Override
        public FREObject call(final FREContext freContext, final FREObject[] array) {
            return null;
        }
    }
    
    public static class Util
    {
        public static int getAsInt(final FREObject freObject) {
            try {
                return freObject.getAsInt();
            }
            catch (IllegalStateException ex) {
                onError("ERROR: IllegalStateException in DeviceInfoUtil#getAsInt");
                return 0;
            }
            catch (FRETypeMismatchException ex2) {
                onError("ERROR: FRETypeMismatchException in DeviceInfoUtil#getAsInt");
                return 0;
            }
            catch (FREInvalidObjectException ex3) {
                onError("ERROR: FREInvalidObjectException in DeviceInfoUtil#getAsInt");
                return 0;
            }
            catch (FREWrongThreadException ex4) {
                onError("ERROR: FREWrongThreadException in DeviceInfoUtil#getAsInt");
                return 0;
            }
        }
        
        private static void onError(final String s) {
        }
    }
}
