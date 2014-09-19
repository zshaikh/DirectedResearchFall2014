package v2.com.playhaven.views.interstitial;

import android.content.*;
import android.widget.*;
import android.view.*;
import v2.com.playhaven.resources.*;
import v2.com.playhaven.resources.data.*;
import android.util.*;
import android.graphics.drawable.*;

public class PHCloseButton extends ImageButton
{
    private Listener listener;
    
    public PHCloseButton(final Context context, final Listener listener) {
        super(context);
        this.listener = null;
        this.setContentDescription((CharSequence)"closeButton");
        this.setScaleType(ImageView$ScaleType.FIT_XY);
        this.setBackgroundDrawable((Drawable)null);
        this.loadDefaultStateImages();
        this.listener = listener;
        this.setOnClickListener((View$OnClickListener)new View$OnClickListener() {
            public void onClick(final View view) {
                listener.onClose(PHCloseButton.this);
            }
        });
    }
    
    public PHCloseButton(final Context context, final Listener listener, final BitmapDrawable bitmapDrawable, final BitmapDrawable bitmapDrawable2) {
        this(context, listener);
        this.setActiveAndInactive(bitmapDrawable, bitmapDrawable2);
    }
    
    private void loadDefaultStateImages() {
        final DisplayMetrics displayMetrics = this.getResources().getDisplayMetrics();
        final PHResourceManager sharedResourceManager = PHResourceManager.sharedResourceManager();
        this.setActiveAndInactive(new BitmapDrawable(this.getResources(), ((PHCloseActiveImageResource)sharedResourceManager.getResource("close_active")).loadImage(displayMetrics.densityDpi)), new BitmapDrawable(this.getResources(), ((PHCloseImageResource)sharedResourceManager.getResource("close_inactive")).loadImage(displayMetrics.densityDpi)));
    }
    
    private void setActiveAndInactive(final BitmapDrawable bitmapDrawable, final BitmapDrawable bitmapDrawable2) {
        final StateListDrawable imageDrawable = new StateListDrawable();
        imageDrawable.addState(new int[] { CloseButtonState.Down.getAndroidState() }, (Drawable)bitmapDrawable);
        imageDrawable.addState(new int[] { CloseButtonState.Up.getAndroidState() }, (Drawable)bitmapDrawable2);
        this.setImageDrawable((Drawable)imageDrawable);
    }
    
    public enum CloseButtonState
    {
        Down("Down", 0, 16842919), 
        Up("Up", 1, 16842910);
        
        private int android_state;
        
        private CloseButtonState(final String name, final int ordinal, final int android_state) {
            this.android_state = android_state;
        }
        
        public int getAndroidState() {
            return this.android_state;
        }
    }
    
    public interface Listener
    {
        void onClose(PHCloseButton p0);
    }
}
