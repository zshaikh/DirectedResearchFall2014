package com.adobe.fre;

public class FREArray extends FREObject
{
    private FREArray(final CFREObjectWrapper cfreObjectWrapper) {
        super(cfreObjectWrapper);
    }
    
    protected FREArray(final String str, final FREObject[] array) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException {
        super("Vector.<" + str + ">", array);
    }
    
    protected FREArray(final FREObject[] array) throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException {
        super("Array", array);
    }
    
    public static FREArray newArray(final int n) throws FREASErrorException, FREWrongThreadException, IllegalStateException {
        final FREObject[] array = { new FREObject(n) };
        try {
            return new FREArray(array);
        }
        catch (FRENoSuchNameException ex) {}
        catch (FREInvalidObjectException ex2) {
            goto Label_0029;
        }
        catch (FRETypeMismatchException ex3) {
            goto Label_0029;
        }
    }
    
    public static FREArray newArray(final String s, final int n, final boolean b) throws FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException {
        final FREObject[] array = { new FREObject(n), new FREObject(b) };
        try {
            return new FREArray(s, array);
        }
        catch (FREInvalidObjectException ex) {}
        catch (FRETypeMismatchException ex2) {
            goto Label_0043;
        }
    }
    
    public native long getLength() throws FREInvalidObjectException, FREWrongThreadException;
    
    public native FREObject getObjectAt(final long p0) throws FREInvalidObjectException, IllegalArgumentException, FREWrongThreadException;
    
    public native void setLength(final long p0) throws FREInvalidObjectException, IllegalArgumentException, FREReadOnlyException, FREWrongThreadException;
    
    public native void setObjectAt(final long p0, final FREObject p1) throws FREInvalidObjectException, FRETypeMismatchException, FREWrongThreadException;
}
