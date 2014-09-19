package android.support.v4.graphics.drawable;

import android.os.*;
import android.graphics.drawable.*;

public class DrawableCompat
{
    static final DrawableImpl IMPL;
    
    static {
        if (Build$VERSION.SDK_INT >= 11) {
            IMPL = (DrawableImpl)new HoneycombDrawableImpl();
            return;
        }
        IMPL = (DrawableImpl)new BaseDrawableImpl();
    }
    
    public static void jumpToCurrentState(final Drawable drawable) {
        DrawableCompat.IMPL.jumpToCurrentState(drawable);
    }
    
    static class BaseDrawableImpl implements DrawableImpl
    {
        @Override
        public void jumpToCurrentState(final Drawable drawable) {
        }
    }
    
    interface DrawableImpl
    {
        void jumpToCurrentState(Drawable p0);
    }
    
    static class HoneycombDrawableImpl implements DrawableImpl
    {
        @Override
        public void jumpToCurrentState(final Drawable drawable) {
            DrawableCompatHoneycomb.jumpToCurrentState(drawable);
        }
    }
}
