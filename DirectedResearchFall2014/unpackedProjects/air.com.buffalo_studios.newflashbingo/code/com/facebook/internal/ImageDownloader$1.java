package com.facebook.internal;

import android.graphics.*;

final class ImageDownloader$1 implements Runnable
{
    final /* synthetic */ Bitmap val$bitmap;
    final /* synthetic */ ImageRequest$Callback val$callback;
    final /* synthetic */ Exception val$error;
    final /* synthetic */ boolean val$isCachedRedirect;
    final /* synthetic */ ImageRequest val$request;
    
    ImageDownloader$1(final ImageRequest val$request, final Exception val$error, final boolean val$isCachedRedirect, final Bitmap val$bitmap, final ImageRequest$Callback val$callback) {
        this.val$request = val$request;
        this.val$error = val$error;
        this.val$isCachedRedirect = val$isCachedRedirect;
        this.val$bitmap = val$bitmap;
        this.val$callback = val$callback;
        super();
    }
    
    @Override
    public final void run() {
        this.val$callback.onCompleted(new ImageResponse(this.val$request, this.val$error, this.val$isCachedRedirect, this.val$bitmap));
    }
}
