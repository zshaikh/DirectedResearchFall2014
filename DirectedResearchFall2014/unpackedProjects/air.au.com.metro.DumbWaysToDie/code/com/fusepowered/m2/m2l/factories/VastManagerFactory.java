package com.fusepowered.m2.m2l.factories;

import com.fusepowered.m2.m2l.util.vast.*;

public class VastManagerFactory
{
    protected static VastManagerFactory instance;
    
    static {
        VastManagerFactory.instance = new VastManagerFactory();
    }
    
    public static VastManager create() {
        return VastManagerFactory.instance.internalCreate();
    }
    
    @Deprecated
    public static void setInstance(final VastManagerFactory instance) {
        VastManagerFactory.instance = instance;
    }
    
    public VastManager internalCreate() {
        return new VastManager();
    }
}
