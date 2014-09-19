package com.fusepowered.m2.m2l;

import android.support.v4.util.*;
import android.content.*;
import com.fusepowered.m2.m2l.util.*;
import java.io.*;
import android.util.*;
import android.net.*;

public class DiskLruCache extends LruCache<String, File>
{
    private final File mCacheDirectory;
    private final String mCacheDirectoryName;
    private final Context mContext;
    
    public DiskLruCache(final Context mContext, final String mCacheDirectoryName, final int n) throws IllegalArgumentException, IOException {
        super(n);
        if (mContext == null) {
            throw new IllegalArgumentException("context may not be null.");
        }
        if (mCacheDirectoryName == null) {
            throw new IllegalArgumentException("cacheDirectoryName may not be null.");
        }
        if (n < 0) {
            throw new IllegalArgumentException("maxSizeBytes must be positive.");
        }
        this.mContext = mContext;
        this.mCacheDirectoryName = mCacheDirectoryName;
        this.mCacheDirectory = Files.createDirectory(mContext.getFilesDir() + File.separator + this.mCacheDirectoryName);
        if (this.mCacheDirectory == null) {
            throw new IOException("Unable to obtain access to directory " + this.mCacheDirectoryName);
        }
        this.loadFilesFromDisk();
    }
    
    private File createFile(final String str, final InputStream inputStream) {
        final File file = new File(this.mContext.getFilesDir() + File.separator + this.mCacheDirectoryName + File.separator + str);
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(file);
            final InputStream inputStream2 = inputStream;
            final FileOutputStream fileOutputStream2 = fileOutputStream;
            Streams.copyContent(inputStream2, fileOutputStream2);
            return file;
        }
        catch (FileNotFoundException ex) {
            return null;
        }
        try {
            final InputStream inputStream2 = inputStream;
            final FileOutputStream fileOutputStream2 = fileOutputStream;
            Streams.copyContent(inputStream2, fileOutputStream2);
            return file;
        }
        catch (IOException ex2) {
            file.delete();
            return null;
        }
        finally {
            Streams.closeStream(fileOutputStream);
        }
    }
    
    private void loadFilesFromDisk() {
        final File[] listFiles = this.mCacheDirectory.listFiles();
        if (listFiles != null) {
            for (final File file : listFiles) {
                this.put(file.getName(), file);
            }
        }
    }
    
    @Override
    protected void entryRemoved(final boolean b, final String s, final File file, final File file2) {
        super.entryRemoved(b, s, file, file2);
        if (file != null && !file.delete()) {
            Log.d("MoPub", "Unable to delete file from cache: " + file.getName());
        }
    }
    
    File getCacheDirectory() {
        return this.mCacheDirectory;
    }
    
    Uri getUri(final String s) {
        final File file = this.get(Utils.sha1(s));
        if (file == null) {
            return null;
        }
        return Uri.parse(file.getAbsolutePath());
    }
    
    boolean putStream(final String s, final InputStream inputStream) {
        // monitorenter(this)
        boolean b = false;
        Label_0012: {
            if (s == null || inputStream == null) {
                b = false;
            }
            else {
                try {
                    final String sha1 = Utils.sha1(s);
                    if (this.getUri(sha1) != null) {
                        b = false;
                        break Label_0012;
                    }
                    final File file = this.createFile(sha1, inputStream);
                    if (file != null) {
                        if (file.exists()) {
                            this.put(sha1, file);
                            b = true;
                            break Label_0012;
                        }
                    }
                }
                finally {
                }
                // monitorexit(this)
                b = false;
            }
        }
        // monitorexit(this)
        return b;
    }
    
    File removeStream(final String s) {
        // monitorenter(this)
        File file;
        if (s == null) {
            file = null;
        }
        else {
            try {
                file = this.remove(Utils.sha1(s));
            }
            finally {
            }
            // monitorexit(this)
        }
        // monitorexit(this)
        return file;
    }
    
    @Override
    protected int sizeOf(final String s, final File file) {
        if (file != null && file.exists() && file.length() > 0L) {
            return Files.intLength(file);
        }
        return super.sizeOf(s, file);
    }
}
