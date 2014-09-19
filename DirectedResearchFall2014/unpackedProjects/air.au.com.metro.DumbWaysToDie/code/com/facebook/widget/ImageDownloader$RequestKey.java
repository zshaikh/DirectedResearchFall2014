package com.facebook.widget;

import java.net.*;

class ImageDownloader$RequestKey
{
    private static final int HASH_MULTIPLIER = 37;
    private static final int HASH_SEED = 29;
    Object tag;
    URL url;
    
    ImageDownloader$RequestKey(final URL url, final Object tag) {
        super();
        this.url = url;
        this.tag = tag;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != null && o instanceof ImageDownloader$RequestKey) {
            final ImageDownloader$RequestKey imageDownloader$RequestKey = (ImageDownloader$RequestKey)o;
            return imageDownloader$RequestKey.url == this.url && imageDownloader$RequestKey.tag == this.tag;
        }
        return false;
    }
    
    @Override
    public final int hashCode() {
        return 37 * (1073 + this.url.hashCode()) + this.tag.hashCode();
    }
}
