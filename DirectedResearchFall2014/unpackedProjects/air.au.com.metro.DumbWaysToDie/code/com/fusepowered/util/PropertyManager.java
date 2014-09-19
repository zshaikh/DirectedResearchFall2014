package com.fusepowered.util;

import com.fusepowered.fuseapi.*;
import android.content.pm.*;
import java.util.*;
import android.content.*;
import android.content.res.*;
import java.io.*;

public class PropertyManager
{
    public static String API_VERSION;
    
    static {
        PropertyManager.API_VERSION = "api.version";
    }
    
    public static String getGameVersion() {
        try {
            return FuseAPI.getContext().getPackageManager().getPackageInfo(FuseAPI.getContext().getPackageName(), 0).versionName;
        }
        catch (PackageManager$NameNotFoundException ex) {
            return null;
        }
    }
    
    public static String readProperty(final String key) {
        final Context context = FuseAPI.getContext();
        String property = null;
        if (context == null) {
            return property;
        }
        final Resources resources = FuseAPI.getContext().getResources();
        property = null;
        if (resources == null) {
            return property;
        }
        final AssetManager assets = FuseAPI.getContext().getResources().getAssets();
        try {
            final InputStream open = assets.open("fuse.properties");
            final Properties properties = new Properties();
            properties.load(open);
            property = properties.getProperty(key);
            return property;
        }
        catch (IOException ex) {
            return null;
        }
    }
}
