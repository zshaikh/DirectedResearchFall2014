package com.flurry.org.apache.avro.util;

import java.io.*;
import com.flurry.org.apache.avro.io.*;

public class Utf8 implements Comparable<Utf8>, CharSequence
{
    private static final byte[] EMPTY;
    private byte[] bytes;
    private int length;
    private String string;
    
    static {
        EMPTY = new byte[0];
    }
    
    public Utf8() {
        super();
        this.bytes = Utf8.EMPTY;
    }
    
    public Utf8(final Utf8 utf8) {
        super();
        this.bytes = Utf8.EMPTY;
        this.length = utf8.length;
        this.bytes = new byte[utf8.length];
        System.arraycopy(utf8.bytes, 0, this.bytes, 0, this.length);
        this.string = utf8.string;
    }
    
    public Utf8(final String string) {
        super();
        this.bytes = Utf8.EMPTY;
        this.bytes = getBytesFor(string);
        this.length = this.bytes.length;
        this.string = string;
    }
    
    public Utf8(final byte[] bytes) {
        super();
        this.bytes = Utf8.EMPTY;
        this.bytes = bytes;
        this.length = bytes.length;
    }
    
    public static final byte[] getBytesFor(final String s) {
        try {
            return s.getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            ex.printStackTrace();
            return new byte[0];
        }
    }
    
    @Override
    public char charAt(final int index) {
        return this.toString().charAt(index);
    }
    
    @Override
    public int compareTo(final Utf8 utf8) {
        return BinaryData.compareBytes(this.bytes, 0, this.length, utf8.bytes, 0, utf8.length);
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Utf8)) {
            return false;
        }
        final Utf8 utf8 = (Utf8)o;
        if (this.length != utf8.length) {
            return false;
        }
        final byte[] bytes = utf8.bytes;
        for (int i = 0; i < this.length; ++i) {
            if (this.bytes[i] != bytes[i]) {
                return false;
            }
        }
        return true;
    }
    
    public int getByteLength() {
        return this.length;
    }
    
    public byte[] getBytes() {
        return this.bytes;
    }
    
    public int getLength() {
        return this.length;
    }
    
    @Override
    public int hashCode() {
        int n = 0;
        for (int i = 0; i < this.length; ++i) {
            n = n * 31 + this.bytes[i];
        }
        return n;
    }
    
    @Override
    public int length() {
        return this.toString().length();
    }
    
    public Utf8 setByteLength(final int length) {
        if (this.length < length) {
            final byte[] bytes = new byte[length];
            System.arraycopy(this.bytes, 0, bytes, 0, this.length);
            this.bytes = bytes;
        }
        this.length = length;
        this.string = null;
        return this;
    }
    
    public Utf8 setLength(final int byteLength) {
        return this.setByteLength(byteLength);
    }
    
    @Override
    public CharSequence subSequence(final int beginIndex, final int endIndex) {
        return this.toString().subSequence(beginIndex, endIndex);
    }
    
    @Override
    public String toString() {
        Label_0029: {
            if (this.string != null) {
                break Label_0029;
            }
            try {
                this.string = new String(this.bytes, 0, this.length, "UTF-8");
                return this.string;
            }
            catch (UnsupportedEncodingException ex) {
                ex.printStackTrace();
                return this.string;
            }
        }
    }
}
