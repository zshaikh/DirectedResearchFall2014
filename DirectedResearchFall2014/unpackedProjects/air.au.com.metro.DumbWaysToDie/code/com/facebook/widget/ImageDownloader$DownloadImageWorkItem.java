package com.facebook.widget;

import android.content.*;
import android.os.*;
import java.util.*;
import android.graphics.*;
import com.facebook.internal.*;
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
