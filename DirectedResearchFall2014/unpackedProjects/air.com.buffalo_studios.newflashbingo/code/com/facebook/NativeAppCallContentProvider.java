package com.facebook;

import java.util.*;
import android.net.*;
import android.content.*;
import android.os.*;
import java.io.*;
import android.util.*;
import android.database.*;

public class NativeAppCallContentProvider extends ContentProvider
{
    private static final String ATTACHMENT_URL_BASE = "content://com.facebook.app.NativeAppCallContentProvider";
    private static final String TAG;
    private final NativeAppCallContentProvider$AttachmentDataSource dataSource;
    
    static {
        TAG = NativeAppCallContentProvider.class.getName();
    }
    
    public NativeAppCallContentProvider() {
        this(new NativeAppCallAttachmentStore());
    }
    
    NativeAppCallContentProvider(final NativeAppCallContentProvider$AttachmentDataSource dataSource) {
        super();
        this.dataSource = dataSource;
    }
    
    public static String getAttachmentUrl(final String s, final UUID uuid, final String s2) {
        return String.format("%s%s/%s/%s", "content://com.facebook.app.NativeAppCallContentProvider", s, uuid.toString(), s2);
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        return 0;
    }
    
    public String getType(final Uri uri) {
        return null;
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        return null;
    }
    
    public boolean onCreate() {
        return true;
    }
    
    public ParcelFileDescriptor openFile(final Uri uri, final String s) {
        final Pair<UUID, String> callIdAndAttachmentName = this.parseCallIdAndAttachmentName(uri);
        if (callIdAndAttachmentName == null) {
            throw new FileNotFoundException();
        }
        try {
            return ParcelFileDescriptor.open(this.dataSource.openAttachment((UUID)callIdAndAttachmentName.first, (String)callIdAndAttachmentName.second), 268435456);
        }
        catch (FileNotFoundException obj) {
            Log.e(NativeAppCallContentProvider.TAG, "Got unexpected exception:" + obj);
            throw obj;
        }
    }
    
    Pair<UUID, String> parseCallIdAndAttachmentName(final Uri uri) {
        try {
            final String[] split = uri.getPath().substring(1).split("/");
            return (Pair<UUID, String>)new Pair((Object)UUID.fromString(split[0]), (Object)split[1]);
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    public Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        return null;
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        return 0;
    }
}
