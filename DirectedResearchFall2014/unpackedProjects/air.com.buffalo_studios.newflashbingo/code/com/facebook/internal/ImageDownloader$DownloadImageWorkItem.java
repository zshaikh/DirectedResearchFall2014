package com.facebook.internal;

import android.content.*;
import java.util.*;
import android.os.*;
import android.graphics.*;
import java.net.*;
import java.io.*;

class ImageDownloader$DownloadImageWorkItem implements Runnable
{
    private Context context;
    private ImageDownloader$RequestKey key;
    
    ImageDownloader$DownloadImageWorkItem(final Context context, final ImageDownloader$RequestKey key) {
        super();
        this.context = context;
        this.key = key;
    }
    
    @Override
    public void run() {
        download(this.key, this.context);
    }
}
