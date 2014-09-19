package com.tapjoy;

import javax.xml.parsers.*;
import android.net.*;
import java.util.*;
import android.graphics.*;
import java.io.*;
import org.w3c.dom.*;
import java.security.*;
import android.webkit.*;
import android.view.*;

public class TapjoyUtil
{
    private static final String TAG = "TapjoyUtil";
    private static String mraidJs;
    
    static {
        TapjoyUtil.mraidJs = null;
    }
    
    public static String SHA1(final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return hashAlgorithm("SHA-1", s);
    }
    
    public static String SHA256(final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        return hashAlgorithm("SHA-256", s);
    }
    
    public static Document buildDocument(final String s) {
        try {
            return DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new ByteArrayInputStream(s.getBytes("UTF-8")));
        }
        catch (Exception ex) {
            TapjoyLog.e("TapjoyUtil", "buildDocument exception: " + ex.toString());
            return null;
        }
    }
    
    private static String convertToHex(final byte[] array) {
        final StringBuffer sb = new StringBuffer();
        for (int i = 0; i < array.length; ++i) {
            int n = 0xF & array[i] >>> 4;
            int n2 = 0;
            while (true) {
                if (n >= 0 && n <= 9) {
                    sb.append((char)(n + 48));
                }
                else {
                    sb.append((char)(97 + (n - 10)));
                }
                n = (0xF & array[i]);
                final int n3 = n2 + 1;
                if (n2 >= 1) {
                    break;
                }
                n2 = n3;
            }
        }
        return sb.toString();
    }
    
    public static String convertURLParams(final Map<String, String> map, final boolean b) {
        String str = "";
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            if (str.length() > 0) {
                str += "&";
            }
            if (b) {
                str = str + Uri.encode((String)entry.getKey()) + "=" + Uri.encode((String)entry.getValue());
            }
            else {
                str = str + entry.getKey() + "=" + entry.getValue();
            }
        }
        return str;
    }
    
    public static Map<String, String> convertURLParams(final String s, final boolean b) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        int index = 0;
        int n = 0;
        String s2 = "";
        String decode = "";
        while (index < s.length() && index != -1) {
            final char char1 = s.charAt(index);
            if (n == 0) {
                if (char1 == '=') {
                    n = 1;
                    if (b) {
                        decode = Uri.decode(s2);
                    }
                    else {
                        decode = s2;
                    }
                    s2 = "";
                }
                else {
                    s2 += char1;
                }
            }
            else if (n == 1) {
                if (char1 == '&') {
                    String decode2;
                    if (b) {
                        decode2 = Uri.decode(s2);
                    }
                    else {
                        decode2 = s2;
                    }
                    s2 = "";
                    hashMap.put(decode, decode2);
                    n = 0;
                }
                else {
                    s2 += char1;
                }
            }
            ++index;
        }
        if (n == 1 && s2.length() > 0) {
            String decode3;
            if (b) {
                decode3 = Uri.decode(s2);
            }
            else {
                decode3 = s2;
            }
            hashMap.put(decode, decode3);
        }
        return hashMap;
    }
    
    public static Bitmap createBitmapFromView(final View view) {
        Bitmap bitmap = null;
        if (view == null) {
            return bitmap;
        }
        final int width = view.getLayoutParams().width;
        bitmap = null;
        if (width <= 0) {
            return bitmap;
        }
        final int height = view.getLayoutParams().height;
        bitmap = null;
        if (height <= 0) {
            return bitmap;
        }
        try {
            bitmap = Bitmap.createBitmap(view.getLayoutParams().width, view.getLayoutParams().height, Bitmap$Config.ARGB_8888);
            final Canvas canvas = new Canvas(bitmap);
            view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            view.draw(canvas);
            return bitmap;
        }
        catch (Exception ex) {
            TapjoyLog.i("TapjoyUtil", "error creating bitmap: " + ex.toString());
            return bitmap;
        }
    }
    
    public static void deleteFileOrDirectory(final File file) {
        if (file.isDirectory()) {
            final File[] listFiles = file.listFiles();
            for (int length = listFiles.length, i = 0; i < length; ++i) {
                deleteFileOrDirectory(listFiles[i]);
            }
        }
        TapjoyLog.i("TapjoyUtil", "****************************************");
        TapjoyLog.i("TapjoyUtil", "deleteFileOrDirectory: " + file.getAbsolutePath());
        TapjoyLog.i("TapjoyUtil", "****************************************");
        file.delete();
    }
    
    public static String getMraidJsString() {
        return TapjoyUtil.mraidJs;
    }
    
    public static String getNodeTrimValue(final NodeList list) {
        final Element element = (Element)list.item(0);
        String string = "";
        if (element == null) {
            return null;
        }
        final NodeList childNodes = element.getChildNodes();
        for (int length = childNodes.getLength(), i = 0; i < length; ++i) {
            final Node item = childNodes.item(i);
            if (item != null) {
                string += item.getNodeValue();
            }
        }
        if (string != null && !string.equals("")) {
            return string.trim();
        }
        return null;
    }
    
    private static String hashAlgorithm(final String algorithm, final String s) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        final byte[] array = new byte[40];
        final MessageDigest instance = MessageDigest.getInstance(algorithm);
        instance.update(s.getBytes("iso-8859-1"), 0, s.length());
        return convertToHex(instance.digest());
    }
    
    public static void safePut(final Map<String, String> map, final String s, final String s2, final boolean b) {
        if (s != null && s.length() > 0 && s2 != null && s2.length() > 0) {
            if (!b) {
                map.put(s, s2);
                return;
            }
            map.put(Uri.encode(s), Uri.encode(s2));
        }
    }
    
    public static View scaleDisplayAd(final View view, final int n) {
        final int width = view.getLayoutParams().width;
        final int height = view.getLayoutParams().height;
        TapjoyLog.i("TapjoyUtil", "wxh: " + width + "x" + height);
        if (width > n) {
            final int intValue = (int)(Object)Double.valueOf(100.0 * Double.valueOf(Double.valueOf(n) / Double.valueOf(width)));
            ((WebView)view).getSettings().setSupportZoom(true);
            ((WebView)view).setPadding(0, 0, 0, 0);
            ((WebView)view).setVerticalScrollBarEnabled(false);
            ((WebView)view).setHorizontalScrollBarEnabled(false);
            ((WebView)view).setInitialScale(intValue);
            view.setLayoutParams(new ViewGroup$LayoutParams(n, n * height / width));
        }
        return view;
    }
    
    public static void setMraidJsString(final String mraidJs) {
        TapjoyUtil.mraidJs = mraidJs;
    }
}
