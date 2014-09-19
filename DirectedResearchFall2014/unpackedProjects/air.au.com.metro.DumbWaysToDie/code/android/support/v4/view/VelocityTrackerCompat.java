package android.support.v4.view;

import android.os.*;
import android.view.*;

public class VelocityTrackerCompat
{
    static final VelocityTrackerVersionImpl IMPL;
    
    static {
        if (Build$VERSION.SDK_INT >= 11) {
            IMPL = (VelocityTrackerVersionImpl)new HoneycombVelocityTrackerVersionImpl();
            return;
        }
        IMPL = (VelocityTrackerVersionImpl)new BaseVelocityTrackerVersionImpl();
    }
    
    public static float getXVelocity(final VelocityTracker velocityTracker, final int n) {
        return VelocityTrackerCompat.IMPL.getXVelocity(velocityTracker, n);
    }
    
    public static float getYVelocity(final VelocityTracker velocityTracker, final int n) {
        return VelocityTrackerCompat.IMPL.getYVelocity(velocityTracker, n);
    }
    
    static class BaseVelocityTrackerVersionImpl implements VelocityTrackerVersionImpl
    {
        @Override
        public float getXVelocity(final VelocityTracker velocityTracker, final int n) {
            return velocityTracker.getXVelocity();
        }
        
        @Override
        public float getYVelocity(final VelocityTracker velocityTracker, final int n) {
            return velocityTracker.getYVelocity();
        }
    }
    
    static class HoneycombVelocityTrackerVersionImpl implements VelocityTrackerVersionImpl
    {
        @Override
        public float getXVelocity(final VelocityTracker velocityTracker, final int n) {
            return VelocityTrackerCompatHoneycomb.getXVelocity(velocityTracker, n);
        }
        
        @Override
        public float getYVelocity(final VelocityTracker velocityTracker, final int n) {
            return VelocityTrackerCompatHoneycomb.getYVelocity(velocityTracker, n);
        }
    }
    
    interface VelocityTrackerVersionImpl
    {
        float getXVelocity(VelocityTracker p0, int p1);
        
        float getYVelocity(VelocityTracker p0, int p1);
    }
}
