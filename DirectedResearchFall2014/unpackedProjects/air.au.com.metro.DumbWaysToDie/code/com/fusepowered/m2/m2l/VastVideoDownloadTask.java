package com.fusepowered.m2.m2l;

import android.os.*;
import org.apache.http.impl.client.*;
import com.fusepowered.m2.m2l.factories.*;
import org.apache.http.client.methods.*;
import org.apache.http.*;
import java.io.*;
import com.fusepowered.m2.m2l.util.*;
import org.apache.http.client.*;
import android.util.*;

public class VastVideoDownloadTask extends AsyncTask<String, Void, Boolean>
{
    private static final int HTTP_CLIENT_TIMEOUT = 10000;
    private static final long MAX_TEMP_FILE_LENGTH = 25000000L;
    private static final String TEMP_FILE_PREFIX = "mopub-vast";
    private final DiskLruCache mDiskLruCache;
    private final DefaultHttpClient mHttpClient;
    private final OnDownloadCompleteListener mOnDownloadCompleteListener;
    
    public VastVideoDownloadTask(final OnDownloadCompleteListener mOnDownloadCompleteListener, final DiskLruCache mDiskLruCache) {
        super();
        this.mOnDownloadCompleteListener = mOnDownloadCompleteListener;
        this.mDiskLruCache = mDiskLruCache;
        this.mHttpClient = HttpClientFactory.create(10000);
    }
    
    InputStream connectToUrl(final String str) throws IOException {
        if (str == null) {
            throw new IOException("Unable to connect to null url.");
        }
        final HttpResponse execute = this.mHttpClient.execute((HttpUriRequest)new HttpGet(str));
        if (execute == null || execute.getEntity() == null) {
            throw new IOException("Obtained null response from video url: " + str);
        }
        return execute.getEntity().getContent();
    }
    
    File copyInputStreamToTempFile(final InputStream inputStream) throws IOException {
        final File tempFile = File.createTempFile("mopub-vast", null, this.mDiskLruCache.getCacheDirectory());
        final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(tempFile));
        try {
            Streams.copyContent(inputStream, bufferedOutputStream, 25000000L);
            return tempFile;
        }
        catch (IOException ex) {
            tempFile.delete();
            throw ex;
        }
        finally {
            Streams.closeStream(inputStream);
            Streams.closeStream(bufferedOutputStream);
        }
    }
    
    boolean copyTempFileIntoCache(final String s, final File file) throws FileNotFoundException {
        final BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
        final boolean putStream = this.mDiskLruCache.putStream(s, bufferedInputStream);
        Streams.closeStream(bufferedInputStream);
        return putStream;
    }
    
    protected Boolean doInBackground(final String... array) {
        if (array == null || array[0] == null) {
            return false;
        }
        return this.downloadToCache(array[0]);
    }
    
    Boolean downloadToCache(final String s) {
        boolean copyTempFileIntoCache = false;
        try {
            final File copyInputStreamToTempFile = this.copyInputStreamToTempFile(this.connectToUrl(s));
            copyTempFileIntoCache = this.copyTempFileIntoCache(s, copyInputStreamToTempFile);
            copyInputStreamToTempFile.delete();
            HttpClients.safeShutdown((HttpClient)this.mHttpClient);
            return copyTempFileIntoCache;
        }
        catch (Exception ex) {
            Log.d("MoPub", "Failed to download video.");
            HttpClients.safeShutdown((HttpClient)this.mHttpClient);
            return copyTempFileIntoCache;
        }
        finally {
            HttpClients.safeShutdown((HttpClient)this.mHttpClient);
        }
    }
    
    protected void onPostExecute(final Boolean b) {
        if (b) {
            if (this.mOnDownloadCompleteListener != null) {
                this.mOnDownloadCompleteListener.onDownloadSuccess();
            }
        }
        else if (this.mOnDownloadCompleteListener != null) {
            this.mOnDownloadCompleteListener.onDownloadFailed();
        }
    }
    
    public interface OnDownloadCompleteListener
    {
        void onDownloadFailed();
        
        void onDownloadSuccess();
    }
}
