package com.facebook.internal;

import java.io.*;

final class FileLruCache$ModifiedFile implements Comparable<FileLruCache$ModifiedFile>
{
    private static final int HASH_MULTIPLIER = 37;
    private static final int HASH_SEED = 29;
    private final File file;
    private final long modified;
    
    FileLruCache$ModifiedFile(final File file) {
        super();
        this.file = file;
        this.modified = file.lastModified();
    }
    
    @Override
    public final int compareTo(final FileLruCache$ModifiedFile fileLruCache$ModifiedFile) {
        if (this.getModified() < fileLruCache$ModifiedFile.getModified()) {
            return -1;
        }
        if (this.getModified() > fileLruCache$ModifiedFile.getModified()) {
            return 1;
        }
        return this.getFile().compareTo(fileLruCache$ModifiedFile.getFile());
    }
    
    @Override
    public final boolean equals(final Object o) {
        return o instanceof FileLruCache$ModifiedFile && this.compareTo((FileLruCache$ModifiedFile)o) == 0;
    }
    
    final File getFile() {
        return this.file;
    }
    
    final long getModified() {
        return this.modified;
    }
    
    @Override
    public final int hashCode() {
        return 37 * (1073 + this.file.hashCode()) + (int)(this.modified % 2147483647L);
    }
}
