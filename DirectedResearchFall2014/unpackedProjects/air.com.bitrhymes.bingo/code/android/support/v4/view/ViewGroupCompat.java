package android.support.v4.view;

import android.os.*;
import android.view.*;
import android.view.accessibility.*;

public class ViewGroupCompat
{
    static final ViewGroupCompatImpl IMPL;
    
    static {
        final int sdk_INT = Build$VERSION.SDK_INT;
        if (sdk_INT >= 14) {
            IMPL = (ViewGroupCompatImpl)new ViewGroupCompatIcsImpl();
            return;
        }
        if (sdk_INT >= 11) {
            IMPL = (ViewGroupCompatImpl)new ViewGroupCompatHCImpl();
            return;
        }
        IMPL = (ViewGroupCompatImpl)new ViewGroupCompatStubImpl();
    }
    
    public static boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
        return ViewGroupCompat.IMPL.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }
    
    public static void setMotionEventSplittingEnabled(final ViewGroup viewGroup, final boolean b) {
        ViewGroupCompat.IMPL.setMotionEventSplittingEnabled(viewGroup, b);
    }
    
    static class ViewGroupCompatHCImpl extends ViewGroupCompatStubImpl
    {
        @Override
        public void setMotionEventSplittingEnabled(final ViewGroup viewGroup, final boolean b) {
            ViewGroupCompatHC.setMotionEventSplittingEnabled(viewGroup, b);
        }
    }
    
    static class ViewGroupCompatIcsImpl extends ViewGroupCompatHCImpl
    {
        @Override
        public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
            return ViewGroupCompatIcs.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }
    
    interface ViewGroupCompatImpl
    {
        boolean onRequestSendAccessibilityEvent(ViewGroup p0, View p1, AccessibilityEvent p2);
        
        void setMotionEventSplittingEnabled(ViewGroup p0, boolean p1);
    }
    
    static class ViewGroupCompatStubImpl implements ViewGroupCompatImpl
    {
        @Override
        public boolean onRequestSendAccessibilityEvent(final ViewGroup viewGroup, final View view, final AccessibilityEvent accessibilityEvent) {
            return true;
        }
        
        @Override
        public void setMotionEventSplittingEnabled(final ViewGroup viewGroup, final boolean b) {
        }
    }
}
