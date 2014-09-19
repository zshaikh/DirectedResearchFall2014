package android.support.v4.content;

import org.xmlpull.v1.*;
import android.content.res.*;
import android.content.pm.*;
import android.webkit.*;
import android.content.*;
import android.os.*;
import java.io.*;
import android.database.*;
import android.text.*;
import android.net.*;
import java.util.*;

public class FileProvider extends ContentProvider
{
    private static final String ATTR_NAME = "name";
    private static final String ATTR_PATH = "path";
    private static final String[] COLUMNS;
    private static final File DEVICE_ROOT;
    private static final String META_DATA_FILE_PROVIDER_PATHS = "android.support.FILE_PROVIDER_PATHS";
    private static final String TAG_CACHE_PATH = "cache-path";
    private static final String TAG_EXTERNAL = "external-path";
    private static final String TAG_FILES_PATH = "files-path";
    private static final String TAG_ROOT_PATH = "root-path";
    private static HashMap<String, PathStrategy> sCache;
    private PathStrategy mStrategy;
    
    static {
        COLUMNS = new String[] { "_display_name", "_size" };
        DEVICE_ROOT = new File("/");
        FileProvider.sCache = new HashMap<String, PathStrategy>();
    }
    
    private static File buildPath(final File file, final String... array) {
        final int length = array.length;
        int i = 0;
        File parent = file;
        while (i < length) {
            final String child = array[i];
            File file2;
            if (child != null) {
                file2 = new File(parent, child);
            }
            else {
                file2 = parent;
            }
            ++i;
            parent = file2;
        }
        return parent;
    }
    
    private static Object[] copyOf(final Object[] array, final int n) {
        final Object[] array2 = new Object[n];
        System.arraycopy(array, 0, array2, 0, n);
        return array2;
    }
    
    private static String[] copyOf(final String[] array, final int n) {
        final String[] array2 = new String[n];
        System.arraycopy(array, 0, array2, 0, n);
        return array2;
    }
    
    private static PathStrategy getPathStrategy(final Context context, final String s) {
        // monitorenter(FileProvider.sCache)
        try {
            PathStrategy pathStrategy = FileProvider.sCache.get(s);
            if (pathStrategy != null) {
                return pathStrategy;
            }
            try {
                pathStrategy = parsePathStrategy(context, s);
                FileProvider.sCache.put(s, pathStrategy);
                return pathStrategy;
            }
            catch (IOException cause) {
                throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", cause);
            }
            catch (XmlPullParserException cause2) {
                throw new IllegalArgumentException("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", (Throwable)cause2);
            }
        }
        finally {}
    }
    
    public static Uri getUriForFile(final Context context, final String s, final File file) {
        return getPathStrategy(context, s).getUriForFile(file);
    }
    
    private static int modeToMode(final String str) {
        if ("r".equals(str)) {
            return 268435456;
        }
        if ("w".equals(str) || "wt".equals(str)) {
            return 738197504;
        }
        if ("wa".equals(str)) {
            return 704643072;
        }
        if ("rw".equals(str)) {
            return 939524096;
        }
        if ("rwt".equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException("Invalid mode: " + str);
    }
    
    private static PathStrategy parsePathStrategy(final Context context, final String s) throws IOException, XmlPullParserException {
        final SimplePathStrategy simplePathStrategy = new SimplePathStrategy(s);
        final XmlResourceParser loadXmlMetaData = context.getPackageManager().resolveContentProvider(s, 128).loadXmlMetaData(context.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
        if (loadXmlMetaData == null) {
            throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
        }
        while (true) {
            final int next = loadXmlMetaData.next();
            if (next == 1) {
                break;
            }
            if (next != 2) {
                continue;
            }
            final String name = loadXmlMetaData.getName();
            final String attributeValue = loadXmlMetaData.getAttributeValue((String)null, "name");
            final String attributeValue2 = loadXmlMetaData.getAttributeValue((String)null, "path");
            File file;
            if ("root-path".equals(name)) {
                file = buildPath(FileProvider.DEVICE_ROOT, attributeValue2);
            }
            else if ("files-path".equals(name)) {
                file = buildPath(context.getFilesDir(), attributeValue2);
            }
            else if ("cache-path".equals(name)) {
                file = buildPath(context.getCacheDir(), attributeValue2);
            }
            else {
                final boolean equals = "external-path".equals(name);
                file = null;
                if (equals) {
                    file = buildPath(Environment.getExternalStorageDirectory(), attributeValue2);
                }
            }
            if (file == null) {
                continue;
            }
            simplePathStrategy.addRoot(attributeValue, file);
        }
        return (PathStrategy)simplePathStrategy;
    }
    
    public void attachInfo(final Context context, final ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException("Provider must not be exported");
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException("Provider must grant uri permissions");
        }
        this.mStrategy = getPathStrategy(context, providerInfo.authority);
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        if (this.mStrategy.getFileForUri(uri).delete()) {
            return 1;
        }
        return 0;
    }
    
    public String getType(final Uri uri) {
        final File fileForUri = this.mStrategy.getFileForUri(uri);
        final int lastIndex = fileForUri.getName().lastIndexOf(46);
        if (lastIndex >= 0) {
            final String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(lastIndex + 1));
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return "application/octet-stream";
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        throw new UnsupportedOperationException("No external inserts");
    }
    
    public boolean onCreate() {
        return true;
    }
    
    public ParcelFileDescriptor openFile(final Uri uri, final String s) throws FileNotFoundException {
        return ParcelFileDescriptor.open(this.mStrategy.getFileForUri(uri), modeToMode(s));
    }
    
    public Cursor query(final Uri uri, String[] columns, final String s, final String[] array, final String s2) {
        final File fileForUri = this.mStrategy.getFileForUri(uri);
        if (columns == null) {
            columns = FileProvider.COLUMNS;
        }
        final String[] array2 = new String[columns.length];
        final Object[] array3 = new Object[columns.length];
        final String[] array4 = columns;
        final int length = array4.length;
        int i = 0;
        int n = 0;
        while (i < length) {
            final String s3 = array4[i];
            int n2;
            if ("_display_name".equals(s3)) {
                array2[n] = "_display_name";
                n2 = n + 1;
                array3[n] = fileForUri.getName();
            }
            else if ("_size".equals(s3)) {
                array2[n] = "_size";
                n2 = n + 1;
                array3[n] = fileForUri.length();
            }
            else {
                n2 = n;
            }
            ++i;
            n = n2;
        }
        final String[] copy = copyOf(array2, n);
        final Object[] copy2 = copyOf(array3, n);
        final MatrixCursor matrixCursor = new MatrixCursor(copy, 1);
        matrixCursor.addRow(copy2);
        return (Cursor)matrixCursor;
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        throw new UnsupportedOperationException("No external updates");
    }
    
    interface PathStrategy
    {
        File getFileForUri(Uri p0);
        
        Uri getUriForFile(File p0);
    }
    
    static class SimplePathStrategy implements PathStrategy
    {
        private final String mAuthority;
        private final HashMap<String, File> mRoots;
        
        public SimplePathStrategy(final String mAuthority) {
            super();
            this.mRoots = new HashMap<String, File>();
            this.mAuthority = mAuthority;
        }
        
        public void addRoot(final String key, final File obj) {
            if (TextUtils.isEmpty((CharSequence)key)) {
                throw new IllegalArgumentException("Name must not be empty");
            }
            try {
                this.mRoots.put(key, obj.getCanonicalFile());
            }
            catch (IOException cause) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + obj, cause);
            }
        }
        
        @Override
        public File getFileForUri(final Uri obj) {
            final String encodedPath = obj.getEncodedPath();
            final int index = encodedPath.indexOf(47, 1);
            final String decode = Uri.decode(encodedPath.substring(1, index));
            final String decode2 = Uri.decode(encodedPath.substring(index + 1));
            final File parent = this.mRoots.get(decode);
            if (parent == null) {
                throw new IllegalArgumentException("Unable to find configured root for " + obj);
            }
            final File obj2 = new File(parent, decode2);
            File canonicalFile;
            try {
                canonicalFile = obj2.getCanonicalFile();
                if (!canonicalFile.getPath().startsWith(parent.getPath())) {
                    throw new SecurityException("Resolved path jumped beyond configured root");
                }
            }
            catch (IOException ex) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + obj2);
            }
            return canonicalFile;
        }
        
        @Override
        public Uri getUriForFile(final File obj) {
            String canonicalPath;
            Object o;
            try {
                canonicalPath = obj.getCanonicalPath();
                o = null;
                for (final Map.Entry<String, File> entry : this.mRoots.entrySet()) {
                    final String path = entry.getValue().getPath();
                    if (canonicalPath.startsWith(path) && (o == null || path.length() > ((Map.Entry<K, File>)o).getValue().getPath().length())) {
                        o = entry;
                    }
                }
            }
            catch (IOException ex) {
                throw new IllegalArgumentException("Failed to resolve canonical path for " + obj);
            }
            if (o == null) {
                throw new IllegalArgumentException("Failed to find configured root that contains " + canonicalPath);
            }
            final String path2 = ((Map.Entry<K, File>)o).getValue().getPath();
            String s;
            if (path2.endsWith("/")) {
                s = canonicalPath.substring(path2.length());
            }
            else {
                s = canonicalPath.substring(1 + path2.length());
            }
            return new Uri$Builder().scheme("content").authority(this.mAuthority).encodedPath(Uri.encode((String)((Map.Entry)o).getKey()) + '/' + Uri.encode(s, "/")).build();
        }
    }
}
