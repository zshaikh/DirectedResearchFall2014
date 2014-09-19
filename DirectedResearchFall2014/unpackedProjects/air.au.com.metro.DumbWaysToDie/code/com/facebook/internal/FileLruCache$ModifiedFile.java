package com.facebook.internal;

import java.io.*;

final class FileLruCache$ModifiedFile implements Comparable
{
    private final File file;
    private final long modified;
    
    FileLruCache$ModifiedFile(final File file) {
        super();
        this.file = file;
        this.modified = file.lastModified();
    }
    
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
}
