package com.applovin.adview;

import android.view.*;
import android.content.*;
import android.util.*;

@Deprecated
public class AppLovinOptinView extends View
{
    public AppLovinOptinView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public AppLovinOptinView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.setVisibility(8);
    }
}
