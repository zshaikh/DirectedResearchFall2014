package com.facebook;

import android.content.*;
import android.util.*;
import com.facebook.internal.*;
import java.util.*;
import android.graphics.*;
import java.net.*;
import java.io.*;

public final class NativeAppCallAttachmentStore implements NativeAppCallContentProvider$AttachmentDataSource
{
    static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
    private static final String TAG;
    private static File attachmentsDirectory;
    
    static {
        TAG = NativeAppCallAttachmentStore.class.getName();
    }
    
    private <T> void addAttachments(final Context context, final UUID uuid, final Map<String, T> map, final NativeAppCallAttachmentStore$ProcessAttachment<T> nativeAppCallAttachmentStore$ProcessAttachment) {
        if (map.size() != 0) {
            if (NativeAppCallAttachmentStore.attachmentsDirectory == null) {
                Utility.deleteDirectory(getAttachmentsDirectory(context));
            }
            this.ensureAttachmentsDirectoryExists(context);
            final ArrayList<File> list = new ArrayList<File>();
            try {
                for (final Map.Entry<String, T> entry : map.entrySet()) {
                    final String s = entry.getKey();
                    final T value = entry.getValue();
                    final File attachmentFile = this.getAttachmentFile(uuid, s, true);
                    list.add(attachmentFile);
                    nativeAppCallAttachmentStore$ProcessAttachment.processAttachment(value, attachmentFile);
                }
            }
            catch (IOException obj) {
                Log.e(NativeAppCallAttachmentStore.TAG, "Got unexpected exception:" + obj);
                for (final File file : list) {
                    try {
                        file.delete();
                    }
                    catch (Exception ex) {}
                }
                throw new FacebookException(obj);
            }
        }
    }
    
    static File getAttachmentsDirectory(final Context context) {
        synchronized (NativeAppCallAttachmentStore.class) {
            if (NativeAppCallAttachmentStore.attachmentsDirectory == null) {
                NativeAppCallAttachmentStore.attachmentsDirectory = new File(context.getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
            }
            return NativeAppCallAttachmentStore.attachmentsDirectory;
        }
    }
    
    public final void addAttachmentFilesForCall(final Context context, final UUID uuid, final Map<String, File> map) {
        Validate.notNull(context, "context");
        Validate.notNull(uuid, "callId");
        Validate.containsNoNulls((Collection<File>)map.values(), "imageAttachmentFiles");
        Validate.containsNoNullOrEmpty(map.keySet(), "imageAttachmentFiles");
        this.addAttachments(context, uuid, (Map<String, T>)map, (NativeAppCallAttachmentStore$ProcessAttachment<T>)new NativeAppCallAttachmentStore$2(this));
    }
    
    public final void addAttachmentsForCall(final Context context, final UUID uuid, final Map<String, Bitmap> map) {
        Validate.notNull(context, "context");
        Validate.notNull(uuid, "callId");
        Validate.containsNoNulls((Collection<Bitmap>)map.values(), "imageAttachments");
        Validate.containsNoNullOrEmpty(map.keySet(), "imageAttachments");
        this.addAttachments(context, uuid, (Map<String, T>)map, (NativeAppCallAttachmentStore$ProcessAttachment<T>)new NativeAppCallAttachmentStore$1(this));
    }
    
    final void cleanupAllAttachments(final Context context) {
        Utility.deleteDirectory(getAttachmentsDirectory(context));
    }
    
    public final void cleanupAttachmentsForCall(final Context context, final UUID uuid) {
        Utility.deleteDirectory(this.getAttachmentsDirectoryForCall(uuid, false));
    }
    
    final File ensureAttachmentsDirectoryExists(final Context context) {
        final File attachmentsDirectory = getAttachmentsDirectory(context);
        attachmentsDirectory.mkdirs();
        return attachmentsDirectory;
    }
    
    final File getAttachmentFile(final UUID uuid, final String s, final boolean b) {
        final File attachmentsDirectoryForCall = this.getAttachmentsDirectoryForCall(uuid, b);
        if (attachmentsDirectoryForCall == null) {
            return null;
        }
        try {
            return new File(attachmentsDirectoryForCall, URLEncoder.encode(s, "UTF-8"));
        }
        catch (UnsupportedEncodingException ex) {
            return null;
        }
    }
    
    final File getAttachmentsDirectoryForCall(final UUID uuid, final boolean b) {
        File file;
        if (NativeAppCallAttachmentStore.attachmentsDirectory == null) {
            file = null;
        }
        else {
            file = new File(NativeAppCallAttachmentStore.attachmentsDirectory, uuid.toString());
            if (b && !file.exists()) {
                file.mkdirs();
                return file;
            }
        }
        return file;
    }
    
    @Override
    public final File openAttachment(final UUID uuid, final String s) {
        if (Utility.isNullOrEmpty(s) || uuid == null) {
            throw new FileNotFoundException();
        }
        try {
            return this.getAttachmentFile(uuid, s, false);
        }
        catch (IOException ex) {
            throw new FileNotFoundException();
        }
    }
}
