package com.adobe.fre;

import java.nio.*;

public class FREBitmapData extends FREObject
{
    private long m_dataPointer;
    
    private FREBitmapData(final CFREObjectWrapper cfreObjectWrapper) {
        super(cfreObjectWrapper);
    }
    
    protected FREBitmapData(final FREObject[] array) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException {
        super("flash.display.BitmapData", array);
    }
    
    public static FREBitmapData newBitmapData(final int n, final int n2, final boolean b, final Byte[] array) throws FREASErrorException, FREWrongThreadException, IllegalArgumentException {
        if (array.length != 4) {
            throw new IllegalArgumentException("fillColor has wrong length");
        }
        final FREObject[] array2 = { new FREObject(n), new FREObject(n2), new FREObject(b), null };
        int n3 = 0;
        int n4 = -1;
        for (int i = 0; i < 4; ++i) {
            n3 |= (n4 & array[i] << 8 * (3 - i));
            n4 >>>= 8;
        }
        array2[3] = new FREObject(n3);
        try {
            return new FREBitmapData(array2);
        }
        catch (FRENoSuchNameException ex) {}
        catch (FREInvalidObjectException ex2) {
            goto Label_0142;
        }
        catch (FRETypeMismatchException ex3) {
            goto Label_0142;
        }
    }
    
    public native void acquire() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native ByteBuffer getBits() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native int getHeight() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native int getLineStride32() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native int getWidth() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native boolean hasAlpha() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native void invalidateRect(final int p0, final int p1, final int p2, final int p3) throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException, IllegalArgumentException;
    
    public native boolean isInvertedY() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native boolean isPremultiplied() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native void release() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
}
