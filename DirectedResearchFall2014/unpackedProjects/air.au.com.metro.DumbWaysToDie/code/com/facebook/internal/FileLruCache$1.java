package com.facebook.internal;

import java.util.concurrent.atomic.*;
import android.content.*;
import com.facebook.*;
import java.util.*;
import org.json.*;
import java.io.*;

class FileLruCache$1 implements FileLruCache$StreamCloseCallback
{
    final /* synthetic */ FileLruCache this$0;
    final /* synthetic */ File val$buffer;
    final /* synthetic */ String val$key;
    
    FileLruCache$1(final FileLruCache this$0, final String val$key, final File val$buffer) {
        this.this$0 = this$0;
        this.val$key = val$key;
        this.val$buffer = val$buffer;
        super();
    }
    
    @Override
    public void onClose() {
        this.this$0.renameToTargetAndTrim(this.val$key, this.val$buffer);
    }
}
