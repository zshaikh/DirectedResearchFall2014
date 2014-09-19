package com.fusepowered.crashlog.handlers;

import android.content.*;
import android.util.*;
import java.util.regex.*;
import com.fusepowered.crashlog.*;
import java.util.*;
import com.fusepowered.logging.*;
import java.io.*;

public class CacheForStartupCrashHandler implements CrashHandler
{
    private static final String TAG = "CacheForStartupCrashHandler";
    private final File mCacheDirectory;
    
    public CacheForStartupCrashHandler(final Context context) {
        this(getDefaultCacheDirectory(context));
    }
    
    private CacheForStartupCrashHandler(final File mCacheDirectory) {
        super();
        this.mCacheDirectory = mCacheDirectory;
    }
    
    public static void clearCachedCrashes(final Context context) {
        clearCachedCrashes(getDefaultCacheDirectory(context), context);
    }
    
    private static void clearCachedCrashes(final File file, final Context context) {
        final File[] cachedCrashFiles = getCachedCrashFiles(getDefaultCacheDirectory(context));
        if (cachedCrashFiles == null || cachedCrashFiles.length == 0) {
            Log.i("CacheForStartupCrashHandler", "No cached crash logs found to clear");
        }
        else {
            for (final File file2 : cachedCrashFiles) {
                if (file2.delete()) {
                    Log.i("CacheForStartupCrashHandler", "Deleted crash log: " + file2.getAbsolutePath());
                }
                else {
                    Log.i("CacheForStartupCrashHandler", "Could not delete crash log: " + file2.getAbsolutePath());
                }
            }
        }
    }
    
    private static String createFilename(final String str) {
        return "FuseCrash-" + str + ".json";
    }
    
    private static File[] getCachedCrashFiles(final File file) {
        return file.listFiles(new FilenameFilter() {
            final /* synthetic */ Pattern val$pattern = Pattern.compile("FuseCrash-[\\w\\d-]*.json");
            
            @Override
            public boolean accept(final File file, final String input) {
                return this.val$pattern.matcher(input).matches();
            }
        });
    }
    
    public static CrashData[] getCachedCrashes(final Context context) {
        return getCachedCrashes(getDefaultCacheDirectory(context), context);
    }
    
    public static CrashData[] getCachedCrashes(final File file, final Context context) {
        final File[] cachedCrashFiles = getCachedCrashFiles(file);
        final ArrayList list = new ArrayList<CrashData>(cachedCrashFiles.length);
        for (int length = cachedCrashFiles.length, i = 0; i < length; ++i) {
            final CrashData crashDataFromFile = readCrashDataFromFile(cachedCrashFiles[i], context);
            if (crashDataFromFile != null) {
                list.add(crashDataFromFile);
            }
        }
        if (list.size() == 0) {
            return null;
        }
        return list.toArray(list.toArray(new CrashData[list.size()]));
    }
    
    public static File getDefaultCacheDirectory(final Context context) {
        final File file = new File(context.getCacheDir(), "FuseCrashLog");
        if (!file.exists()) {
            if (!file.mkdirs()) {
                FuseLog.e("CacheForStartupCrashHandler", "Default cache directory does not exist and could not be created");
                return null;
            }
        }
        else if (file.isFile()) {
            FuseLog.e("CacheForStartupCrashHandler", "Default cache directory path exists but is a file.");
            return null;
        }
        return file;
    }
    
    private static CrashData readCrashDataFromFile(final File file, final Context context) {
        BufferedReader bufferedReader;
        StringBuilder sb;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
            sb = new StringBuilder("");
            while (true) {
                final String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
            }
        }
        catch (IOException ex) {
            FuseLog.e("CacheForStartupCrashHandler", "Error occurred trying to read cached crash data: " + ex.toString());
            return null;
        }
        bufferedReader.close();
        final CrashData fromJson = CrashData.fromJson(sb.toString());
        if (fromJson == null) {
            FuseLog.e("CacheForStartupCrashHandler", "Could not parse crash log: " + file.getAbsolutePath());
        }
        else {
            FuseLog.i("CacheForStartupCrashHandler", "Read cached cache data from: " + file.getAbsolutePath());
        }
        return fromJson;
    }
    
    @Override
    public boolean handleCrash(final CrashData crashData, final Context context) {
        FuseLog.i("CacheForStartupCrashHandler", "Received crash to handle.");
        final File file = new File(this.mCacheDirectory, createFilename(crashData.getCrashId()));
        if (file.exists()) {
            FuseLog.e("CacheForStartupCrashHandler", "Can't cache crash, file already exists: " + file.getAbsolutePath());
            return false;
        }
        try {
            final BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            bufferedWriter.write(crashData.toJson());
            bufferedWriter.close();
            FuseLog.i("CacheForStartupCrashHandler", "Cached crash to file: " + file.getAbsolutePath());
            return true;
        }
        catch (IOException ex) {
            FuseLog.e("CacheForStartupCrashHandler", "Error occurred trying to cache the crash data: " + ex.toString());
            return false;
        }
    }
}
