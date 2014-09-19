package com.facebook.widget;

import android.content.*;
import java.net.*;
import com.facebook.internal.*;
import android.net.*;

class ImageRequest
{
    private static final String HEIGHT_PARAM = "height";
    private static final String MIGRATION_PARAM = "migration_overrides";
    private static final String MIGRATION_VALUE = "{october_2012:true}";
    private static final String PROFILEPIC_URL_FORMAT = "https://graph.facebook.com/%s/picture";
    static final int UNSPECIFIED_DIMENSION = 0;
    private static final String WIDTH_PARAM = "width";
    private boolean allowCachedRedirects;
    private ImageRequest$Callback callback;
    private Object callerTag;
    private Context context;
    private URL imageUrl;
    
    private ImageRequest(final ImageRequest$Builder imageRequest$Builder) {
        super();
        this.context = imageRequest$Builder.context;
        this.imageUrl = imageRequest$Builder.imageUrl;
        this.callback = imageRequest$Builder.callback;
        this.allowCachedRedirects = imageRequest$Builder.allowCachedRedirects;
        Object access$400;
        if (imageRequest$Builder.callerTag == null) {
            access$400 = new Object();
        }
        else {
            access$400 = imageRequest$Builder.callerTag;
        }
        this.callerTag = access$400;
    }
    
    static URL getProfilePictureUrl(final String s, final int a, final int a2) {
        Validate.notNullOrEmpty(s, "userId");
        final int max = Math.max(a, 0);
        final int max2 = Math.max(a2, 0);
        if (max == 0 && max2 == 0) {
            throw new IllegalArgumentException("Either width or height must be greater than 0");
        }
        final Uri$Builder encodedPath = new Uri$Builder().encodedPath(String.format("https://graph.facebook.com/%s/picture", s));
        if (max2 != 0) {
            encodedPath.appendQueryParameter("height", String.valueOf(max2));
        }
        if (max != 0) {
            encodedPath.appendQueryParameter("width", String.valueOf(max));
        }
        encodedPath.appendQueryParameter("migration_overrides", "{october_2012:true}");
        return new URL(encodedPath.toString());
    }
    
    ImageRequest$Callback getCallback() {
        return this.callback;
    }
    
    Object getCallerTag() {
        return this.callerTag;
    }
    
    Context getContext() {
        return this.context;
    }
    
    URL getImageUrl() {
        return this.imageUrl;
    }
    
    boolean isCachedRedirectAllowed() {
        return this.allowCachedRedirects;
    }
}
