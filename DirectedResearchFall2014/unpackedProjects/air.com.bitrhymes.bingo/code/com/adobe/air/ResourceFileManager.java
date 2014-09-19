package com.adobe.air;

import android.content.*;
import android.net.*;
import com.adobe.air.utils.*;
import android.content.res.*;
import java.io.*;

public final class ResourceFileManager
{
    private final Context mAppContext;
    private final Resources mAppResources;
    private ResourceIdMap mResourceIdMap;
    
    ResourceFileManager(final Context mAppContext) {
        super();
        this.mResourceIdMap = null;
        this.mAppContext = mAppContext;
        this.mAppResources = mAppContext.getResources();
        try {
            this.mResourceIdMap = new ResourceIdMap(this.mAppContext.getClassLoader().loadClass(this.mAppContext.getPackageName() + ".R"));
        }
        catch (ClassNotFoundException ex) {}
    }
    
    private String remapSpecialFileNames(final String s) {
        if (s.equals("ss.cfg") || s.equals("ss.sgn") || s.equals("mms.cfg")) {
            return s.replace('.', '_');
        }
        return null;
    }
    
    private boolean resExists(final String s) {
        final String remapSpecialFileNames = this.remapSpecialFileNames(s);
        boolean resExists = false;
        if (remapSpecialFileNames != null) {
            resExists = this.resExists(this.lookupResId("raw." + remapSpecialFileNames));
        }
        return resExists;
    }
    
    public AssetFileDescriptor GetAssetFileDescriptor(final String s) {
        try {
            String remapSpecialFileNames = this.remapSpecialFileNames(s);
            if (remapSpecialFileNames == null) {
                remapSpecialFileNames = s;
            }
            return this.mAppContext.getContentResolver().openAssetFileDescriptor(Uri.parse("android.resource://" + this.mAppContext.getPackageName() + "/raw/" + remapSpecialFileNames), "r");
        }
        catch (Exception ex) {
            return null;
        }
    }
    
    public void extractResource(final int n, final File file) throws IOException {
        final InputStream stream = this.getStream(n);
        Utils.writeOut(stream, file);
        stream.close();
    }
    
    public InputStream getFileStreamFromRawRes(final int n) throws Resources$NotFoundException {
        final InputStream openRawResource = this.mAppResources.openRawResource(n);
        if (openRawResource == null) {
            return openRawResource;
        }
        return openRawResource;
    }
    
    public String getResourceEntryName(final int n) {
        try {
            return this.mAppResources.getResourceEntryName(n);
        }
        catch (Exception ex) {
            return "null";
        }
    }
    
    public String getResourceName(final int n) {
        try {
            return this.mAppResources.getResourceName(n);
        }
        catch (Exception ex) {
            return "null";
        }
    }
    
    public InputStream getStream(final int n) throws Resources$NotFoundException {
        return this.mAppResources.openRawResource(n);
    }
    
    public int lookupResId(final String s) {
        try {
            if (this.mResourceIdMap != null) {
                return this.mResourceIdMap.getId(s);
            }
        }
        catch (Resources$NotFoundException ex) {}
        return -1;
    }
    
    public String readFileFromRawRes(final int n) {
        final String s = new String();
        try {
            final InputStream fileStreamFromRawRes = this.getFileStreamFromRawRes(n);
            final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Utils.writeThrough(fileStreamFromRawRes, byteArrayOutputStream);
            return new String(byteArrayOutputStream.toByteArray(), "UTF-8");
        }
        catch (Exception ex) {
            return s;
        }
    }
    
    public boolean resExists(final int n) {
        if (n <= 0) {
            return false;
        }
        try {
            return this.mAppResources.openRawResource(n) != null;
        }
        catch (Exception ex) {
            return false;
        }
    }
}
