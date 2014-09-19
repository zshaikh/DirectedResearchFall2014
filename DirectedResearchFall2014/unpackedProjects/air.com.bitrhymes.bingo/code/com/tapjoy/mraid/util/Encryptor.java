package com.tapjoy.mraid.util;

import javax.crypto.spec.*;
import javax.crypto.*;
import java.security.*;

public class Encryptor
{
    private static final String HEX = "0123456789ABCDEF";
    
    private static void appendHex(final StringBuffer sb, final byte b) {
        sb.append("0123456789ABCDEF".charAt(0xF & b >> 4)).append("0123456789ABCDEF".charAt(b & 0xF));
    }
    
    public static String decrypt(final String s, final String s2) throws Exception {
        return new String(decrypt(getRawKey(s.getBytes()), toByte(s2)));
    }
    
    private static byte[] decrypt(final byte[] key, final byte[] input) throws Exception {
        final SecretKeySpec key2 = new SecretKeySpec(key, "AES");
        final Cipher instance = Cipher.getInstance("AES");
        instance.init(2, key2);
        return instance.doFinal(input);
    }
    
    public static String encrypt(final String s, final String s2) throws Exception {
        return toHex(encrypt(getRawKey(s.getBytes()), s2.getBytes()));
    }
    
    private static byte[] encrypt(final byte[] key, final byte[] input) throws Exception {
        final SecretKeySpec key2 = new SecretKeySpec(key, "AES");
        final Cipher instance = Cipher.getInstance("AES");
        instance.init(1, key2);
        return instance.doFinal(input);
    }
    
    public static String fromHex(final String s) {
        return new String(toByte(s));
    }
    
    private static byte[] getRawKey(final byte[] seed) throws Exception {
        final KeyGenerator instance = KeyGenerator.getInstance("AES");
        final SecureRandom instance2 = SecureRandom.getInstance("SHA1PRNG");
        instance2.setSeed(seed);
        instance.init(256, instance2);
        return instance.generateKey().getEncoded();
    }
    
    public static byte[] toByte(final String s) {
        final int n = s.length() / 2;
        final byte[] array = new byte[n];
        for (int i = 0; i < n; ++i) {
            array[i] = (byte)(Object)Integer.valueOf(s.substring(i * 2, 2 + i * 2), 16);
        }
        return array;
    }
    
    public static String toHex(final String s) {
        return toHex(s.getBytes());
    }
    
    public static String toHex(final byte[] array) {
        if (array == null) {
            return "";
        }
        final StringBuffer sb = new StringBuffer(2 * array.length);
        for (int i = 0; i < array.length; ++i) {
            appendHex(sb, array[i]);
        }
        return sb.toString();
    }
}
