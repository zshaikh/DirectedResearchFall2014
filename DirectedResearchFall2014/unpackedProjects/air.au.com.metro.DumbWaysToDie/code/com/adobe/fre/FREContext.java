package com.adobe.fre;

import java.util.*;
import android.app.*;
import android.content.res.*;

public abstract class FREContext
{
    private long m_objectPointer;
    
    private native void registerFunction(final long p0, final String p1, final FREFunction p2);
    
    private native void registerFunctionCount(final long p0, final int p1);
    
    protected void VisitFunctions(final long n) {
        final Map<String, FREFunction> functions = this.getFunctions();
        this.registerFunctionCount(n, functions.size());
        for (final Map.Entry<String, FREFunction> entry : functions.entrySet()) {
            this.registerFunction(n, entry.getKey(), entry.getValue());
        }
    }
    
    public native void dispatchStatusEventAsync(final String p0, final String p1) throws IllegalArgumentException, IllegalStateException;
    
    public abstract void dispose();
    
    public native FREObject getActionScriptData() throws FREWrongThreadException, IllegalStateException;
    
    public native Activity getActivity() throws IllegalStateException;
    
    public abstract Map<String, FREFunction> getFunctions();
    
    public native int getResourceId(final String p0) throws IllegalArgumentException, Resources$NotFoundException, IllegalStateException;
    
    public native void setActionScriptData(final FREObject p0) throws FREWrongThreadException, IllegalArgumentException, IllegalStateException;
}
