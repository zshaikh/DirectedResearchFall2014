package android.support.v4.app;

import android.support.v4.widget.*;
import android.app.*;
import android.os.*;
import android.content.res.*;
import android.view.*;
import android.graphics.drawable.*;
import android.graphics.*;

public class ActionBarDrawerToggle implements DrawerListener
{
    private static final int ID_HOME = 16908332;
    private static final ActionBarDrawerToggleImpl IMPL;
    private final Activity mActivity;
    private final Delegate mActivityImpl;
    private final int mCloseDrawerContentDescRes;
    private Drawable mDrawerImage;
    private final int mDrawerImageResource;
    private boolean mDrawerIndicatorEnabled;
    private final DrawerLayout mDrawerLayout;
    private final int mOpenDrawerContentDescRes;
    private Object mSetIndicatorInfo;
    private SlideDrawable mSlider;
    private Drawable mThemeImage;
    
    static {
        if (Build$VERSION.SDK_INT >= 11) {
            IMPL = (ActionBarDrawerToggleImpl)new ActionBarDrawerToggleImplHC();
            return;
        }
        IMPL = (ActionBarDrawerToggleImpl)new ActionBarDrawerToggleImplBase();
    }
    
    public ActionBarDrawerToggle(final Activity mActivity, final DrawerLayout mDrawerLayout, final int mDrawerImageResource, final int mOpenDrawerContentDescRes, final int mCloseDrawerContentDescRes) {
        super();
        this.mDrawerIndicatorEnabled = true;
        this.mActivity = mActivity;
        this.mDrawerLayout = mDrawerLayout;
        this.mDrawerImageResource = mDrawerImageResource;
        this.mOpenDrawerContentDescRes = mOpenDrawerContentDescRes;
        this.mCloseDrawerContentDescRes = mCloseDrawerContentDescRes;
        this.mThemeImage = this.getThemeUpIndicator();
        this.mDrawerImage = mActivity.getResources().getDrawable(mDrawerImageResource);
        (this.mSlider = new SlideDrawable(this.mDrawerImage)).setOffsetBy(0.33333334f);
        if (mActivity instanceof DelegateProvider) {
            this.mActivityImpl = ((DelegateProvider)mActivity).getDrawerToggleDelegate();
            return;
        }
        this.mActivityImpl = null;
    }
    
    Drawable getThemeUpIndicator() {
        if (this.mActivityImpl != null) {
            return this.mActivityImpl.getThemeUpIndicator();
        }
        return ActionBarDrawerToggle.IMPL.getThemeUpIndicator(this.mActivity);
    }
    
    public boolean isDrawerIndicatorEnabled() {
        return this.mDrawerIndicatorEnabled;
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        this.mThemeImage = this.getThemeUpIndicator();
        this.mDrawerImage = this.mActivity.getResources().getDrawable(this.mDrawerImageResource);
        this.syncState();
    }
    
    @Override
    public void onDrawerClosed(final View view) {
        this.mSlider.setOffset(0.0f);
        if (this.mDrawerIndicatorEnabled) {
            this.setActionBarDescription(this.mCloseDrawerContentDescRes);
        }
    }
    
    @Override
    public void onDrawerOpened(final View view) {
        this.mSlider.setOffset(1.0f);
        if (this.mDrawerIndicatorEnabled) {
            this.setActionBarDescription(this.mOpenDrawerContentDescRes);
        }
    }
    
    @Override
    public void onDrawerSlide(final View view, final float n) {
        final float offset = this.mSlider.getOffset();
        float offset2;
        if (n > 0.5f) {
            offset2 = Math.max(offset, 2.0f * Math.max(0.0f, n - 0.5f));
        }
        else {
            offset2 = Math.min(offset, n * 2.0f);
        }
        this.mSlider.setOffset(offset2);
    }
    
    @Override
    public void onDrawerStateChanged(final int n) {
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        if (menuItem != null && menuItem.getItemId() == 16908332 && this.mDrawerIndicatorEnabled) {
            if (this.mDrawerLayout.isDrawerVisible(8388611)) {
                this.mDrawerLayout.closeDrawer(8388611);
            }
            else {
                this.mDrawerLayout.openDrawer(8388611);
            }
            return true;
        }
        return false;
    }
    
    void setActionBarDescription(final int actionBarDescription) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarDescription(actionBarDescription);
            return;
        }
        this.mSetIndicatorInfo = ActionBarDrawerToggle.IMPL.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, actionBarDescription);
    }
    
    void setActionBarUpIndicator(final Drawable drawable, final int n) {
        if (this.mActivityImpl != null) {
            this.mActivityImpl.setActionBarUpIndicator(drawable, n);
            return;
        }
        this.mSetIndicatorInfo = ActionBarDrawerToggle.IMPL.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, drawable, n);
    }
    
    public void setDrawerIndicatorEnabled(final boolean mDrawerIndicatorEnabled) {
        if (mDrawerIndicatorEnabled != this.mDrawerIndicatorEnabled) {
            if (mDrawerIndicatorEnabled) {
                final SlideDrawable mSlider = this.mSlider;
                int n;
                if (this.mDrawerLayout.isDrawerOpen(8388611)) {
                    n = this.mOpenDrawerContentDescRes;
                }
                else {
                    n = this.mCloseDrawerContentDescRes;
                }
                this.setActionBarUpIndicator(mSlider, n);
            }
            else {
                this.setActionBarUpIndicator(this.mThemeImage, 0);
            }
            this.mDrawerIndicatorEnabled = mDrawerIndicatorEnabled;
        }
    }
    
    public void syncState() {
        if (this.mDrawerLayout.isDrawerOpen(8388611)) {
            this.mSlider.setOffset(1.0f);
        }
        else {
            this.mSlider.setOffset(0.0f);
        }
        if (this.mDrawerIndicatorEnabled) {
            final SlideDrawable mSlider = this.mSlider;
            int n;
            if (this.mDrawerLayout.isDrawerOpen(8388611)) {
                n = this.mOpenDrawerContentDescRes;
            }
            else {
                n = this.mCloseDrawerContentDescRes;
            }
            this.setActionBarUpIndicator(mSlider, n);
        }
    }
    
    private interface ActionBarDrawerToggleImpl
    {
        Drawable getThemeUpIndicator(Activity p0);
        
        Object setActionBarDescription(Object p0, Activity p1, int p2);
        
        Object setActionBarUpIndicator(Object p0, Activity p1, Drawable p2, int p3);
    }
    
    private static class ActionBarDrawerToggleImplBase implements ActionBarDrawerToggleImpl
    {
        @Override
        public Drawable getThemeUpIndicator(final Activity activity) {
            return null;
        }
        
        @Override
        public Object setActionBarDescription(final Object o, final Activity activity, final int n) {
            return o;
        }
        
        @Override
        public Object setActionBarUpIndicator(final Object o, final Activity activity, final Drawable drawable, final int n) {
            return o;
        }
    }
    
    private static class ActionBarDrawerToggleImplHC implements ActionBarDrawerToggleImpl
    {
        @Override
        public Drawable getThemeUpIndicator(final Activity activity) {
            return ActionBarDrawerToggleHoneycomb.getThemeUpIndicator(activity);
        }
        
        @Override
        public Object setActionBarDescription(final Object o, final Activity activity, final int n) {
            return ActionBarDrawerToggleHoneycomb.setActionBarDescription(o, activity, n);
        }
        
        @Override
        public Object setActionBarUpIndicator(final Object o, final Activity activity, final Drawable drawable, final int n) {
            return ActionBarDrawerToggleHoneycomb.setActionBarUpIndicator(o, activity, drawable, n);
        }
    }
    
    public interface Delegate
    {
        Drawable getThemeUpIndicator();
        
        void setActionBarDescription(int p0);
        
        void setActionBarUpIndicator(Drawable p0, int p1);
    }
    
    public interface DelegateProvider
    {
        Delegate getDrawerToggleDelegate();
    }
    
    private static class SlideDrawable extends Drawable implements Drawable$Callback
    {
        private float mOffset;
        private float mOffsetBy;
        private final Rect mTmpRect;
        private Drawable mWrapped;
        
        public SlideDrawable(final Drawable mWrapped) {
            super();
            this.mTmpRect = new Rect();
            this.mWrapped = mWrapped;
        }
        
        public void clearColorFilter() {
            this.mWrapped.clearColorFilter();
        }
        
        public void draw(final Canvas canvas) {
            this.mWrapped.copyBounds(this.mTmpRect);
            canvas.save();
            canvas.translate(this.mOffsetBy * this.mTmpRect.width() * -this.mOffset, 0.0f);
            this.mWrapped.draw(canvas);
            canvas.restore();
        }
        
        public int getChangingConfigurations() {
            return this.mWrapped.getChangingConfigurations();
        }
        
        public Drawable$ConstantState getConstantState() {
            return super.getConstantState();
        }
        
        public Drawable getCurrent() {
            return this.mWrapped.getCurrent();
        }
        
        public int getIntrinsicHeight() {
            return this.mWrapped.getIntrinsicHeight();
        }
        
        public int getIntrinsicWidth() {
            return this.mWrapped.getIntrinsicWidth();
        }
        
        public int getMinimumHeight() {
            return this.mWrapped.getMinimumHeight();
        }
        
        public int getMinimumWidth() {
            return this.mWrapped.getMinimumWidth();
        }
        
        public float getOffset() {
            return this.mOffset;
        }
        
        public int getOpacity() {
            return this.mWrapped.getOpacity();
        }
        
        public boolean getPadding(final Rect rect) {
            return this.mWrapped.getPadding(rect);
        }
        
        public int[] getState() {
            return this.mWrapped.getState();
        }
        
        public Region getTransparentRegion() {
            return this.mWrapped.getTransparentRegion();
        }
        
        public void invalidateDrawable(final Drawable drawable) {
            if (drawable == this.mWrapped) {
                this.invalidateSelf();
            }
        }
        
        public boolean isStateful() {
            return this.mWrapped.isStateful();
        }
        
        protected void onBoundsChange(final Rect bounds) {
            super.onBoundsChange(bounds);
            this.mWrapped.setBounds(bounds);
        }
        
        protected boolean onStateChange(final int[] state) {
            this.mWrapped.setState(state);
            return super.onStateChange(state);
        }
        
        public void scheduleDrawable(final Drawable drawable, final Runnable runnable, final long n) {
            if (drawable == this.mWrapped) {
                this.scheduleSelf(runnable, n);
            }
        }
        
        public void setAlpha(final int alpha) {
            this.mWrapped.setAlpha(alpha);
        }
        
        public void setChangingConfigurations(final int changingConfigurations) {
            this.mWrapped.setChangingConfigurations(changingConfigurations);
        }
        
        public void setColorFilter(final int n, final PorterDuff$Mode porterDuff$Mode) {
            this.mWrapped.setColorFilter(n, porterDuff$Mode);
        }
        
        public void setColorFilter(final ColorFilter colorFilter) {
            this.mWrapped.setColorFilter(colorFilter);
        }
        
        public void setDither(final boolean dither) {
            this.mWrapped.setDither(dither);
        }
        
        public void setFilterBitmap(final boolean filterBitmap) {
            this.mWrapped.setFilterBitmap(filterBitmap);
        }
        
        public void setOffset(final float mOffset) {
            this.mOffset = mOffset;
            this.invalidateSelf();
        }
        
        public void setOffsetBy(final float mOffsetBy) {
            this.mOffsetBy = mOffsetBy;
            this.invalidateSelf();
        }
        
        public boolean setState(final int[] state) {
            return this.mWrapped.setState(state);
        }
        
        public boolean setVisible(final boolean b, final boolean b2) {
            return super.setVisible(b, b2);
        }
        
        public void unscheduleDrawable(final Drawable drawable, final Runnable runnable) {
            if (drawable == this.mWrapped) {
                this.unscheduleSelf(runnable);
            }
        }
    }
}
