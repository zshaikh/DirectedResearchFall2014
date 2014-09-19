package com.buffalostudios.aneutils.common;

import java.nio.*;
import com.adobe.fre.*;

public class ANEHelper
{
    private static final String NO_ERROR = "NO_ERROR";
    private static String _errorMsg;
    private static boolean _isError;
    
    static {
        ANEHelper._errorMsg = "NO_ERROR";
        ANEHelper._isError = false;
    }
    
    public static String getError() {
        final String errorMsg = ANEHelper._errorMsg;
        ANEHelper._errorMsg = "NO_ERROR";
        ANEHelper._isError = false;
        return errorMsg;
    }
    
    public static int getFREBitmapDataHeight(final FREBitmapData freBitmapData) {
        try {
            freBitmapData.acquire();
            final int height = freBitmapData.getHeight();
            freBitmapData.release();
            return height;
        }
        catch (IllegalStateException ex) {
            setError("ERROR: IllegalStateException in ANEHelper.getFREBitmapDataHeight");
        }
        catch (FREInvalidObjectException ex2) {
            setError("ERROR: FREInvalidObjectException in ANEHelper.getFREBitmapDataHeight");
            goto Label_0023;
        }
        catch (FREWrongThreadException ex3) {
            setError("ERROR: FREWrongThreadException in ANEHelper.getFREBitmapDataHeight");
            goto Label_0023;
        }
    }
    
    public static ByteBuffer getFREBitmapDataPixels(final FREBitmapData freBitmapData, final boolean b) {
        try {
            freBitmapData.acquire();
            final ByteBuffer bits = freBitmapData.getBits();
            bits.position(0);
            freBitmapData.release();
            ByteBuffer allocateDirect;
            if (b && !bits.isDirect()) {
                allocateDirect = ByteBuffer.allocateDirect(bits.limit());
                allocateDirect.put(bits);
            }
            else {
                allocateDirect = bits;
            }
            allocateDirect.position(0);
            return allocateDirect;
        }
        catch (IllegalStateException ex) {
            setError("ERROR: IllegalStateException in ANEHelper.getFREBitmapDataPixels");
        }
        catch (FREInvalidObjectException ex2) {
            setError("ERROR: FREInvalidObjectException in ANEHelper.getFREBitmapDataPixels");
            goto Label_0075;
        }
        catch (FREWrongThreadException ex3) {
            setError("ERROR: FREWrongThreadException in ANEHelper.getFREBitmapDataPixels");
            goto Label_0075;
        }
    }
    
    public static int getFREBitmapDataWidth(final FREBitmapData freBitmapData) {
        try {
            freBitmapData.acquire();
            final int width = freBitmapData.getWidth();
            freBitmapData.release();
            return width;
        }
        catch (IllegalStateException ex) {
            setError("ERROR: IllegalStateException in ANEHelper.getFREBitmapDataWidth");
        }
        catch (FREInvalidObjectException ex2) {
            setError("ERROR: FREInvalidObjectException in ANEHelper.getFREBitmapDataWidth");
            goto Label_0023;
        }
        catch (FREWrongThreadException ex3) {
            setError("ERROR: FREWrongThreadException in ANEHelper.getFREBitmapDataWidth");
            goto Label_0023;
        }
    }
    
    public static FREBitmapData newFREBitmapData(final int i, final int j, final boolean b, final ByteBuffer src) {
        if (src == null) {
            setError("ERROR: Invalid argument in ANEHelper.newFREBitmapData");
            return null;
        }
        final Byte[] array = { (byte)0, (byte)0, (byte)0, (byte)0 };
        try {
            final FREBitmapData bitmapData = FREBitmapData.newBitmapData(i, j, b, array);
            bitmapData.acquire();
            final ByteBuffer bits = bitmapData.getBits();
            bits.put(src);
            bits.position(0);
            bitmapData.release();
            return bitmapData;
        }
        catch (IllegalArgumentException ex) {
            setError("ERROR: IllegalArgumentException in ANEHelper.newFREBitmapData");
        }
        catch (FREASErrorException ex2) {
            setError("ERROR: FREASErrorException in ANEHelper.newFREBitmapData width = " + Integer.toString(i) + " height = " + Integer.toString(j));
            goto Label_0100;
        }
        catch (FREWrongThreadException ex3) {
            setError("ERROR: FREWrongThreadException in ANEHelper.newFREBitmapData");
            goto Label_0100;
        }
        catch (IllegalStateException ex4) {
            setError("ERROR: IllegalStateException in ANEHelper.newFREBitmapData");
            goto Label_0100;
        }
        catch (FREInvalidObjectException ex5) {
            setError("ERROR: FREInvalidObjectException in ANEHelper.newFREBitmapData");
            goto Label_0100;
        }
    }
    
    public static FREBitmapData newFREBitmapData(final int n, final int n2, final boolean b, final byte[] src, final int offset, final int length) {
        if (src == null) {
            setError("ERROR: Invalid argument in ANEHelper.newFREBitmapData");
            return null;
        }
        final Byte[] array = { (byte)0, (byte)0, (byte)0, (byte)0 };
        try {
            final FREBitmapData bitmapData = FREBitmapData.newBitmapData(n, n2, b, array);
            bitmapData.acquire();
            final ByteBuffer bits = bitmapData.getBits();
            bits.put(src, offset, length);
            bits.position(0);
            bitmapData.release();
            return bitmapData;
        }
        catch (IllegalArgumentException ex) {
            setError("ERROR: IllegalArgumentException in ANEHelper.newFREBitmapData");
        }
        catch (FREASErrorException ex2) {
            setError("ERROR: FREASErrorException in ANEHelper.newFREBitmapData");
            goto Label_0104;
        }
        catch (FREWrongThreadException ex3) {
            setError("ERROR: FREWrongThreadException in ANEHelper.newFREBitmapData");
            goto Label_0104;
        }
        catch (IllegalStateException ex4) {
            setError("ERROR: IllegalStateException in ANEHelper.newFREBitmapData");
            goto Label_0104;
        }
        catch (FREInvalidObjectException ex5) {
            setError("ERROR: FREInvalidObjectException in ANEHelper.newFREBitmapData");
            goto Label_0104;
        }
    }
    
    public static FREObject newFREBoolean(final boolean b) {
        try {
            return FREObject.newObject(b);
        }
        catch (FREWrongThreadException ex) {
            setError("ERROR: FREWrongThreadException in ANEHelper.newFREBoolean");
            setError("ERROR: Failed to create FREObject in ANEHelper.newFREBoolean");
            return null;
        }
    }
    
    public static FREByteArray newFREByteArray(final ByteBuffer src, final String s) {
        try {
            final FREByteArray byteArray = FREByteArray.newByteArray();
            byteArray.setProperty("length", FREObject.newObject(src.limit()));
            byteArray.setProperty("endian", FREObject.newObject(s));
            byteArray.acquire();
            byteArray.getBytes().put(src);
            byteArray.release();
            return byteArray;
        }
        catch (FREASErrorException ex) {
            setError("ERROR: FREASErrorException in ANEHelper.newFREByteArray");
        }
        catch (FREWrongThreadException ex2) {
            setError("ERROR: FREWrongThreadException in ANEHelper.newFREByteArray");
            goto Label_0060;
        }
        catch (IllegalStateException ex3) {
            setError("ERROR: IllegalStateException in ANEHelper.newFREByteArray");
            goto Label_0060;
        }
        catch (FRETypeMismatchException ex4) {
            setError("ERROR: FRETypeMismatchException in ANEHelper.newFREByteArray");
            goto Label_0060;
        }
        catch (FREInvalidObjectException ex5) {
            setError("ERROR: FREInvalidObjectException in ANEHelper.newFREByteArray");
            goto Label_0060;
        }
        catch (FRENoSuchNameException ex6) {
            setError("ERROR: FRENoSuchNameException in ANEHelper.newFREByteArray");
            goto Label_0060;
        }
        catch (FREReadOnlyException ex7) {
            setError("ERROR: FREReadOnlyException in ANEHelper.newFREByteArray");
            goto Label_0060;
        }
    }
    
    public static FREByteArray newFREByteArray(final byte[] src, final String s) {
        try {
            final FREByteArray byteArray = FREByteArray.newByteArray();
            byteArray.setProperty("length", FREObject.newObject(src.length));
            byteArray.setProperty("endian", FREObject.newObject(s));
            byteArray.acquire();
            byteArray.getBytes().put(src);
            byteArray.release();
            return byteArray;
        }
        catch (FREASErrorException ex) {
            setError("ERROR: FREASErrorException in ANEHelper.newFREByteArray");
        }
        catch (FREWrongThreadException ex2) {
            setError("ERROR: FREWrongThreadException in ANEHelper.newFREByteArray");
            goto Label_0058;
        }
        catch (IllegalStateException ex3) {
            setError("ERROR: IllegalStateException in ANEHelper.newFREByteArray");
            goto Label_0058;
        }
        catch (FRETypeMismatchException ex4) {
            setError("ERROR: FRETypeMismatchException in ANEHelper.newFREByteArray");
            goto Label_0058;
        }
        catch (FREInvalidObjectException ex5) {
            setError("ERROR: FREInvalidObjectException in ANEHelper.newFREByteArray");
            goto Label_0058;
        }
        catch (FRENoSuchNameException ex6) {
            setError("ERROR: FRENoSuchNameException in ANEHelper.newFREByteArray");
            goto Label_0058;
        }
        catch (FREReadOnlyException ex7) {
            setError("ERROR: FREReadOnlyException in ANEHelper.newFREByteArray");
            goto Label_0058;
        }
    }
    
    public static FREObject newFREInt(final int n) {
        try {
            return FREObject.newObject(n);
        }
        catch (FREWrongThreadException ex) {
            setError("ERROR: FREWrongThreadException in ANEHelper.newFREInt");
            setError("ERROR: Failed to create FREObject in ANEHelper.newFREInt");
            return null;
        }
    }
    
    public static FREObject newFREString(final String s) {
        try {
            return FREObject.newObject(s);
        }
        catch (FREWrongThreadException ex) {
            setError("ERROR: FREWrongThreadException in ANEHelper.newFREString");
            setError("ERROR: Failed to create FREObject in ANEHelper.newFREString");
            return null;
        }
    }
    
    public static void setError(final String errorMsg) {
        if (ANEHelper._isError) {
            return;
        }
        ANEHelper._errorMsg = errorMsg;
        ANEHelper._isError = true;
    }
}
