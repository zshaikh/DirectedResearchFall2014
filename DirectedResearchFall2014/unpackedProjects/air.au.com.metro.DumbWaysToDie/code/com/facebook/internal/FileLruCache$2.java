package com.facebook.internal;

import java.util.concurrent.atomic.*;
import android.content.*;
import com.facebook.*;
import java.util.*;
import org.json.*;
import java.io.*;

class FileLruCache$2 implements Runnable
{
    final /* synthetic */ FileLruCache this$0;
    
    FileLruCache$2(final FileLruCache this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void run() {
        this.this$0.trim();
    }
}
