package v2.com.playhaven.utils;

import java.security.*;
import android.text.*;
import v2.com.playhaven.configuration.*;
import android.util.*;
import java.net.*;
import java.util.*;
import java.io.*;

public class PHStringUtil
{
    public static UUIDGenerator UUID_GENERATOR;
    
    static {
        PHStringUtil.UUID_GENERATOR = (UUIDGenerator)new DefaultUUIDGenerator(null);
    }
    
    public static String base64Digest(final String s) throws UnsupportedEncodingException, NoSuchAlgorithmException {
        final String convertToBase64 = convertToBase64(dataDigest(s));
        return convertToBase64.substring(0, convertToBase64.length() - 1);
    }
    
    private static String convertToBase64(final byte[] array) throws UnsupportedEncodingException {
        if (array == null) {
            return null;
        }
        return new String(Base64.encode(array, 9), "UTF8");
    }
    
    private static String convertToHex(final byte[] array) {
        final Formatter formatter = new Formatter(new StringBuilder(2 * array.length));
        for (int length = array.length, i = 0; i < length; ++i) {
            formatter.format("%02x", array[i]);
        }
        final String string = formatter.toString();
        formatter.close();
        return string;
    }
    
    public static String createQuery(final HashMap<String, String> hashMap) {
        if (hashMap == null) {
            return null;
        }
        final StringBuilder sb = new StringBuilder();
        for (final Map.Entry<String, String> entry : hashMap.entrySet()) {
            final String s = entry.getKey();
            final String s2 = entry.getValue();
            if (s != null && s2 != null) {
                final String urlEncode = urlEncode(s);
                final String weakUrlEncode = weakUrlEncode(s2);
                String format;
                if (sb.length() == 0) {
                    format = "%s=%s";
                }
                else {
                    format = "&%s=%s";
                }
                sb.append(String.format(format, urlEncode, weakUrlEncode));
            }
        }
        return sb.toString();
    }
    
    public static HashMap<String, String> createQueryDict(final String s) {
        if (s == null) {
            return null;
        }
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final String[] split = s.split("&|\\?");
        for (int length = split.length, i = 0; i < length; ++i) {
            final String[] split2 = split[i].split("=");
            if (split2.length >= 2) {
                hashMap.put(urlDecode(split2[0]), urlDecode(split2[1]));
            }
        }
        return hashMap;
    }
    
    private static byte[] dataDigest(final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (s == null) {
            return null;
        }
        return MessageDigest.getInstance("SHA-1").digest(s.getBytes("UTF8"));
    }
    
    public static String decodeURL(final String s) {
        throw new UnsupportedOperationException("This method is not yet implemented");
    }
    
    public static String encodeHtml(final String s) {
        return TextUtils.htmlEncode(s);
    }
    
    public static String encodeURL(final String s) {
        throw new UnsupportedOperationException("This method is not yet implemented");
    }
    
    public static String generateUUID() {
        return PHStringUtil.UUID_GENERATOR.generateUUID();
    }
    
    public static String hexDigest(final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return convertToHex(dataDigest(s));
    }
    
    public static void log(final String s) {
        Log.d(String.format("PlayHaven-%s", new PHConfiguration().getSDKVersion()), s);
    }
    
    public static String queryComponent(final String s) {
        final int index = s.indexOf("?");
        if (index == -1) {
            return null;
        }
        return s.substring(index + 1);
    }
    
    public static String urlDecode(final String s) {
        return URLDecoder.decode(s);
    }
    
    public static String urlEncode(final String s) {
        return URLEncoder.encode(s);
    }
    
    public static String weakUrlEncode(final String str) {
        if (str == null) {
            return null;
        }
        final String[] array = { ";", "?", " ", "&", "=", "$", ",", "[", "]", "#", "!", "'", "(", ")", "*" };
        final String[] array2 = { "%3B", "%3F", "+", "%26", "%3D", "%24", "%2C", "%5B", "%5D", "%21", "%27", "%28", "%28", "%29", "%2A" };
        final StringBuilder sb = new StringBuilder(str);
        for (int i = 0; i < array2.length; ++i) {
            final String s = array[i];
            final String str2 = array2[i];
            for (int j = sb.indexOf(s); j != -1; j = sb.indexOf(s)) {
                sb.replace(j, j + s.length(), str2);
            }
        }
        return sb.toString();
    }
    
    private static class DefaultUUIDGenerator implements UUIDGenerator
    {
        @Override
        public String generateUUID() {
            return UUID.randomUUID().toString();
        }
    }
    
    public interface UUIDGenerator
    {
        String generateUUID();
    }
}
