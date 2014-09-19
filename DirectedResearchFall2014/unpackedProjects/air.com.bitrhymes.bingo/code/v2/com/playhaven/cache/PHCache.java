package v2.com.playhaven.cache;

import java.util.*;
import android.content.*;
import v2.com.playhaven.utils.*;
import java.util.zip.*;
import java.io.*;
import java.net.*;

public class PHCache
{
    private static final Integer BUFFER_SIZE;
    private static final String CACHE_DIR = "playhaven.cache";
    private static PHCache sharedCache;
    private final String FILE_PREFIX;
    private File cacheDirectory;
    private HashMap<URL, File> cachedMapping;
    
    static {
        BUFFER_SIZE = 1024;
    }
    
    public PHCache(final File cacheDirectory) {
        super();
        this.FILE_PREFIX = "file://";
        this.cachedMapping = new HashMap<URL, File>();
        this.cacheDirectory = cacheDirectory;
    }
    
    public static PHCache getSharedCache() {
        return PHCache.sharedCache;
    }
    
    public static boolean hasBeenInstalled() {
        return PHCache.sharedCache != null;
    }
    
    public static boolean hasNotBeenInstalled() {
        return !hasBeenInstalled();
    }
    
    public static void installCache(final Context context) {
        final File file = new File(context.getCacheDir() + File.separator + "playhaven.cache");
        if (!file.exists()) {
            file.mkdir();
        }
        PHCache.sharedCache = new PHCache(file);
    }
    
    public static void useTestingCache(final PHCache sharedCache) {
        PHCache.sharedCache = sharedCache;
    }
    
    public void cacheFile(final URL obj, InputStream in, final boolean b) {
        final File convertToFilename = this.convertToFilename(obj);
        PHStringUtil.log("Caching url: " + obj + " to local file: " + convertToFilename);
        Label_0052: {
            if (!b) {
                break Label_0052;
            }
            try {
                in = new GZIPInputStream(in);
                final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(convertToFilename, false));
                final byte[] array = new byte[(int)PHCache.BUFFER_SIZE];
                while (true) {
                    final int read = in.read(array);
                    if (read == -1) {
                        break;
                    }
                    bufferedOutputStream.write(array, 0, read);
                }
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                in.close();
            }
            catch (IOException ex) {}
        }
    }
    
    public File convertToFilename(final URL url) {
        return new File(PHCache.sharedCache.getRootCacheDirectory().getAbsolutePath() + File.separator + url.toString().replace(File.separator, "_"));
    }
    
    public File getCachedFile(final URL key) {
        final File file = this.cachedMapping.get(key);
        PHStringUtil.log("Checking cache for URL: " + key);
        if (file != null) {
            return file;
        }
        final File convertToFilename = this.convertToFilename(key);
        PHStringUtil.log("Checking cache for file: " + convertToFilename);
        if (convertToFilename.exists()) {
            this.cachedMapping.put(key, convertToFilename);
            return convertToFilename;
        }
        return null;
    }
    
    public String getCachedFile(final String spec) {
        try {
            final File cachedFile = this.getCachedFile(new URL(spec));
            if (cachedFile == null) {
                return null;
            }
            return "file://" + cachedFile.getAbsolutePath();
        }
        catch (MalformedURLException ex) {
            return null;
        }
    }
    
    public File getRootCacheDirectory() {
        return this.cacheDirectory;
    }
}
