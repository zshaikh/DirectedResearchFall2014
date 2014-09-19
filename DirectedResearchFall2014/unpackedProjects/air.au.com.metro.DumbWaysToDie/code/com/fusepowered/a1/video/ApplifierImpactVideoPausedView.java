package com.fusepowered.a1.video;

import android.content.*;
import com.fusepowered.a1.properties.*;
import android.util.*;
import android.view.animation.*;
import android.graphics.*;
import android.widget.*;
import android.view.*;

public class ApplifierImpactVideoPausedView extends RelativeLayout
{
    private ImageView _outerStroke;
    private ImageView _playButtonBase;
    private TextView _textView;
    private ImageView _triangle;
    
    public ApplifierImpactVideoPausedView(final Context context) {
        super(context);
        this._playButtonBase = null;
        this._outerStroke = null;
        this._triangle = null;
        this._textView = null;
        this.createView();
    }
    
    public ApplifierImpactVideoPausedView(final Context context, final AttributeSet set) {
        super(context, set);
        this._playButtonBase = null;
        this._outerStroke = null;
        this._triangle = null;
        this._textView = null;
        this.createView();
    }
    
    public ApplifierImpactVideoPausedView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this._playButtonBase = null;
        this._outerStroke = null;
        this._triangle = null;
        this._textView = null;
        this.createView();
    }
    
    private ImageView createBall(final int id) {
        final DisplayMetrics displayMetrics = ApplifierImpactProperties.CURRENT_ACTIVITY.getResources().getDisplayMetrics();
        final Bitmap bitmap = Bitmap.createBitmap(Math.round(101.0f * displayMetrics.density), Math.round(101.0f * displayMetrics.density), Bitmap$Config.ARGB_4444);
        final Canvas canvas = new Canvas(bitmap);
        final Paint paint = new Paint(1);
        paint.setColor(-1879048192);
        canvas.drawCircle((float)Math.round(50.0f * displayMetrics.density), (float)Math.round(50.0f * displayMetrics.density), (float)Math.round(50.0f * displayMetrics.density), paint);
        final ImageView imageView = new ImageView(this.getContext());
        imageView.setImageBitmap(bitmap);
        imageView.setId(id);
        return imageView;
    }
    
    private AnimationSet createBlinkAnimation(final long n) {
        final AnimationSet set = new AnimationSet(false);
        final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        ((Animation)alphaAnimation).setRepeatCount(-1);
        ((Animation)alphaAnimation).setRepeatMode(2);
        ((Animation)alphaAnimation).setFillBefore(true);
        ((Animation)alphaAnimation).setFillAfter(true);
        ((Animation)alphaAnimation).setDuration(800L);
        set.addAnimation((Animation)alphaAnimation);
        return set;
    }
    
    private ImageView createOuterStroke(final int id) {
        final DisplayMetrics displayMetrics = ApplifierImpactProperties.CURRENT_ACTIVITY.getResources().getDisplayMetrics();
        final Bitmap bitmap = Bitmap.createBitmap(Math.round(113.0f * displayMetrics.density), Math.round(113.0f * displayMetrics.density), Bitmap$Config.ARGB_4444);
        final Canvas canvas = new Canvas(bitmap);
        final Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setStyle(Paint$Style.STROKE);
        paint.setStrokeWidth(5.0f);
        canvas.drawCircle((float)Math.round(56.0f * displayMetrics.density), (float)Math.round(56.0f * displayMetrics.density), (float)Math.round(53.0f * displayMetrics.density), paint);
        final ImageView imageView = new ImageView(this.getContext());
        imageView.setImageBitmap(bitmap);
        imageView.setId(id);
        return imageView;
    }
    
    private ImageView createTriangle(final int id) {
        final DisplayMetrics displayMetrics = ApplifierImpactProperties.CURRENT_ACTIVITY.getResources().getDisplayMetrics();
        final Bitmap bitmap = Bitmap.createBitmap(Math.round(47.0f * displayMetrics.density), Math.round(51.0f * displayMetrics.density), Bitmap$Config.ARGB_4444);
        final Canvas canvas = new Canvas(bitmap);
        final Paint paint = new Paint(1);
        paint.setColor(-1);
        paint.setStyle(Paint$Style.FILL);
        final float[] array = { 0.0f, 0.0f, 47.0f * displayMetrics.density, 25.0f * displayMetrics.density, 0.0f, 51.0f * displayMetrics.density, 0.0f, 0.0f };
        canvas.drawVertices(Canvas$VertexMode.TRIANGLES, 8, array, 0, (float[])null, 0, (int[])null, 0, (short[])null, 0, 0, paint);
        final Path path = new Path();
        path.moveTo(array[0], array[1]);
        path.lineTo(array[2], array[3]);
        path.lineTo(array[4], array[5]);
        canvas.drawPath(path, paint);
        final ImageView imageView = new ImageView(this.getContext());
        imageView.setImageBitmap(bitmap);
        imageView.setId(id);
        return imageView;
    }
    
    private void createView() {
        final DisplayMetrics displayMetrics = ApplifierImpactProperties.CURRENT_ACTIVITY.getResources().getDisplayMetrics();
        this.setBackgroundColor(-1073741824);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams.addRule(13);
        this.addView((View)(this._outerStroke = this.createOuterStroke(60006)), (ViewGroup$LayoutParams)relativeLayout$LayoutParams);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams2.addRule(13);
        this.addView((View)(this._playButtonBase = this.createBall(60001)), (ViewGroup$LayoutParams)relativeLayout$LayoutParams2);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams3 = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams3.addRule(15);
        relativeLayout$LayoutParams3.addRule(5, 60001);
        relativeLayout$LayoutParams3.leftMargin = Math.round(31.0f * displayMetrics.density);
        this.addView((View)(this._triangle = this.createTriangle(60002)), (ViewGroup$LayoutParams)relativeLayout$LayoutParams3);
        (this._textView = new TextView(this.getContext())).setTextColor(-1);
        this._textView.setText((CharSequence)"Video paused. Tap screen to continue watching.");
        this._textView.setId(60003);
        final RelativeLayout$LayoutParams relativeLayout$LayoutParams4 = new RelativeLayout$LayoutParams(-2, -2);
        relativeLayout$LayoutParams4.addRule(14);
        relativeLayout$LayoutParams4.addRule(12);
        relativeLayout$LayoutParams4.bottomMargin = Math.round(20.0f * displayMetrics.density);
        this.addView((View)this._textView, (ViewGroup$LayoutParams)relativeLayout$LayoutParams4);
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this._outerStroke != null) {
            this._outerStroke.setAnimation((Animation)this.createBlinkAnimation(0L));
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this._outerStroke != null) {
            this._outerStroke.clearAnimation();
        }
    }
}
