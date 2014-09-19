package com.facebook;

import com.facebook.internal.*;
import java.io.*;

class NativeAppCallAttachmentStore$2 implements NativeAppCallAttachmentStore$ProcessAttachment<File>
{
    final /* synthetic */ NativeAppCallAttachmentStore this$0;
    
    NativeAppCallAttachmentStore$2(final NativeAppCallAttachmentStore this$0) {
        this.this$0 = this$0;
        super();
    }
    
    @Override
    public void processAttachment(final File file, final File file2) {
        final FileOutputStream fileOutputStream = new FileOutputStream(file2);
        while (true) {
            try {
                final FileInputStream fileInputStream = new FileInputStream(file);
                Label_0066: {
                    try {
                        final byte[] array = new byte[1024];
                        while (true) {
                            final int read = fileInputStream.read(array);
                            if (read <= 0) {
                                break Label_0066;
                            }
                            fileOutputStream.write(array, 0, read);
                        }
                    }
                    finally {}
                    Utility.closeQuietly(fileOutputStream);
                    Utility.closeQuietly(fileInputStream);
                    throw;
                }
                Utility.closeQuietly(fileOutputStream);
                Utility.closeQuietly(fileInputStream);
            }
            finally {
                final Throwable t2;
                final Throwable t = t2;
                final FileInputStream fileInputStream = null;
                continue;
            }
            break;
        }
    }
}
