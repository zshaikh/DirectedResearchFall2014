package com.facebook.internal;

import java.util.concurrent.*;
import android.net.*;
import android.content.*;
import android.webkit.*;
import java.net.*;
import android.provider.*;
import android.content.pm.*;
import org.json.*;
import java.security.*;
import android.os.*;
import android.text.*;
import com.facebook.*;
import com.facebook.model.*;
import java.io.*;
import java.util.*;

public final class Utility
{
    private static final String APPLICATION_FIELDS = "fields";
    private static final String[] APP_SETTING_FIELDS;
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    static final String LOG_TAG = "FacebookSDK";
    private static final String SUPPORTS_ATTRIBUTION = "supports_attribution";
    private static final String SUPPORTS_IMPLICIT_SDK_LOGGING = "supports_implicit_sdk_logging";
    private static final String URL_SCHEME = "https";
    private static Map<String, Utility$FetchedAppSettings> fetchedAppSettings;
    
    static {
        APP_SETTING_FIELDS = new String[] { "supports_attribution", "supports_implicit_sdk_logging" };
        Utility.fetchedAppSettings = new ConcurrentHashMap<String, Utility$FetchedAppSettings>();
    }
    
    public static <T> boolean areObjectsEqual(final T t, final T obj) {
        if (t == null) {
            return obj == null;
        }
        return t.equals(obj);
    }
    
    public static <T> ArrayList<T> arrayList(final T... array) {
        final ArrayList<T> list = new ArrayList<T>(array.length);
        for (int length = array.length, i = 0; i < length; ++i) {
            list.add(array[i]);
        }
        return list;
    }
    
    public static <T> List<T> asListNoNulls(final T... array) {
        final ArrayList<T> list = new ArrayList<T>();
        for (final T e : array) {
            if (e != null) {
                list.add(e);
            }
        }
        return list;
    }
    
    public static Uri buildUri(final String s, final String s2, final Bundle bundle) {
        final Uri$Builder uri$Builder = new Uri$Builder();
        uri$Builder.scheme("https");
        uri$Builder.authority(s);
        uri$Builder.path(s2);
        for (final String s3 : bundle.keySet()) {
            final Object value = bundle.get(s3);
            if (value instanceof String) {
                uri$Builder.appendQueryParameter(s3, (String)value);
            }
        }
        return uri$Builder.build();
    }
    
    public static void clearCaches(final Context context) {
        ImageDownloader.clearCache(context);
    }
    
    private static void clearCookiesForDomain(final Context context, final String s) {
        CookieSyncManager.createInstance(context).sync();
        final CookieManager instance = CookieManager.getInstance();
        final String cookie = instance.getCookie(s);
        if (cookie == null) {
            return;
        }
        final String[] split = cookie.split(";");
        for (int length = split.length, i = 0; i < length; ++i) {
            final String[] split2 = split[i].split("=");
            if (split2.length > 0) {
                instance.setCookie(s, split2[0].trim() + "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;");
            }
        }
        instance.removeExpiredCookie();
    }
    
    public static void clearFacebookCookies(final Context context) {
        clearCookiesForDomain(context, "facebook.com");
        clearCookiesForDomain(context, ".facebook.com");
        clearCookiesForDomain(context, "https://facebook.com");
        clearCookiesForDomain(context, "https://.facebook.com");
    }
    
    public static void closeQuietly(final Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        }
        catch (IOException ex) {}
    }
    
    static Map<String, Object> convertJSONObjectToHashMap(final JSONObject jsonObject) {
        final HashMap<String, JSONObject> hashMap = (HashMap<String, JSONObject>)new HashMap<String, Object>();
        final JSONArray names = jsonObject.names();
        int n = 0;
    Label_0065_Outer:
        while (true) {
            if (n >= names.length()) {
                return (Map<String, Object>)hashMap;
            }
            while (true) {
                try {
                    final String string = names.getString(n);
                    Object value = jsonObject.get(string);
                    if (value instanceof JSONObject) {
                        value = convertJSONObjectToHashMap((JSONObject)value);
                    }
                    hashMap.put(string, (JSONObject)value);
                    ++n;
                    continue Label_0065_Outer;
                }
                catch (JSONException ex) {
                    continue;
                }
                break;
            }
        }
    }
    
    public static void deleteDirectory(final File file) {
        if (!file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            final File[] listFiles = file.listFiles();
            for (int length = listFiles.length, i = 0; i < length; ++i) {
                deleteDirectory(listFiles[i]);
            }
        }
        file.delete();
    }
    
    public static void disconnectQuietly(final URLConnection urlConnection) {
        if (urlConnection instanceof HttpURLConnection) {
            ((HttpURLConnection)urlConnection).disconnect();
        }
    }
    
    public static String getHashedDeviceAndAppID(final Context context, final String str) {
        final String string = Settings$Secure.getString(context.getContentResolver(), "android_id");
        if (string == null) {
            return null;
        }
        return sha1hash(string + str);
    }
    
    public static String getMetadataApplicationId(final Context context) {
        Validate.notNull(context, "context");
        try {
            final ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                return applicationInfo.metaData.getString("com.facebook.sdk.ApplicationId");
            }
        }
        catch (PackageManager$NameNotFoundException ex) {}
        return null;
    }
    
    public static Object getStringPropertyAsJSON(final JSONObject jsonObject, final String s, final String s2) {
        final Object opt = jsonObject.opt(s);
        Object nextValue;
        if (opt != null && opt instanceof String) {
            nextValue = new JSONTokener((String)opt).nextValue();
        }
        else {
            nextValue = opt;
        }
        if (nextValue != null && !(nextValue instanceof JSONObject) && !(nextValue instanceof JSONArray)) {
            if (s2 == null) {
                throw new FacebookException("Got an unexpected non-JSON object.");
            }
            final JSONObject jsonObject2 = new JSONObject();
            jsonObject2.putOpt(s2, nextValue);
            nextValue = jsonObject2;
        }
        return nextValue;
    }
    
    private static String hashWithAlgorithm(final String algorithm, final String s) {
        StringBuilder sb;
        try {
            final MessageDigest instance = MessageDigest.getInstance(algorithm);
            instance.update(s.getBytes());
            final byte[] digest = instance.digest();
            sb = new StringBuilder();
            for (final byte b : digest) {
                sb.append(Integer.toHexString(0xF & b >> 4));
                sb.append(Integer.toHexString(0xF & b >> 0));
            }
        }
        catch (NoSuchAlgorithmException ex) {
            return null;
        }
        return sb.toString();
    }
    
    public static boolean isNullOrEmpty(final String s) {
        return s == null || s.length() == 0;
    }
    
    public static <T> boolean isNullOrEmpty(final Collection<T> collection) {
        return collection == null || collection.size() == 0;
    }
    
    public static <T> boolean isSubset(final Collection<T> collection, final Collection<T> c) {
        if (c == null || c.size() == 0) {
            return collection == null || collection.size() == 0;
        }
        final HashSet set = new HashSet((Collection<? extends E>)c);
        final Iterator<T> iterator = collection.iterator();
        while (iterator.hasNext()) {
            if (!set.contains(iterator.next())) {
                return false;
            }
        }
        return true;
    }
    
    public static void logd(final String s, final Exception ex) {
    }
    
    public static void logd(final String s, final String s2) {
    }
    
    static String md5hash(final String s) {
        return hashWithAlgorithm("MD5", s);
    }
    
    public static void putObjectInBundle(final Bundle bundle, final String s, final Object o) {
        if (o instanceof String) {
            bundle.putString(s, (String)o);
            return;
        }
        if (o instanceof Parcelable) {
            bundle.putParcelable(s, (Parcelable)o);
            return;
        }
        if (o instanceof byte[]) {
            bundle.putByteArray(s, (byte[])o);
            return;
        }
        throw new FacebookException("attempted to add unsupported type to Bundle");
    }
    
    public static Utility$FetchedAppSettings queryAppSettings(final String s, final boolean b) {
        if (!b && Utility.fetchedAppSettings.containsKey(s)) {
            return Utility.fetchedAppSettings.get(s);
        }
        final Bundle parameters = new Bundle();
        parameters.putString("fields", TextUtils.join((CharSequence)",", (Object[])Utility.APP_SETTING_FIELDS));
        final Request graphPathRequest = Request.newGraphPathRequest(null, s, null);
        graphPathRequest.setParameters(parameters);
        final GraphObject graphObject = graphPathRequest.executeAndWait().getGraphObject();
        final Utility$FetchedAppSettings utility$FetchedAppSettings = new Utility$FetchedAppSettings(safeGetBooleanFromResponse(graphObject, "supports_attribution"), safeGetBooleanFromResponse(graphObject, "supports_implicit_sdk_logging"), null);
        Utility.fetchedAppSettings.put(s, utility$FetchedAppSettings);
        return utility$FetchedAppSettings;
    }
    
    public static String readStreamToString(final InputStream p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/BufferedInputStream;
        //     3: dup            
        //     4: aload_0        
        //     5: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
        //     8: astore_1       
        //     9: new             Ljava/io/InputStreamReader;
        //    12: dup            
        //    13: aload_1        
        //    14: invokespecial   java/io/InputStreamReader.<init>:(Ljava/io/InputStream;)V
        //    17: astore_2       
        //    18: new             Ljava/lang/StringBuilder;
        //    21: dup            
        //    22: invokespecial   java/lang/StringBuilder.<init>:()V
        //    25: astore_3       
        //    26: sipush          2048
        //    29: newarray        C
        //    31: astore          7
        //    33: aload_2        
        //    34: aload           7
        //    36: invokevirtual   java/io/InputStreamReader.read:([C)I
        //    39: istore          8
        //    41: iload           8
        //    43: iconst_m1      
        //    44: if_icmpeq       81
        //    47: aload_3        
        //    48: aload           7
        //    50: iconst_0       
        //    51: iload           8
        //    53: invokevirtual   java/lang/StringBuilder.append:([CII)Ljava/lang/StringBuilder;
        //    56: pop            
        //    57: goto            33
        //    60: astore          4
        //    62: aload_1        
        //    63: astore          5
        //    65: aload           4
        //    67: astore          6
        //    69: aload           5
        //    71: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    74: aload_2        
        //    75: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    78: aload           6
        //    80: athrow         
        //    81: aload_3        
        //    82: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    85: astore          10
        //    87: aload_1        
        //    88: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    91: aload_2        
        //    92: invokestatic    com/facebook/internal/Utility.closeQuietly:(Ljava/io/Closeable;)V
        //    95: aload           10
        //    97: areturn        
        //    98: astore          6
        //   100: aconst_null    
        //   101: astore_2       
        //   102: aconst_null    
        //   103: astore          5
        //   105: goto            69
        //   108: astore          11
        //   110: aload_1        
        //   111: astore          5
        //   113: aload           11
        //   115: astore          6
        //   117: aconst_null    
        //   118: astore_2       
        //   119: goto            69
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  0      9      98     108    Any
        //  9      18     108    122    Any
        //  18     33     60     69     Any
        //  33     41     60     69     Any
        //  47     57     60     69     Any
        //  81     87     60     69     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0033:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private static boolean safeGetBooleanFromResponse(final GraphObject graphObject, final String s) {
        Object o = false;
        if (graphObject != null) {
            o = graphObject.getProperty(s);
        }
        Object value;
        if (!(o instanceof Boolean)) {
            value = false;
        }
        else {
            value = o;
        }
        return (boolean)value;
    }
    
    public static void setAppEventAttributionParameters(final GraphObject graphObject, final String s, final String s2, final boolean b) {
        if (s != null) {
            graphObject.setProperty("attribution", s);
        }
        else if (s2 != null) {
            graphObject.setProperty("advertiser_id", s2);
        }
        graphObject.setProperty("application_tracking_enabled", !b);
    }
    
    private static String sha1hash(final String s) {
        return hashWithAlgorithm("SHA-1", s);
    }
    
    public static boolean stringsEqualOrEmpty(final String s, final String anObject) {
        final boolean empty = TextUtils.isEmpty((CharSequence)s);
        final boolean empty2 = TextUtils.isEmpty((CharSequence)anObject);
        return (empty && empty2) || (!empty && !empty2 && s.equals(anObject));
    }
    
    public static <T> Collection<T> unmodifiableCollection(final T... a) {
        return Collections.unmodifiableCollection((Collection<? extends T>)Arrays.asList(a));
    }
}
