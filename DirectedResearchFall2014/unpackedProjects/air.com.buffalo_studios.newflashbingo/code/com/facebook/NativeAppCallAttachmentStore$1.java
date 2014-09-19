package com.facebook;

import android.graphics.*;
import com.facebook.internal.*;
import java.io.*;

class NativeAppCallAttachmentStore$1 implements NativeAppCallAttachmentStore$ProcessAttachment<Bitmap>
{
    final /* synthetic */ NativeAppCallAttachmentStore this$0;
    
    NativeAppCallAttachmentStore$1(final NativeAppCallAttachmentStore this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void processAttachment(final Bitmap bitmap, final File file) {
        final FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(Bitmap$CompressFormat.JPEG, 100, (OutputStream)fileOutputStream);
        }
        finally {
            Utility.closeQuietly(fileOutputStream);
        }
    }
}
