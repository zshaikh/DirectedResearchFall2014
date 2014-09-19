package com.facebook.internal;

import java.net.*;

class ImageDownloader$RequestKey
{
    private static final int HASH_MULTIPLIER = 37;
    private static final int HASH_SEED = 29;
    Object tag;
    URI uri;
    
    ImageDownloader$RequestKey(final URI uri, final Object tag) {
        super();
        this.uri = uri;
        this.tag = tag;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != null && o instanceof ImageDownloader$RequestKey) {
            final ImageDownloader$RequestKey imageDownloader$RequestKey = (ImageDownloader$RequestKey)o;
            return imageDownloader$RequestKey.uri == this.uri && imageDownloader$RequestKey.tag == this.tag;
        }
        return false;
    }
    
    @Override
    public final int hashCode() {
        return 37 * (1073 + this.uri.hashCode()) + this.tag.hashCode();
    }
}
