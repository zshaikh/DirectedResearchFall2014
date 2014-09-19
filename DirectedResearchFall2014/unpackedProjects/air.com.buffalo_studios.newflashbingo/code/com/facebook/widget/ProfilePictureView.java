package com.facebook.widget;

import android.content.*;
import android.util.*;
import com.facebook.android.*;
import android.widget.*;
import android.content.res.*;
import com.facebook.*;
import java.net.*;
import android.graphics.*;
import android.view.*;
import android.os.*;
import com.facebook.internal.*;

public class ProfilePictureView extends FrameLayout
{
    private static final String BITMAP_HEIGHT_KEY = "ProfilePictureView_height";
    private static final String BITMAP_KEY = "ProfilePictureView_bitmap";
    private static final String BITMAP_WIDTH_KEY = "ProfilePictureView_width";
    public static final int CUSTOM = -1;
    private static final boolean IS_CROPPED_DEFAULT_VALUE = true;
    private static final String IS_CROPPED_KEY = "ProfilePictureView_isCropped";
    public static final int LARGE = -4;
    private static final int MIN_SIZE = 1;
    public static final int NORMAL = -3;
    private static final String PENDING_REFRESH_KEY = "ProfilePictureView_refresh";
    private static final String PRESET_SIZE_KEY = "ProfilePictureView_presetSize";
    private static final String PROFILE_ID_KEY = "ProfilePictureView_profileId";
    public static final int SMALL = -2;
    private static final String SUPER_STATE_KEY = "ProfilePictureView_superState";
    public static final String TAG;
    private Bitmap customizedDefaultProfilePicture;
    private ImageView image;
    private Bitmap imageContents;
    private boolean isCropped;
    private ImageRequest lastRequest;
    private ProfilePictureView$OnErrorListener onErrorListener;
    private int presetSizeType;
    private String profileId;
    private int queryHeight;
    private int queryWidth;
    
    static {
        TAG = ProfilePictureView.class.getSimpleName();
    }
    
    public ProfilePictureView(final Context context) {
        super(context);
        this.queryHeight = 0;
        this.queryWidth = 0;
        this.isCropped = true;
        this.presetSizeType = -1;
        this.customizedDefaultProfilePicture = null;
        this.initialize(context);
    }
    
    public ProfilePictureView(final Context context, final AttributeSet set) {
        super(context, set);
        this.queryHeight = 0;
        this.queryWidth = 0;
        this.isCropped = true;
        this.presetSizeType = -1;
        this.customizedDefaultProfilePicture = null;
        this.initialize(context);
        this.parseAttributes(set);
    }
    
    public ProfilePictureView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.queryHeight = 0;
        this.queryWidth = 0;
        this.isCropped = true;
        this.presetSizeType = -1;
        this.customizedDefaultProfilePicture = null;
        this.initialize(context);
        this.parseAttributes(set);
    }
    
    private int getPresetSizeInPixels(final boolean b) {
        int n = 0;
        switch (this.presetSizeType) {
            default: {
                return 0;
            }
            case -2: {
                n = R.dimen.com_facebook_profilepictureview_preset_size_small;
                break;
            }
            case -3: {
                n = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                break;
            }
            case -4: {
                n = R.dimen.com_facebook_profilepictureview_preset_size_large;
                break;
            }
            case -1: {
                if (!b) {
                    return 0;
                }
                n = R.dimen.com_facebook_profilepictureview_preset_size_normal;
                break;
            }
        }
        return this.getResources().getDimensionPixelSize(n);
    }
    
    private void initialize(final Context context) {
        this.removeAllViews();
        (this.image = new ImageView(context)).setLayoutParams((ViewGroup$LayoutParams)new FrameLayout$LayoutParams(-1, -1));
        this.image.setScaleType(ImageView$ScaleType.CENTER_INSIDE);
        this.addView((View)this.image);
    }
    
    private void parseAttributes(final AttributeSet set) {
        final TypedArray obtainStyledAttributes = this.getContext().obtainStyledAttributes(set, R.styleable.com_facebook_profile_picture_view);
        this.setPresetSize(obtainStyledAttributes.getInt(0, -1));
        this.isCropped = obtainStyledAttributes.getBoolean(1, true);
        obtainStyledAttributes.recycle();
    }
    
    private void processResponse(final ImageResponse imageResponse) {
        if (imageResponse.getRequest() == this.lastRequest) {
            this.lastRequest = null;
            final Bitmap bitmap = imageResponse.getBitmap();
            final Exception error = imageResponse.getError();
            if (error != null) {
                final ProfilePictureView$OnErrorListener onErrorListener = this.onErrorListener;
                if (onErrorListener == null) {
                    Logger.log(LoggingBehavior.REQUESTS, 6, ProfilePictureView.TAG, error.toString());
                    return;
                }
                onErrorListener.onError(new FacebookException("Error in downloading profile picture for profileId: " + this.getProfileId(), error));
            }
            else if (bitmap != null) {
                this.setImageBitmap(bitmap);
                if (imageResponse.isCachedRedirect()) {
                    this.sendImageRequest(false);
                }
            }
        }
    }
    
    private void refreshImage(final boolean b) {
        final boolean updateImageQueryParameters = this.updateImageQueryParameters();
        if (this.profileId == null || this.profileId.length() == 0 || (this.queryWidth == 0 && this.queryHeight == 0)) {
            this.setBlankProfilePicture();
        }
        else if (updateImageQueryParameters || b) {
            this.sendImageRequest(true);
        }
    }
    
    private void sendImageRequest(final boolean allowCachedRedirects) {
        try {
            final ImageRequest build = new ImageRequest$Builder(this.getContext(), ImageRequest.getProfilePictureUrl(this.profileId, this.queryWidth, this.queryHeight)).setAllowCachedRedirects(allowCachedRedirects).setCallerTag(this).setCallback(new ProfilePictureView$1(this)).build();
            if (this.lastRequest != null) {
                ImageDownloader.cancelRequest(this.lastRequest);
            }
            ImageDownloader.downloadAsync(this.lastRequest = build);
        }
        catch (URISyntaxException ex) {
            Logger.log(LoggingBehavior.REQUESTS, 6, ProfilePictureView.TAG, ex.toString());
        }
    }
    
    private void setBlankProfilePicture() {
        if (this.customizedDefaultProfilePicture == null) {
            int n;
            if (this.isCropped()) {
                n = R.drawable.com_facebook_profile_picture_blank_square;
            }
            else {
                n = R.drawable.com_facebook_profile_picture_blank_portrait;
            }
            this.setImageBitmap(BitmapFactory.decodeResource(this.getResources(), n));
            return;
        }
        this.updateImageQueryParameters();
        this.setImageBitmap(Bitmap.createScaledBitmap(this.customizedDefaultProfilePicture, this.queryWidth, this.queryHeight, false));
    }
    
    private void setImageBitmap(final Bitmap bitmap) {
        if (this.image != null && bitmap != null) {
            this.imageContents = bitmap;
            this.image.setImageBitmap(bitmap);
        }
    }
    
    private boolean updateImageQueryParameters() {
        final int height = this.getHeight();
        final int width = this.getWidth();
        if (width <= 0 || height <= 0) {
            return false;
        }
        final int presetSizeInPixels = this.getPresetSizeInPixels(false);
        int queryWidth;
        int queryHeight;
        if (presetSizeInPixels != 0) {
            queryWidth = presetSizeInPixels;
            queryHeight = presetSizeInPixels;
        }
        else {
            queryHeight = height;
            queryWidth = width;
        }
        if (queryWidth <= queryHeight) {
            if (this.isCropped()) {
                queryHeight = queryWidth;
            }
            else {
                queryHeight = 0;
            }
        }
        else if (this.isCropped()) {
            queryWidth = queryHeight;
        }
        else {
            queryWidth = 0;
        }
        final boolean b = queryWidth != this.queryWidth || queryHeight != this.queryHeight;
        this.queryWidth = queryWidth;
        this.queryHeight = queryHeight;
        return b;
    }
    
    public final ProfilePictureView$OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }
    
    public final int getPresetSize() {
        return this.presetSizeType;
    }
    
    public final String getProfileId() {
        return this.profileId;
    }
    
    public final boolean isCropped() {
        return this.isCropped;
    }
    
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.lastRequest = null;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        this.refreshImage(false);
    }
    
    protected void onMeasure(final int n, final int n2) {
        final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
        final int size = View$MeasureSpec.getSize(n2);
        final int size2 = View$MeasureSpec.getSize(n);
        int presetSizeInPixels;
        int measureSpec;
        int n3;
        if (View$MeasureSpec.getMode(n2) != 1073741824 && layoutParams.height == -2) {
            presetSizeInPixels = this.getPresetSizeInPixels(true);
            measureSpec = View$MeasureSpec.makeMeasureSpec(presetSizeInPixels, 1073741824);
            n3 = 1;
        }
        else {
            measureSpec = n2;
            presetSizeInPixels = size;
            n3 = 0;
        }
        int presetSizeInPixels2;
        int measureSpec2;
        if (View$MeasureSpec.getMode(n) != 1073741824 && layoutParams.width == -2) {
            presetSizeInPixels2 = this.getPresetSizeInPixels(true);
            measureSpec2 = View$MeasureSpec.makeMeasureSpec(presetSizeInPixels2, 1073741824);
            n3 = 1;
        }
        else {
            presetSizeInPixels2 = size2;
            measureSpec2 = n;
        }
        if (n3 != 0) {
            this.setMeasuredDimension(presetSizeInPixels2, presetSizeInPixels);
            this.measureChildren(measureSpec2, measureSpec);
            return;
        }
        super.onMeasure(measureSpec2, measureSpec);
    }
    
    protected void onRestoreInstanceState(final Parcelable parcelable) {
        if (parcelable.getClass() != Bundle.class) {
            super.onRestoreInstanceState(parcelable);
        }
        else {
            final Bundle bundle = (Bundle)parcelable;
            super.onRestoreInstanceState(bundle.getParcelable("ProfilePictureView_superState"));
            this.profileId = bundle.getString("ProfilePictureView_profileId");
            this.presetSizeType = bundle.getInt("ProfilePictureView_presetSize");
            this.isCropped = bundle.getBoolean("ProfilePictureView_isCropped");
            this.queryWidth = bundle.getInt("ProfilePictureView_width");
            this.queryHeight = bundle.getInt("ProfilePictureView_height");
            this.setImageBitmap((Bitmap)bundle.getParcelable("ProfilePictureView_bitmap"));
            if (bundle.getBoolean("ProfilePictureView_refresh")) {
                this.refreshImage(true);
            }
        }
    }
    
    protected Parcelable onSaveInstanceState() {
        final Parcelable onSaveInstanceState = super.onSaveInstanceState();
        final Bundle bundle = new Bundle();
        bundle.putParcelable("ProfilePictureView_superState", onSaveInstanceState);
        bundle.putString("ProfilePictureView_profileId", this.profileId);
        bundle.putInt("ProfilePictureView_presetSize", this.presetSizeType);
        bundle.putBoolean("ProfilePictureView_isCropped", this.isCropped);
        bundle.putParcelable("ProfilePictureView_bitmap", (Parcelable)this.imageContents);
        bundle.putInt("ProfilePictureView_width", this.queryWidth);
        bundle.putInt("ProfilePictureView_height", this.queryHeight);
        bundle.putBoolean("ProfilePictureView_refresh", this.lastRequest != null);
        return (Parcelable)bundle;
    }
    
    public final void setCropped(final boolean isCropped) {
        this.isCropped = isCropped;
        this.refreshImage(false);
    }
    
    public final void setDefaultProfilePicture(final Bitmap customizedDefaultProfilePicture) {
        this.customizedDefaultProfilePicture = customizedDefaultProfilePicture;
    }
    
    public final void setOnErrorListener(final ProfilePictureView$OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }
    
    public final void setPresetSize(final int presetSizeType) {
        switch (presetSizeType) {
            default: {
                throw new IllegalArgumentException("Must use a predefined preset size");
            }
            case -4:
            case -3:
            case -2:
            case -1: {
                this.presetSizeType = presetSizeType;
                this.requestLayout();
            }
        }
    }
    
    public final void setProfileId(final String s) {
        boolean b = false;
        Label_0031: {
            if (!Utility.isNullOrEmpty(this.profileId)) {
                final boolean equalsIgnoreCase = this.profileId.equalsIgnoreCase(s);
                b = false;
                if (equalsIgnoreCase) {
                    break Label_0031;
                }
            }
            this.setBlankProfilePicture();
            b = true;
        }
        this.profileId = s;
        this.refreshImage(b);
    }
}
