package com.fusepowered.m2.m2l;

import java.util.*;

abstract class MraidCommand
{
    protected static final String URI_KEY = "uri";
    protected Map<String, String> mParams;
    protected MraidView mView;
    
    MraidCommand(final Map<String, String> mParams, final MraidView mView) {
        super();
        this.mParams = mParams;
        this.mView = mView;
    }
    
    abstract void execute();
    
    protected boolean getBooleanFromParamsForKey(final String s) {
        return "true".equals(this.mParams.get(s));
    }
    
    protected float getFloatFromParamsForKey(final String s) {
        if (this.mParams.get(s) == null) {
            return 0.0f;
        }
        try {
            return Float.parseFloat(s);
        }
        catch (NumberFormatException ex) {
            return 0.0f;
        }
    }
    
    protected int getIntFromParamsForKey(final String s) {
        final String s2 = this.mParams.get(s);
        if (s2 == null) {
            return -1;
        }
        try {
            return Integer.parseInt(s2, 10);
        }
        catch (NumberFormatException ex) {
            return -1;
        }
    }
    
    protected String getStringFromParamsForKey(final String s) {
        return this.mParams.get(s);
    }
    
    protected boolean isCommandDependentOnUserClick(final MraidView.PlacementType placementType) {
        return false;
    }
}
