package android.support.v4.view.accessibility;

import android.os.*;
import android.view.accessibility.*;
import android.accessibilityservice.*;
import java.util.*;

public class AccessibilityManagerCompat
{
    private static final AccessibilityManagerVersionImpl IMPL;
    
    static {
        if (Build$VERSION.SDK_INT >= 14) {
            IMPL = (AccessibilityManagerVersionImpl)new AccessibilityManagerIcsImpl();
            return;
        }
        IMPL = (AccessibilityManagerVersionImpl)new AccessibilityManagerStubImpl();
    }
    
    public static boolean addAccessibilityStateChangeListener(final AccessibilityManager accessibilityManager, final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return AccessibilityManagerCompat.IMPL.addAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat);
    }
    
    public static List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(final AccessibilityManager accessibilityManager, final int n) {
        return AccessibilityManagerCompat.IMPL.getEnabledAccessibilityServiceList(accessibilityManager, n);
    }
    
    public static List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(final AccessibilityManager accessibilityManager) {
        return AccessibilityManagerCompat.IMPL.getInstalledAccessibilityServiceList(accessibilityManager);
    }
    
    public static boolean isTouchExplorationEnabled(final AccessibilityManager accessibilityManager) {
        return AccessibilityManagerCompat.IMPL.isTouchExplorationEnabled(accessibilityManager);
    }
    
    public static boolean removeAccessibilityStateChangeListener(final AccessibilityManager accessibilityManager, final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
        return AccessibilityManagerCompat.IMPL.removeAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat);
    }
    
    static class AccessibilityManagerIcsImpl extends AccessibilityManagerStubImpl
    {
        @Override
        public boolean addAccessibilityStateChangeListener(final AccessibilityManager accessibilityManager, final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.addAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat.mListener);
        }
        
        @Override
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(final AccessibilityManager accessibilityManager, final int n) {
            return AccessibilityManagerCompatIcs.getEnabledAccessibilityServiceList(accessibilityManager, n);
        }
        
        @Override
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(final AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.getInstalledAccessibilityServiceList(accessibilityManager);
        }
        
        @Override
        public boolean isTouchExplorationEnabled(final AccessibilityManager accessibilityManager) {
            return AccessibilityManagerCompatIcs.isTouchExplorationEnabled(accessibilityManager);
        }
        
        @Override
        public Object newAccessiblityStateChangeListener(final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.newAccessibilityStateChangeListener((AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerBridge)new AccessibilityManagerCompatIcs.AccessibilityStateChangeListenerBridge() {
                @Override
                public void onAccessibilityStateChanged(final boolean b) {
                    accessibilityStateChangeListenerCompat.onAccessibilityStateChanged(b);
                }
            });
        }
        
        @Override
        public boolean removeAccessibilityStateChangeListener(final AccessibilityManager accessibilityManager, final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return AccessibilityManagerCompatIcs.removeAccessibilityStateChangeListener(accessibilityManager, accessibilityStateChangeListenerCompat.mListener);
        }
    }
    
    static class AccessibilityManagerStubImpl implements AccessibilityManagerVersionImpl
    {
        @Override
        public boolean addAccessibilityStateChangeListener(final AccessibilityManager accessibilityManager, final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }
        
        @Override
        public List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(final AccessibilityManager accessibilityManager, final int n) {
            return Collections.emptyList();
        }
        
        @Override
        public List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(final AccessibilityManager accessibilityManager) {
            return Collections.emptyList();
        }
        
        @Override
        public boolean isTouchExplorationEnabled(final AccessibilityManager accessibilityManager) {
            return false;
        }
        
        @Override
        public Object newAccessiblityStateChangeListener(final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return null;
        }
        
        @Override
        public boolean removeAccessibilityStateChangeListener(final AccessibilityManager accessibilityManager, final AccessibilityStateChangeListenerCompat accessibilityStateChangeListenerCompat) {
            return false;
        }
    }
    
    interface AccessibilityManagerVersionImpl
    {
        boolean addAccessibilityStateChangeListener(AccessibilityManager p0, AccessibilityStateChangeListenerCompat p1);
        
        List<AccessibilityServiceInfo> getEnabledAccessibilityServiceList(AccessibilityManager p0, int p1);
        
        List<AccessibilityServiceInfo> getInstalledAccessibilityServiceList(AccessibilityManager p0);
        
        boolean isTouchExplorationEnabled(AccessibilityManager p0);
        
        Object newAccessiblityStateChangeListener(AccessibilityStateChangeListenerCompat p0);
        
        boolean removeAccessibilityStateChangeListener(AccessibilityManager p0, AccessibilityStateChangeListenerCompat p1);
    }
    
    public abstract static class AccessibilityStateChangeListenerCompat
    {
        final Object mListener;
        
        public AccessibilityStateChangeListenerCompat() {
            super();
            this.mListener = AccessibilityManagerCompat.IMPL.newAccessiblityStateChangeListener(this);
        }
        
        public abstract void onAccessibilityStateChanged(final boolean p0);
    }
}
