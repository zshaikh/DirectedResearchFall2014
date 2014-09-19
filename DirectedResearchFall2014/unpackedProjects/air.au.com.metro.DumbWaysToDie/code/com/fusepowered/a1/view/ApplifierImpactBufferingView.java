package com.fusepowered.a1.view;

import android.content.*;
import android.util.*;
import android.view.animation.*;
import android.widget.*;
import android.view.*;
import android.graphics.drawable.shapes.*;
import android.graphics.*;
import android.graphics.drawable.*;
import com.fusepowered.a1.*;

public class ApplifierImpactBufferingView extends LinearLayout
{
    private ImageView _ball1;
    private ImageView _ball2;
    private ImageView _ball3;
    private TextView _textView;
    
    public ApplifierImpactBufferingView(final Context context) {
        super(context);
        this._textView = null;
        this._ball1 = null;
        this._ball2 = null;
        this._ball3 = null;
        this.createView();
    }
    
    public ApplifierImpactBufferingView(final Context context, final AttributeSet set) {
        super(context, set);
        this._textView = null;
        this._ball1 = null;
        this._ball2 = null;
        this._ball3 = null;
        this.createView();
    }
    
    private ImageView createBall(final int id) {
        final Bitmap bitmap = Bitmap.createBitmap(17, 17, Bitmap$Config.ARGB_4444);
        final Canvas canvas = new Canvas(bitmap);
        final Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawCircle(8.0f, 8.0f, 8.0f, paint);
        final ImageView imageView = new ImageView(this.getContext());
        imageView.setImageBitmap(bitmap);
        imageView.setId(id);
        return imageView;
    }
    
    private AnimationSet createBlinkAnimation(final long n) {
        final AnimationSet set = new AnimationSet(false);
        final ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.0f, 1.0f, 0.0f, 8.0f, 8.0f);
        ((Animation)scaleAnimation).setRepeatCount(-1);
        ((Animation)scaleAnimation).setRepeatMode(2);
        ((Animation)scaleAnimation).setFillBefore(true);
        ((Animation)scaleAnimation).setFillAfter(true);
        ((Animation)scaleAnimation).setDuration(800L);
        final AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        ((Animation)alphaAnimation).setRepeatCount(-1);
        ((Animation)alphaAnimation).setRepeatMode(2);
        ((Animation)alphaAnimation).setFillBefore(true);
        ((Animation)alphaAnimation).setFillAfter(true);
        ((Animation)alphaAnimation).setDuration(800L);
        set.addAnimation((Animation)scaleAnimation);
        set.addAnimation((Animation)alphaAnimation);
        return set;
    }
    
    private void createView() {
        this.setOrientation(0);
        this.setPadding(10, 8, 10, 10);
        (this._textView = new TextView(this.getContext())).setTextColor(-1);
        this._textView.setText((CharSequence)"Buffering");
        this._textView.setId(10000);
        this.addView((View)this._textView, (ViewGroup$LayoutParams)new LinearLayout$LayoutParams(-2, -2));
        final ShapeDrawable backgroundDrawable = new ShapeDrawable((Shape)new RoundRectShape(new float[] { 12.0f, 12.0f, 12.0f, 12.0f, 12.0f, 12.0f, 12.0f, 12.0f }, (RectF)null, (float[])null));
        backgroundDrawable.getPaint().setColor(-2013265920);
        backgroundDrawable.getPaint().setStyle(Paint$Style.FILL);
        this.setBackgroundDrawable((Drawable)backgroundDrawable);
        final LinearLayout linearLayout = new LinearLayout(this.getContext());
        linearLayout.setOrientation(0);
        final LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(-2, -2);
        linearLayout$LayoutParams.leftMargin = 3;
        this._ball1 = this.createBall(10001);
        this._ball2 = this.createBall(10002);
        this._ball3 = this.createBall(10003);
        linearLayout.addView((View)this._ball1, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        linearLayout.addView((View)this._ball2, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        linearLayout.addView((View)this._ball3, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        final LinearLayout$LayoutParams linearLayout$LayoutParams2 = new LinearLayout$LayoutParams(-2, -2);
        linearLayout$LayoutParams2.setMargins(3, 9, 0, 0);
        this.addView((View)linearLayout, (ViewGroup$LayoutParams)linearLayout$LayoutParams2);
    }
    
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ApplifierImpactUtils.Log("Attached to window", this);
        if (this._ball1 != null) {
            this._ball1.setAnimation((Animation)this.createBlinkAnimation(0L));
        }
        if (this._ball2 != null) {
            this._ball2.setAnimation((Animation)this.createBlinkAnimation(150L));
        }
        if (this._ball3 != null) {
            this._ball3.setAnimation((Animation)this.createBlinkAnimation(300L));
        }
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this._ball1 != null) {
            this._ball1.clearAnimation();
        }
        if (this._ball2 != null) {
            this._ball2.clearAnimation();
        }
        if (this._ball3 != null) {
            this._ball3.clearAnimation();
        }
    }
}
