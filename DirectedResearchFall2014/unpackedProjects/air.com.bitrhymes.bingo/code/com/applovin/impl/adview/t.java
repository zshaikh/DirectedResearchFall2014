package com.applovin.impl.adview;

import android.util.*;
import com.applovin.sdk.*;
import android.content.*;
import android.app.*;

class t
{
    static AppLovinAdSize a(final AttributeSet set) {
        if (set == null) {
            return null;
        }
        final String attributeValue = set.getAttributeValue("http://schemas.applovin.com/android/1.0", "size");
        if (attributeValue != null) {
            return AppLovinAdSize.fromString(attributeValue);
        }
        return null;
    }
    
    static String a(final AttributeSet set, final Context context) {
        String s = null;
        if (set != null) {
            s = set.getAttributeValue("http://schemas.applovin.com/android/1.0", "placement");
        }
        if (s == null && context instanceof Activity) {
            s = context.getClass().getName();
        }
        return s;
    }
    
    static boolean b(final AttributeSet set) {
        return set != null && set.getAttributeBooleanValue("http://schemas.applovin.com/android/1.0", "loadAdOnCreate", false);
    }
}
