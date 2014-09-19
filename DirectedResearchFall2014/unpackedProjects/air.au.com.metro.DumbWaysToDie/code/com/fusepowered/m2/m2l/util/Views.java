package com.fusepowered.m2.m2l.util;

import android.view.*;

public class Views
{
    public static void removeFromParent(final View view) {
        if (view != null && view.getParent() != null && view.getParent() instanceof ViewGroup) {
            ((ViewGroup)view.getParent()).removeView(view);
        }
    }
}
