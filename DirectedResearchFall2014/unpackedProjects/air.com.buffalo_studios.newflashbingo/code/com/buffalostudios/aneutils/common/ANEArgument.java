package com.buffalostudios.aneutils.common;

import java.nio.*;
import com.adobe.fre.*;

public class ANEArgument
{
    public static ByteBuffer asByteBuffer(final FREObject freObject, final boolean b) {
        if (freObject == null) {
            return null;
        }
        final FREByteArray freByteArray = (FREByteArray)freObject;
        int n = 0;
        ByteBuffer allocateDirect = null;
        while (true) {
            try {
                freByteArray.acquire();
                n = (int)freByteArray.getLength();
                final ByteBuffer bytes = freByteArray.getBytes();
                bytes.position(0);
                freByteArray.release();
                allocateDirect = null;
                while (true) {
                    Label_0106: {
                        if (!b) {
                            break Label_0106;
                        }
                        final boolean direct = bytes.isDirect();
                        allocateDirect = null;
                        if (direct) {
                            break Label_0106;
                        }
                        allocateDirect = ByteBuffer.allocateDirect(bytes.limit());
                        allocateDirect.put(bytes);
                        allocateDirect.position(0);
                        if (n == 0 || allocateDirect == null) {
                            ANEHelper.setError("ERROR: Failed to get argument in ANEArgument.asByteBuffer");
                            return null;
                        }
                        return allocateDirect;
                    }
                    allocateDirect = bytes;
                    continue;
                }
            }
            catch (IllegalStateException ex) {
                ANEHelper.setError("ERROR: IllegalStateException in ANEArgument.asByteBuffer");
                continue;
            }
            catch (FREInvalidObjectException ex2) {
                ANEHelper.setError("ERROR: FREInvalidObjectException in ANEArgument.asByteBuffer");
                continue;
            }
            catch (FREWrongThreadException ex3) {
                ANEHelper.setError("ERROR: FREWrongThreadException in ANEArgument.asByteBuffer");
                continue;
            }
            break;
        }
        return allocateDirect;
    }
    
    public static byte[] asBytes(final FREObject freObject) {
        if (freObject == null) {
            return null;
        }
        final FREByteArray freByteArray = (FREByteArray)freObject;
        int n = 0;
        ByteBuffer bytes = null;
        while (true) {
            try {
                freByteArray.acquire();
                n = (int)freByteArray.getLength();
                bytes = freByteArray.getBytes();
                freByteArray.release();
                if (n == 0 || bytes == null) {
                    ANEHelper.setError("ERROR: Failed to get argument in ANEArgument.asBytes");
                    return null;
                }
            }
            catch (IllegalStateException ex) {
                ANEHelper.setError("ERROR: IllegalStateException in ANEArgument.asBytes");
                continue;
            }
            catch (FREInvalidObjectException ex2) {
                ANEHelper.setError("ERROR: FREInvalidObjectException in ANEArgument.asBytes");
                continue;
            }
            catch (FREWrongThreadException ex3) {
                ANEHelper.setError("ERROR: FREWrongThreadException in ANEArgument.asBytes");
                continue;
            }
            break;
        }
        final byte[] dst = new byte[n];
        bytes.get(dst);
        return dst;
    }
    
    public static int asInt(final FREObject freObject) {
        try {
            return freObject.getAsInt();
        }
        catch (IllegalStateException ex) {
            ANEHelper.setError("ERROR: IllegalStateException in ANEArgument.asInt");
        }
        catch (FRETypeMismatchException ex2) {
            ANEHelper.setError("ERROR: FRETypeMismatchException in ANEArgument.asInt");
            goto Label_0016;
        }
        catch (FREInvalidObjectException ex3) {
            ANEHelper.setError("ERROR: FREInvalidObjectException in ANEArgument.asInt");
            goto Label_0016;
        }
        catch (FREWrongThreadException ex4) {
            ANEHelper.setError("ERROR: FREWrongThreadException in ANEArgument.asInt");
            goto Label_0016;
        }
    }
    
    public static int[] asInts(final FREObject freObject) {
        if (freObject == null) {
            return null;
        }
        final FREByteArray freByteArray = (FREByteArray)freObject;
        int n = 0;
        ByteBuffer bytes = null;
        while (true) {
            try {
                freByteArray.acquire();
                n = (int)freByteArray.getLength();
                bytes = freByteArray.getBytes();
                freByteArray.release();
                if (n == 0 || bytes == null) {
                    ANEHelper.setError("ERROR: Failed to get argument in ANEArgument.asInts");
                    return null;
                }
            }
            catch (IllegalStateException ex) {
                ANEHelper.setError("ERROR: IllegalStateException in ANEArgument.asInts");
                continue;
            }
            catch (FREInvalidObjectException ex2) {
                ANEHelper.setError("ERROR: FREInvalidObjectException in ANEArgument.asInts");
                continue;
            }
            catch (FREWrongThreadException ex3) {
                ANEHelper.setError("ERROR: FREWrongThreadException in ANEArgument.asInts");
                continue;
            }
            break;
        }
        final int[] dst = new int[n / 4];
        bytes.asIntBuffer().get(dst);
        return dst;
    }
    
    public static String asString(final FREObject freObject) {
        try {
            return freObject.getAsString();
        }
        catch (IllegalStateException ex) {
            ANEHelper.setError("ERROR: IllegalStateException in ANEArgument.asString");
        }
        catch (FRETypeMismatchException ex2) {
            ANEHelper.setError("ERROR: FRETypeMismatchException in ANEArgument.asString");
            goto Label_0016;
        }
        catch (FREInvalidObjectException ex3) {
            ANEHelper.setError("ERROR: FREInvalidObjectException in ANEArgument.asString");
            goto Label_0016;
        }
        catch (FREWrongThreadException ex4) {
            ANEHelper.setError("ERROR: FREWrongThreadException in ANEArgument.asString");
            goto Label_0016;
        }
    }
}
