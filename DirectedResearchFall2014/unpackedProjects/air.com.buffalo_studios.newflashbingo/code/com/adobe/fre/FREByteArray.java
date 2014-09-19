package com.adobe.fre;

import java.nio.*;

public class FREByteArray extends FREObject
{
    private long m_dataPointer;
    
    protected FREByteArray() throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException {
        super("flash.utils.ByteArray", null);
    }
    
    private FREByteArray(final CFREObjectWrapper cfreObjectWrapper) {
        super(cfreObjectWrapper);
    }
    
    public static FREByteArray newByteArray() throws FREASErrorException, FREWrongThreadException, IllegalStateException {
        try {
            return new FREByteArray();
        }
        catch (FRENoSuchNameException ex) {}
        catch (FREInvalidObjectException ex2) {
            goto Label_0011;
        }
        catch (FRETypeMismatchException ex3) {
            goto Label_0011;
        }
    }
    
    public native void acquire() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native ByteBuffer getBytes() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native long getLength() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native void release() throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
}
