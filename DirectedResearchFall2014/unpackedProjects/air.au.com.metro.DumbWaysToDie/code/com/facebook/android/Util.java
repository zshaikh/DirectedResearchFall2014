package com.facebook.android;

import android.os.*;
import java.util.*;
import com.facebook.internal.*;
import org.json.*;
import java.net.*;
import java.io.*;
import android.content.*;
import android.app.*;

public final class Util
{
    private static final String UTF8 = "UTF-8";
    
    @Deprecated
    public static Bundle decodeUrl(final String s) {
        int i = 0;
        final Bundle bundle = new Bundle();
        if (s != null) {
            for (String[] split = s.split("&"); i < split.length; ++i) {
                final String[] split2 = split[i].split("=");
                try {
                    if (split2.length == 2) {
                        bundle.putString(URLDecoder.decode(split2[0], "UTF-8"), URLDecoder.decode(split2[1], "UTF-8"));
                    }
                    else if (split2.length == 1) {
                        bundle.putString(URLDecoder.decode(split2[0], "UTF-8"), "");
                    }
                }
                catch (UnsupportedEncodingException ex) {}
            }
        }
        return bundle;
    }
    
    @Deprecated
    public static String encodePostBody(final Bundle bundle, final String str) {
        if (bundle == null) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        for (final String str2 : bundle.keySet()) {
            final Object value = bundle.get(str2);
            if (value instanceof String) {
                sb.append("Content-Disposition: form-data; name=\"" + str2 + "\"\r\n\r\n" + (String)value);
                sb.append("\r\n--" + str + "\r\n");
            }
        }
        return sb.toString();
    }
    
    @Deprecated
    public static String encodeUrl(final Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        final StringBuilder sb = new StringBuilder();
        final Iterator<String> iterator = (Iterator<String>)bundle.keySet().iterator();
        int n = 1;
        while (iterator.hasNext()) {
            final String s = iterator.next();
            if (bundle.get(s) instanceof String) {
                if (n != 0) {
                    n = 0;
                }
                else {
                    sb.append("&");
                }
                sb.append(URLEncoder.encode(s) + "=" + URLEncoder.encode(bundle.getString(s)));
            }
        }
        return sb.toString();
    }
    
    @Deprecated
    public static String openUrl(final String str, final String str2, final Bundle bundle) {
        while (true) {
            Label_0577: {
                if (!str2.equals("GET")) {
                    break Label_0577;
                }
                final String string = str + "?" + encodeUrl(bundle);
                Utility.logd("Facebook-Util", str2 + " URL: " + string);
                final HttpURLConnection httpURLConnection = (HttpURLConnection)new URL(string).openConnection();
                httpURLConnection.setRequestProperty("User-Agent", System.getProperties().getProperty("http.agent") + " FacebookAndroidSDK");
                if (!str2.equals("GET")) {
                    final Bundle bundle2 = new Bundle();
                    for (final String s : bundle.keySet()) {
                        final Object value = bundle.get(s);
                        if (value instanceof byte[]) {
                            bundle2.putByteArray(s, (byte[])value);
                        }
                    }
                    if (!bundle.containsKey("method")) {
                        bundle.putString("method", str2);
                    }
                    if (bundle.containsKey("access_token")) {
                        bundle.putString("access_token", URLDecoder.decode(bundle.getString("access_token")));
                    }
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
                    httpURLConnection.connect();
                    final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                    bufferedOutputStream.write(("--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
                    bufferedOutputStream.write(encodePostBody(bundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
                    bufferedOutputStream.write(("\r\n" + "--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
                    if (!bundle2.isEmpty()) {
                        for (final String str3 : bundle2.keySet()) {
                            bufferedOutputStream.write(("Content-Disposition: form-data; filename=\"" + str3 + "\"" + "\r\n").getBytes());
                            bufferedOutputStream.write(("Content-Type: content/unknown" + "\r\n" + "\r\n").getBytes());
                            bufferedOutputStream.write(bundle2.getByteArray(str3));
                            bufferedOutputStream.write(("\r\n" + "--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
                        }
                    }
                    bufferedOutputStream.flush();
                }
                try {
                    return read(httpURLConnection.getInputStream());
                }
                catch (FileNotFoundException ex) {
                    return read(httpURLConnection.getErrorStream());
                }
            }
            final String string = str;
            continue;
        }
    }
    
    @Deprecated
    public static JSONObject parseJson(final String s) {
        if (s.equals("false")) {
            throw new FacebookError("request failed");
        }
        String s2;
        if (s.equals("true")) {
            s2 = "{value : true}";
        }
        else {
            s2 = s;
        }
        final JSONObject jsonObject = new JSONObject(s2);
        if (jsonObject.has("error")) {
            final JSONObject jsonObject2 = jsonObject.getJSONObject("error");
            throw new FacebookError(jsonObject2.getString("message"), jsonObject2.getString("type"), 0);
        }
        if (jsonObject.has("error_code") && jsonObject.has("error_msg")) {
            throw new FacebookError(jsonObject.getString("error_msg"), "", Integer.parseInt(jsonObject.getString("error_code")));
        }
        if (jsonObject.has("error_code")) {
            throw new FacebookError("request failed", "", Integer.parseInt(jsonObject.getString("error_code")));
        }
        if (jsonObject.has("error_msg")) {
            throw new FacebookError(jsonObject.getString("error_msg"));
        }
        if (jsonObject.has("error_reason")) {
            throw new FacebookError(jsonObject.getString("error_reason"));
        }
        return jsonObject;
    }
    
    @Deprecated
    public static Bundle parseUrl(final String s) {
        final String replace = s.replace("fbconnect", "http");
        try {
            final URL url = new URL(replace);
            final Bundle decodeUrl = decodeUrl(url.getQuery());
            decodeUrl.putAll(decodeUrl(url.getRef()));
            return decodeUrl;
        }
        catch (MalformedURLException ex) {
            return new Bundle();
        }
    }
    
    @Deprecated
    private static String read(final InputStream in) {
        final StringBuilder sb = new StringBuilder();
        final BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(in), 1000);
        for (String str = bufferedReader.readLine(); str != null; str = bufferedReader.readLine()) {
            sb.append(str);
        }
        in.close();
        return sb.toString();
    }
    
    @Deprecated
    public static void showAlert(final Context context, final String title, final String message) {
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(context);
        alertDialog$Builder.setTitle((CharSequence)title);
        alertDialog$Builder.setMessage((CharSequence)message);
        alertDialog$Builder.create().show();
    }
}
