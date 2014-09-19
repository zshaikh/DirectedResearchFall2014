package com.facebook.internal;

import java.util.concurrent.atomic.*;
import android.content.*;
import com.facebook.*;
import java.util.*;
import org.json.*;
import java.io.*;

class FileLruCache$BufferFile
{
    private static final String FILE_NAME_PREFIX = "buffer";
    private static final FilenameFilter filterExcludeBufferFiles;
    private static final FilenameFilter filterExcludeNonBufferFiles;
    
    static {
        filterExcludeBufferFiles = new FileLruCache$BufferFile$1();
        filterExcludeNonBufferFiles = new FileLruCache$BufferFile$2();
    }
    
    static void deleteAll(final File file) {
        final File[] listFiles = file.listFiles(excludeNonBufferFiles());
        for (int length = listFiles.length, i = 0; i < length; ++i) {
            listFiles[i].delete();
        }
    }
    
    static FilenameFilter excludeBufferFiles() {
        return FileLruCache$BufferFile.filterExcludeBufferFiles;
    }
    
    static FilenameFilter excludeNonBufferFiles() {
        return FileLruCache$BufferFile.filterExcludeNonBufferFiles;
    }
    
    static File newFile(final File parent) {
        return new File(parent, "buffer" + Long.valueOf(FileLruCache.bufferIndex.incrementAndGet()).toString());
    }
}
