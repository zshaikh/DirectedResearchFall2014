package com.facebook.widget;

import android.graphics.*;

class ImageResponse
{
    private Bitmap bitmap;
    private Exception error;
    private boolean isCachedRedirect;
    private ImageRequest request;
    
    ImageResponse(final ImageRequest request, final Exception error, final boolean isCachedRedirect, final Bitmap bitmap) {
        super();
        this.request = request;
        this.error = error;
        this.bitmap = bitmap;
        this.isCachedRedirect = isCachedRedirect;
    }
    
    Bitmap getBitmap() {
        return this.bitmap;
    }
    
    Exception getError() {
        return this.error;
    }
    
    ImageRequest getRequest() {
        return this.request;
    }
    
    boolean isCachedRedirect() {
        return this.isCachedRedirect;
    }
}
