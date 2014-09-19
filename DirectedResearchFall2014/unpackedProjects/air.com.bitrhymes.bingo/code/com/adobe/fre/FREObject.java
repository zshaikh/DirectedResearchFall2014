package com.adobe.fre;

public class FREObject
{
    private long m_objectPointer;
    
    protected FREObject(final double n) throws FREWrongThreadException {
        super();
        this.FREObjectFromDouble(n);
    }
    
    protected FREObject(final int n) throws FREWrongThreadException {
        super();
        this.FREObjectFromInt(n);
    }
    
    protected FREObject(final CFREObjectWrapper cfreObjectWrapper) {
        super();
        this.m_objectPointer = cfreObjectWrapper.m_objectPointer;
    }
    
    protected FREObject(final String s) throws FREWrongThreadException {
        super();
        this.FREObjectFromString(s);
    }
    
    public FREObject(final String s, final FREObject[] array) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException {
        super();
        this.FREObjectFromClass(s, array);
    }
    
    protected FREObject(final boolean b) throws FREWrongThreadException {
        super();
        this.FREObjectFromBoolean(b);
    }
    
    private native void FREObjectFromBoolean(final boolean p0) throws FREWrongThreadException;
    
    private native void FREObjectFromClass(final String p0, final FREObject[] p1) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException;
    
    private native void FREObjectFromDouble(final double p0) throws FREWrongThreadException;
    
    private native void FREObjectFromInt(final int p0) throws FREWrongThreadException;
    
    private native void FREObjectFromString(final String p0) throws FREWrongThreadException;
    
    public static FREObject newObject(final double n) throws FREWrongThreadException {
        return new FREObject(n);
    }
    
    public static FREObject newObject(final int n) throws FREWrongThreadException {
        return new FREObject(n);
    }
    
    public static FREObject newObject(final String s) throws FREWrongThreadException {
        return new FREObject(s);
    }
    
    public static native FREObject newObject(final String p0, final FREObject[] p1) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException;
    
    public static FREObject newObject(final boolean b) throws FREWrongThreadException {
        return new FREObject(b);
    }
    
    public native FREObject callMethod(final String p0, final FREObject[] p1) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException;
    
    public native boolean getAsBool() throws FRETypeMismatchException, FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native double getAsDouble() throws FRETypeMismatchException, FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native int getAsInt() throws FRETypeMismatchException, FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native String getAsString() throws FRETypeMismatchException, FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
    
    public native FREObject getProperty(final String p0) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException;
    
    public native void setProperty(final String p0, final FREObject p1) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREReadOnlyException, FREWrongThreadException, IllegalStateException;
    
    protected static class CFREObjectWrapper
    {
        private long m_objectPointer;
        
        private CFREObjectWrapper(final long objectPointer) {
            super();
            this.m_objectPointer = objectPointer;
        }
    }
}
