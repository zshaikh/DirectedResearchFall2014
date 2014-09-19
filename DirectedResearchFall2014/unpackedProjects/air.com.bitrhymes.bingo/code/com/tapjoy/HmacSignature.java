package com.tapjoy;

import android.net.*;
import android.util.*;
import java.util.*;
import javax.crypto.spec.*;
import javax.crypto.*;
import java.security.*;

public class HmacSignature
{
    private String _method;
    private String _secret;
    
    public HmacSignature(final String method, final String secret) {
        super();
        this._method = method;
        this._secret = secret;
    }
    
    private String prepareMessage(final String s, final Map<String, String> map) {
        final Uri parse = Uri.parse(s);
        String str = parse.getScheme() + "://" + parse.getHost();
        boolean b;
        if ((parse.getScheme().equals("http") && parse.getPort() == 80) || (parse.getScheme().equals("https") && parse.getPort() == 443)) {
            b = true;
        }
        else {
            b = false;
        }
        if (!b && -1 != parse.getPort()) {
            str = str + ":" + parse.getPort();
        }
        final String string = "POST&" + Uri.encode(str.toLowerCase() + parse.getPath()) + "&" + Uri.encode(this.prepareParams(map));
        Log.v("HmacSignature", "Base Url: " + string);
        return string;
    }
    
    private String prepareParams(final Map<String, String> map) {
        final TreeSet<String> set = new TreeSet<String>(map.keySet());
        final StringBuilder sb = new StringBuilder();
        for (final String str : set) {
            sb.append(str + "=" + map.get(str) + "&");
        }
        sb.deleteCharAt(sb.lastIndexOf("&"));
        Log.v("HmacSignature", "Unhashed String: " + sb.toString());
        return sb.toString();
    }
    
    public boolean matches(final String s, final Map<String, String> map, final String anObject) {
        return this.sign(s, map).equals(anObject);
    }
    
    public String sign(final String s, final Map<String, String> map) {
        try {
            final SecretKeySpec key = new SecretKeySpec(this._secret.getBytes(), this._method);
            final Mac instance = Mac.getInstance(this._method);
            instance.init(key);
            final byte[] doFinal = instance.doFinal(this.prepareMessage(s, map).getBytes());
            final StringBuilder sb = new StringBuilder();
            for (int length = doFinal.length, i = 0; i < length; ++i) {
                final String hexString = Integer.toHexString(0xFF & doFinal[i]);
                if (hexString.length() == 1) {
                    sb.append('0');
                }
                sb.append(hexString);
            }
            return sb.toString();
        }
        catch (Exception ex) {
            return null;
        }
    }
}
