package com.adobe.air.utils;

import java.nio.*;
import java.nio.charset.*;
import java.util.*;

public class CharsetUtils
{
    public static final byte[] EMPTY_BARRAY;
    public static final char[] EMPTY_CARRAY;
    public static final String LOG_TAG;
    
    static {
        LOG_TAG = CharsetUtils.class.toString();
        EMPTY_CARRAY = new char[0];
        EMPTY_BARRAY = new byte[0];
    }
    
    public static byte[] ConvertMBCStoUTF16(final byte[] array, final String s) {
        try {
            return Charset.forName("UTF-16LE").encode(DecodeBuffer(array, s)).array();
        }
        catch (Exception ex) {
            return CharsetUtils.EMPTY_BARRAY;
        }
    }
    
    public static byte[] ConvertMBCStoUTF8(final byte[] array, final String s) {
        try {
            return Charset.forName("UTF-8").newEncoder().encode(DecodeBuffer(array, s)).array();
        }
        catch (Exception ex) {
            return CharsetUtils.EMPTY_BARRAY;
        }
    }
    
    public static byte[] ConvertUTF16toMBCS(final byte[] array, final String charsetName) {
        try {
            final CharBuffer decodeBuffer = DecodeBuffer(array, "UTF-16LE");
            final CharsetEncoder encoder = Charset.forName(charsetName).newEncoder();
            encoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return encoder.encode(decodeBuffer).array();
        }
        catch (Exception ex) {
            return CharsetUtils.EMPTY_BARRAY;
        }
    }
    
    public static byte[] ConvertUTF8toMBCS(final byte[] array, final String charsetName) {
        try {
            final CharBuffer decodeBuffer = DecodeBuffer(array, "UTF-8");
            final CharsetEncoder encoder = Charset.forName(charsetName).newEncoder();
            encoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            return encoder.encode(decodeBuffer).array();
        }
        catch (Exception ex) {
            return CharsetUtils.EMPTY_BARRAY;
        }
    }
    
    public static CharBuffer DecodeBuffer(final byte[] array, final String charsetName) throws CharacterCodingException {
        final CharsetDecoder decoder = Charset.forName(charsetName).newDecoder();
        decoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        return decoder.decode(ByteBuffer.wrap(array));
    }
    
    public static String QueryAvailableCharsets() {
        final Iterator<String> iterator = Charset.availableCharsets().keySet().iterator();
        String string = "";
        while (iterator.hasNext()) {
            string = string + iterator.next() + " ";
        }
        return string;
    }
    
    public static char[] mbcsToUtf16(final byte[] array) {
        try {
            char[] array2 = Charset.forName("ISO-8859-1").newDecoder().decode(ByteBuffer.wrap(array)).array();
            if (array2 == null) {
                array2 = CharsetUtils.EMPTY_CARRAY;
            }
            return array2;
        }
        catch (Exception ex) {
            return CharsetUtils.EMPTY_CARRAY;
        }
    }
    
    public static byte[] mbcsToUtf8(final byte[] array) {
        return utf16ToUtf8(mbcsToUtf16(array));
    }
    
    public static byte[] utf16ToUtf8(final char[] array) {
        try {
            byte[] array2 = Charset.forName("UTF-8").newEncoder().encode(CharBuffer.wrap(array)).array();
            if (array2 == null) {
                array2 = CharsetUtils.EMPTY_BARRAY;
            }
            return array2;
        }
        catch (Exception ex) {
            return CharsetUtils.EMPTY_BARRAY;
        }
    }
}
