package com.buffalostudios.aneutils.loadingspinner;

import android.app.*;
import android.graphics.*;
import android.graphics.drawable.*;
import android.content.*;
import android.os.*;
import android.util.*;
import android.widget.*;
import android.view.*;
import android.view.animation.*;

public class LoadingSpinnerActivity extends Activity
{
    private static final int REQUEST_CODE = 123;
    private Task _spinner;
    
    private Drawable createImage(final int n, final int n2, final int[] array) {
        if (n == 0 || n2 == 0 || array == null) {
            return null;
        }
        return (Drawable)new BitmapDrawable(this.getResources(), Bitmap.createBitmap(array, n, n2, Bitmap$Config.ARGB_8888));
    }
    
    public static void start(final Activity activity, final int n, final int n2, final int n3, final int n4, final int n5, final int[] array) {
        final Intent intent = new Intent((Context)activity, (Class)LoadingSpinnerActivity.class);
        intent.putExtra("com.buffalostudios.aneutils.SCREEN_X", n);
        intent.putExtra("com.buffalostudios.aneutils.SCREEN_Y", n2);
        intent.putExtra("com.buffalostudios.aneutils.BACKGROUND_COLOR", n3);
        intent.putExtra("com.buffalostudios.aneutils.IMAGE_WIDTH", n4);
        intent.putExtra("com.buffalostudios.aneutils.IMAGE_HEIGHT", n5);
        intent.putExtra("com.buffalostudios.aneutils.IMAGE_PIXELS", array);
        activity.startActivityForResult(intent, 123);
    }
    
    public static void stop(final Activity activity) {
        activity.finishActivity(123);
    }
    
    public void onBackPressed() {
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(new View((Context)this));
        final Bundle extras = this.getIntent().getExtras();
        int int1 = 0;
        int int2 = 0;
        int[] intArray = null;
        int int3 = 0;
        int int4 = 0;
        int int5 = 0;
        if (extras != null) {
            int4 = extras.getInt("com.buffalostudios.aneutils.SCREEN_X");
            int5 = extras.getInt("com.buffalostudios.aneutils.SCREEN_Y");
            int1 = extras.getInt("com.buffalostudios.aneutils.BACKGROUND_COLOR");
            int3 = extras.getInt("com.buffalostudios.aneutils.IMAGE_WIDTH");
            int2 = extras.getInt("com.buffalostudios.aneutils.IMAGE_HEIGHT");
            intArray = extras.getIntArray("com.buffalostudios.aneutils.IMAGE_PIXELS");
        }
        final View viewById = this.findViewById(16908290);
        if (viewById != null) {
            viewById.setBackgroundColor(int1);
        }
        (this._spinner = new Task(this, int4, int5, this.createImage(int3, int2, intArray))).execute((Object[])null);
    }
    
    private static class Key
    {
        private static final String BACKGROUND_COLOR = "com.buffalostudios.aneutils.BACKGROUND_COLOR";
        private static final String IMAGE_HEIGHT = "com.buffalostudios.aneutils.IMAGE_HEIGHT";
        private static final String IMAGE_PIXELS = "com.buffalostudios.aneutils.IMAGE_PIXELS";
        private static final String IMAGE_WIDTH = "com.buffalostudios.aneutils.IMAGE_WIDTH";
        private static final String SCREEN_X = "com.buffalostudios.aneutils.SCREEN_X";
        private static final String SCREEN_Y = "com.buffalostudios.aneutils.SCREEN_Y";
    }
    
    private static class Task extends AsyncTask<Void, Integer, Void>
    {
        private Activity _activity;
        private int _centerX;
        private int _centerY;
        private Drawable _drawable;
        private ProgressBar _spinner;
        
        public Task(final Activity activity, final int centerX, final int centerY, final Drawable drawable) {
            super();
            this._drawable = null;
            this._spinner = null;
            this._activity = activity;
            this._centerX = centerX;
            this._centerY = centerY;
            this._drawable = drawable;
        }
        
        protected Void doInBackground(final Void... array) {
            return null;
        }
        
        protected void onPostExecute(final Void void1) {
            super.onPostExecute((Object)void1);
        }
        
        protected void onPreExecute() {
            (this._spinner = new ProgressBar((Context)this._activity, (AttributeSet)null, 16842871)).measure(0, 0);
            final int measuredWidth = this._spinner.getMeasuredWidth();
            final int measuredHeight = this._spinner.getMeasuredHeight();
            final RelativeLayout relativeLayout = new RelativeLayout((Context)this._activity);
            final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
            relativeLayout$LayoutParams.addRule(9, -1);
            relativeLayout$LayoutParams.addRule(10, -1);
            relativeLayout$LayoutParams.leftMargin = this._centerX - measuredWidth / 2;
            relativeLayout$LayoutParams.topMargin = this._centerY - measuredHeight / 2;
            relativeLayout.setLayoutParams((ViewGroup$LayoutParams)relativeLayout$LayoutParams);
            this._spinner.setLayoutParams((ViewGroup$LayoutParams)relativeLayout$LayoutParams);
            this._spinner.setIndeterminate(true);
            this._spinner.setVisibility(0);
            if (this._drawable != null) {
                this._spinner.setIndeterminateDrawable(this._drawable);
                final RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setInterpolator((Interpolator)new LinearInterpolator());
                rotateAnimation.setRepeatCount(-1);
                this._spinner.startAnimation((Animation)rotateAnimation);
            }
            relativeLayout.addView((View)this._spinner);
            this._activity.addContentView((View)relativeLayout, (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        }
        
        protected void onProgressUpdate(final Integer... array) {
            super.onProgressUpdate((Object[])array);
        }
    }
}
