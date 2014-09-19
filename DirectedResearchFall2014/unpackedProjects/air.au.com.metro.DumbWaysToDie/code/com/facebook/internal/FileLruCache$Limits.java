package com.facebook.internal;

import java.security.*;

public final class FileLruCache$Limits
{
    private int byteCount;
    private int fileCount;
    
    public FileLruCache$Limits() {
        super();
        this.fileCount = 1024;
        this.byteCount = 1048576;
    }
    
    final int getByteCount() {
        return this.byteCount;
    }
    
    final int getFileCount() {
        return this.fileCount;
    }
    
    final void setByteCount(final int byteCount) {
        if (byteCount < 0) {
            throw new InvalidParameterException("Cache byte-count limit must be >= 0");
        }
        this.byteCount = byteCount;
    }
    
    final void setFileCount(final int fileCount) {
        if (fileCount < 0) {
            throw new InvalidParameterException("Cache file count limit must be >= 0");
        }
        this.fileCount = fileCount;
    }
}
