package android.support.v4.app;

import android.graphics.drawable.*;
import android.content.res.*;
import android.util.*;
import android.app.*;
import java.lang.reflect.*;
import android.widget.*;
import android.view.*;

class ActionBarDrawerToggleHoneycomb
{
    private static final String TAG = "ActionBarDrawerToggleHoneycomb";
    private static final int[] THEME_ATTRS;
    
    static {
        THEME_ATTRS = new int[] { 16843531 };
    }
    
    public static Drawable getThemeUpIndicator(final Activity activity) {
        final TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(ActionBarDrawerToggleHoneycomb.THEME_ATTRS);
        final Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }
    
    public static Object setActionBarDescription(Object o, final Activity activity, final int i) {
        if (o == null) {
            o = new SetIndicatorInfo(activity);
        }
        final SetIndicatorInfo setIndicatorInfo = (SetIndicatorInfo)o;
        if (setIndicatorInfo.setHomeAsUpIndicator == null) {
            return o;
        }
        try {
            setIndicatorInfo.setHomeActionContentDescription.invoke(activity.getActionBar(), i);
            return o;
        }
        catch (Exception ex) {
            Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", (Throwable)ex);
            return o;
        }
    }
    
    public static Object setActionBarUpIndicator(Object o, final Activity activity, final Drawable imageDrawable, final int i) {
        if (o == null) {
            o = new SetIndicatorInfo(activity);
        }
        final SetIndicatorInfo setIndicatorInfo = (SetIndicatorInfo)o;
        if (setIndicatorInfo.setHomeAsUpIndicator != null) {
            try {
                final ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo.setHomeAsUpIndicator.invoke(actionBar, imageDrawable);
                setIndicatorInfo.setHomeActionContentDescription.invoke(actionBar, i);
                return o;
            }
            catch (Exception ex) {
                Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", (Throwable)ex);
                return o;
            }
        }
        if (setIndicatorInfo.upIndicatorView != null) {
            setIndicatorInfo.upIndicatorView.setImageDrawable(imageDrawable);
            return o;
        }
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
        return o;
    }
    
    private static class SetIndicatorInfo
    {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;
        
        SetIndicatorInfo(final Activity activity) {
            super();
            try {
                this.setHomeAsUpIndicator = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.setHomeActionContentDescription = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            }
            catch (NoSuchMethodException ex) {
                final View viewById = activity.findViewById(16908332);
                if (viewById == null) {
                    return;
                }
                final ViewGroup viewGroup = (ViewGroup)viewById.getParent();
                if (viewGroup.getChildCount() != 2) {
                    return;
                }
                final View child = viewGroup.getChildAt(0);
                final View child2 = viewGroup.getChildAt(1);
                Object o;
                if (child.getId() == 16908332) {
                    o = child2;
                }
                else {
                    o = child;
                }
                if (o instanceof ImageView) {
                    this.upIndicatorView = (ImageView)o;
                }
            }
        }
    }
}
