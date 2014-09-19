package android.support.v4.view.accessibility;

import android.os.*;
import java.util.*;

public class AccessibilityNodeProviderCompat
{
    private static final AccessibilityNodeProviderImpl IMPL;
    private final Object mProvider;
    
    static {
        if (Build$VERSION.SDK_INT >= 16) {
            IMPL = (AccessibilityNodeProviderImpl)new AccessibilityNodeProviderJellyBeanImpl();
            return;
        }
        IMPL = (AccessibilityNodeProviderImpl)new AccessibilityNodeProviderStubImpl();
    }
    
    public AccessibilityNodeProviderCompat() {
        super();
        this.mProvider = AccessibilityNodeProviderCompat.IMPL.newAccessibilityNodeProviderBridge(this);
    }
    
    public AccessibilityNodeProviderCompat(final Object mProvider) {
        super();
        this.mProvider = mProvider;
    }
    
    public AccessibilityNodeInfoCompat createAccessibilityNodeInfo(final int n) {
        return null;
    }
    
    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(final String s, final int n) {
        return null;
    }
    
    public Object getProvider() {
        return this.mProvider;
    }
    
    public boolean performAction(final int n, final int n2, final Bundle bundle) {
        return false;
    }
    
    interface AccessibilityNodeProviderImpl
    {
        Object newAccessibilityNodeProviderBridge(AccessibilityNodeProviderCompat p0);
    }
    
    static class AccessibilityNodeProviderJellyBeanImpl extends AccessibilityNodeProviderStubImpl
    {
        @Override
        public Object newAccessibilityNodeProviderBridge(final AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return AccessibilityNodeProviderCompatJellyBean.newAccessibilityNodeProviderBridge((AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge)new AccessibilityNodeProviderCompatJellyBean.AccessibilityNodeInfoBridge() {
                @Override
                public Object createAccessibilityNodeInfo(final int n) {
                    final AccessibilityNodeInfoCompat accessibilityNodeInfo = accessibilityNodeProviderCompat.createAccessibilityNodeInfo(n);
                    if (accessibilityNodeInfo == null) {
                        return null;
                    }
                    return accessibilityNodeInfo.getInfo();
                }
                
                @Override
                public List<Object> findAccessibilityNodeInfosByText(final String s, final int n) {
                    final List<AccessibilityNodeInfoCompat> accessibilityNodeInfosByText = accessibilityNodeProviderCompat.findAccessibilityNodeInfosByText(s, n);
                    final ArrayList<Object> list = new ArrayList<Object>();
                    for (int size = accessibilityNodeInfosByText.size(), i = 0; i < size; ++i) {
                        list.add(accessibilityNodeInfosByText.get(i).getInfo());
                    }
                    return list;
                }
                
                @Override
                public boolean performAction(final int n, final int n2, final Bundle bundle) {
                    return accessibilityNodeProviderCompat.performAction(n, n2, bundle);
                }
            });
        }
    }
    
    static class AccessibilityNodeProviderStubImpl implements AccessibilityNodeProviderImpl
    {
        @Override
        public Object newAccessibilityNodeProviderBridge(final AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            return null;
        }
    }
}
