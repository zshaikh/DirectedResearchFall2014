package com.facebook.internal;

import java.util.concurrent.atomic.*;
import android.content.*;
import java.util.*;
import com.facebook.*;
import org.json.*;
import java.io.*;

class FileLruCache$1 implements FileLruCache$StreamCloseCallback
{
    final /* synthetic */ FileLruCache this$0;
    final /* synthetic */ File val$buffer;
    final /* synthetic */ long val$bufferFileCreateTime;
    final /* synthetic */ String val$key;
    
    FileLruCache$1(final FileLruCache this$0, final long val$bufferFileCreateTime, final File val$buffer, final String val$key) {
        this.this$0 = this$0;
        this.val$bufferFileCreateTime = val$bufferFileCreateTime;
        this.val$buffer = val$buffer;
        this.val$key = val$key;
        super();
    }
    
    @Override
    public void onClose() {
        if (this.val$bufferFileCreateTime < this.this$0.lastClearCacheTime.get()) {
            this.val$buffer.delete();
            return;
        }
        this.this$0.renameToTargetAndTrim(this.val$key, this.val$buffer);
    }
}
