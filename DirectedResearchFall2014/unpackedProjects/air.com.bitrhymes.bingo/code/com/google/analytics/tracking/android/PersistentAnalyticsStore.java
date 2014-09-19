package com.google.analytics.tracking.android;

import com.google.android.gms.common.util.*;
import org.apache.http.client.*;
import org.apache.http.impl.client.*;
import com.google.android.gms.analytics.internal.*;
import android.text.*;
import android.content.*;
import android.database.*;
import android.database.sqlite.*;
import java.util.*;
import android.os.*;

class PersistentAnalyticsStore implements AnalyticsStore
{
    @VisibleForTesting
    static final String BACKEND_LIBRARY_VERSION = "";
    private static final String CREATE_HITS_TABLE;
    private static final String DATABASE_FILENAME = "google_analytics_v2.db";
    @VisibleForTesting
    static final String HITS_TABLE = "hits2";
    @VisibleForTesting
    static final String HIT_APP_ID = "hit_app_id";
    @VisibleForTesting
    static final String HIT_ID = "hit_id";
    @VisibleForTesting
    static final String HIT_STRING = "hit_string";
    @VisibleForTesting
    static final String HIT_TIME = "hit_time";
    @VisibleForTesting
    static final String HIT_URL = "hit_url";
    private Clock mClock;
    private final Context mContext;
    private final String mDatabaseName;
    private final AnalyticsDatabaseHelper mDbHelper;
    private volatile Dispatcher mDispatcher;
    private long mLastDeleteStaleHitsTime;
    private final AnalyticsStoreStateListener mListener;
    
    static {
        CREATE_HITS_TABLE = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    }
    
    PersistentAnalyticsStore(final AnalyticsStoreStateListener analyticsStoreStateListener, final Context context) {
        this(analyticsStoreStateListener, context, "google_analytics_v2.db");
    }
    
    PersistentAnalyticsStore(final AnalyticsStoreStateListener mListener, final Context context, final String mDatabaseName) {
        super();
        this.mContext = context.getApplicationContext();
        this.mDatabaseName = mDatabaseName;
        this.mListener = mListener;
        this.mClock = new Clock() {
            @Override
            public long currentTimeMillis() {
                return System.currentTimeMillis();
            }
        };
        this.mDbHelper = new AnalyticsDatabaseHelper(this.mContext, this.mDatabaseName);
        this.mDispatcher = new SimpleNetworkDispatcher(this, this.createDefaultHttpClientFactory(), this.mContext);
        this.mLastDeleteStaleHitsTime = 0L;
    }
    
    private HttpClientFactory createDefaultHttpClientFactory() {
        return new HttpClientFactory() {
            @Override
            public HttpClient newInstance() {
                return (HttpClient)new DefaultHttpClient();
            }
        };
    }
    
    private void fillVersionParametersIfNecessary(final Map<String, String> map, final Collection<Command> collection) {
        for (final Command command : collection) {
            if (command.getId().equals("appendVersion")) {
                this.storeVersion(map, command.getUrlParam(), command.getValue());
                break;
            }
        }
    }
    
    public static String generateHitString(final Map<String, String> map) {
        final ArrayList<String> list = new ArrayList<String>(map.size());
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            list.add(entry.getKey() + "=" + HitBuilder.encode(entry.getValue()));
        }
        return TextUtils.join((CharSequence)"&", (Iterable)list);
    }
    
    private SQLiteDatabase getWritableDatabase(final String s) {
        try {
            return this.mDbHelper.getWritableDatabase();
        }
        catch (SQLiteException ex) {
            Log.w(s);
            return null;
        }
    }
    
    private void removeOldHitIfFull() {
        final int n = 1 + (this.getNumStoredHits() - 2000);
        if (n > 0) {
            final List<Hit> peekHits = this.peekHits(n);
            Log.wDebug("Store full, deleting " + peekHits.size() + " hits to make room");
            this.deleteHits(peekHits);
        }
    }
    
    private void storeVersion(final Map<String, String> map, final String s, final String str) {
        String string;
        if (str == null) {
            string = "";
        }
        else {
            string = str + "";
        }
        if (s != null) {
            map.put(s, string);
        }
    }
    
    private void writeHitToDatabase(final Map<String, String> map, final long l, String s) {
        final SQLiteDatabase writableDatabase = this.getWritableDatabase("Error opening database for putHit");
        if (writableDatabase == null) {
            return;
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put("hit_string", generateHitString(map));
        contentValues.put("hit_time", l);
        long long1 = 0L;
        while (true) {
            if (!map.containsKey("AppUID")) {
                break Label_0082;
            }
            try {
                long1 = Long.parseLong(map.get("AppUID"));
                contentValues.put("hit_app_id", long1);
                if (s == null) {
                    s = "http://www.google-analytics.com/collect";
                }
                if (s.length() == 0) {
                    Log.w("empty path: not sending hit");
                    return;
                }
                contentValues.put("hit_url", s);
                try {
                    writableDatabase.insert("hits2", (String)null, contentValues);
                    this.mListener.reportStoreIsEmpty(false);
                }
                catch (SQLiteException ex) {
                    Log.w("Error storing hit");
                }
            }
            catch (NumberFormatException ex2) {
                continue;
            }
            break;
        }
    }
    
    @Override
    public void clearHits(final long l) {
        final SQLiteDatabase writableDatabase = this.getWritableDatabase("Error opening database for clearHits");
        if (writableDatabase != null) {
            if (l == 0L) {
                writableDatabase.delete("hits2", (String)null, (String[])null);
            }
            else {
                writableDatabase.delete("hits2", "hit_app_id = ?", new String[] { Long.valueOf(l).toString() });
            }
            this.mListener.reportStoreIsEmpty(this.getNumStoredHits() == 0);
        }
    }
    
    @Override
    public void close() {
        try {
            this.mDbHelper.getWritableDatabase().close();
        }
        catch (SQLiteException ex) {
            Log.w("Error opening database for close");
        }
    }
    
    public void deleteHits(final Collection<Hit> obj) {
        if (obj == null) {
            throw new NullPointerException("hits cannot be null");
        }
        if (!obj.isEmpty()) {
            final SQLiteDatabase writableDatabase = this.getWritableDatabase("Error opening database for deleteHit");
            if (writableDatabase != null) {
                final String[] array = new String[obj.size()];
                final String format = String.format("HIT_ID in (%s)", TextUtils.join((CharSequence)",", (Iterable)Collections.nCopies(array.length, "?")));
                int n = 0;
                for (final Hit hit : obj) {
                    final int n2 = n + 1;
                    array[n] = Long.toString(hit.getHitId());
                    n = n2;
                }
                while (true) {
                    while (true) {
                        try {
                            writableDatabase.delete("hits2", format, array);
                            final AnalyticsStoreStateListener mListener = this.mListener;
                            if (this.getNumStoredHits() == 0) {
                                final boolean b = true;
                                mListener.reportStoreIsEmpty(b);
                                return;
                            }
                        }
                        catch (SQLiteException ex) {
                            Log.w("Error deleting hit " + obj);
                            return;
                        }
                        final boolean b = false;
                        continue;
                    }
                }
            }
        }
    }
    
    int deleteStaleHits() {
        final long currentTimeMillis = this.mClock.currentTimeMillis();
        if (currentTimeMillis <= 86400000L + this.mLastDeleteStaleHitsTime) {
            return 0;
        }
        this.mLastDeleteStaleHitsTime = currentTimeMillis;
        final SQLiteDatabase writableDatabase = this.getWritableDatabase("Error opening database for deleteStaleHits");
        if (writableDatabase == null) {
            return 0;
        }
        final int delete = writableDatabase.delete("hits2", "HIT_TIME < ?", new String[] { Long.toString(this.mClock.currentTimeMillis() - 2592000000L) });
        this.mListener.reportStoreIsEmpty(this.getNumStoredHits() == 0);
        return delete;
    }
    
    @Override
    public void dispatch() {
        Log.vDebug("dispatch running...");
        if (this.mDispatcher.okToDispatch()) {
            final List<Hit> peekHits = this.peekHits(40);
            if (peekHits.isEmpty()) {
                Log.vDebug("...nothing to dispatch");
                this.mListener.reportStoreIsEmpty(true);
                return;
            }
            final int dispatchHits = this.mDispatcher.dispatchHits(peekHits);
            Log.vDebug("sent " + dispatchHits + " of " + peekHits.size() + " hits");
            this.deleteHits(peekHits.subList(0, Math.min(dispatchHits, peekHits.size())));
            if (dispatchHits == peekHits.size() && this.getNumStoredHits() > 0) {
                GAServiceManager.getInstance().dispatch();
            }
        }
    }
    
    @VisibleForTesting
    public AnalyticsDatabaseHelper getDbHelper() {
        return this.mDbHelper;
    }
    
    @VisibleForTesting
    AnalyticsDatabaseHelper getHelper() {
        return this.mDbHelper;
    }
    
    int getNumStoredHits() {
        final SQLiteDatabase writableDatabase = this.getWritableDatabase("Error opening database for requestNumHitsPending");
        if (writableDatabase == null) {
            return 0;
        }
        Cursor rawQuery = null;
        try {
            rawQuery = writableDatabase.rawQuery("SELECT COUNT(*) from hits2", (String[])null);
            final boolean moveToFirst = rawQuery.moveToFirst();
            int n = 0;
            if (moveToFirst) {
                n = (int)rawQuery.getLong(0);
            }
            return n;
        }
        catch (SQLiteException ex) {
            Log.w("Error getting numStoredHits");
            int n = 0;
            if (rawQuery != null) {
                rawQuery.close();
                n = 0;
                return n;
            }
            return n;
        }
        finally {
            if (rawQuery != null) {
                rawQuery.close();
            }
        }
    }
    
    public List<Hit> peekHits(final int p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ldc_w           "Error opening database for peekHits"
        //     4: invokespecial   com/google/analytics/tracking/android/PersistentAnalyticsStore.getWritableDatabase:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
        //     7: astore_2       
        //     8: aload_2        
        //     9: ifnonnull       22
        //    12: new             Ljava/util/ArrayList;
        //    15: dup            
        //    16: invokespecial   java/util/ArrayList.<init>:()V
        //    19: astore_3       
        //    20: aload_3        
        //    21: areturn        
        //    22: aconst_null    
        //    23: astore          4
        //    25: new             Ljava/util/ArrayList;
        //    28: dup            
        //    29: invokespecial   java/util/ArrayList.<init>:()V
        //    32: pop            
        //    33: aload_2        
        //    34: ldc             "hits2"
        //    36: iconst_3       
        //    37: anewarray       Ljava/lang/String;
        //    40: dup            
        //    41: iconst_0       
        //    42: ldc             "hit_id"
        //    44: aastore        
        //    45: dup            
        //    46: iconst_1       
        //    47: ldc             "hit_time"
        //    49: aastore        
        //    50: dup            
        //    51: iconst_2       
        //    52: ldc             "hit_url"
        //    54: aastore        
        //    55: aconst_null    
        //    56: aconst_null    
        //    57: aconst_null    
        //    58: aconst_null    
        //    59: ldc_w           "%s ASC, %s ASC"
        //    62: iconst_2       
        //    63: anewarray       Ljava/lang/Object;
        //    66: dup            
        //    67: iconst_0       
        //    68: ldc             "hit_url"
        //    70: aastore        
        //    71: dup            
        //    72: iconst_1       
        //    73: ldc             "hit_id"
        //    75: aastore        
        //    76: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    79: iload_1        
        //    80: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //    83: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    86: astore          4
        //    88: new             Ljava/util/ArrayList;
        //    91: dup            
        //    92: invokespecial   java/util/ArrayList.<init>:()V
        //    95: astore          10
        //    97: aload           4
        //    99: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   104: ifeq            170
        //   107: new             Lcom/google/analytics/tracking/android/Hit;
        //   110: dup            
        //   111: aconst_null    
        //   112: aload           4
        //   114: iconst_0       
        //   115: invokeinterface android/database/Cursor.getLong:(I)J
        //   120: aload           4
        //   122: iconst_1       
        //   123: invokeinterface android/database/Cursor.getLong:(I)J
        //   128: invokespecial   com/google/analytics/tracking/android/Hit.<init>:(Ljava/lang/String;JJ)V
        //   131: astore          12
        //   133: aload           12
        //   135: aload           4
        //   137: iconst_2       
        //   138: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   143: invokevirtual   com/google/analytics/tracking/android/Hit.setHitUrl:(Ljava/lang/String;)V
        //   146: aload           10
        //   148: aload           12
        //   150: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   155: pop            
        //   156: aload           4
        //   158: invokeinterface android/database/Cursor.moveToNext:()Z
        //   163: istore          14
        //   165: iload           14
        //   167: ifne            107
        //   170: aload           4
        //   172: ifnull          182
        //   175: aload           4
        //   177: invokeinterface android/database/Cursor.close:()V
        //   182: aload_2        
        //   183: ldc             "hits2"
        //   185: iconst_2       
        //   186: anewarray       Ljava/lang/String;
        //   189: dup            
        //   190: iconst_0       
        //   191: ldc             "hit_id"
        //   193: aastore        
        //   194: dup            
        //   195: iconst_1       
        //   196: ldc             "hit_string"
        //   198: aastore        
        //   199: aconst_null    
        //   200: aconst_null    
        //   201: aconst_null    
        //   202: aconst_null    
        //   203: ldc_w           "%s ASC"
        //   206: iconst_1       
        //   207: anewarray       Ljava/lang/Object;
        //   210: dup            
        //   211: iconst_0       
        //   212: ldc             "hit_id"
        //   214: aastore        
        //   215: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   218: iload_1        
        //   219: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //   222: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   225: astore          4
        //   227: aload           4
        //   229: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   234: istore          24
        //   236: iconst_0       
        //   237: istore          25
        //   239: iload           24
        //   241: ifeq            306
        //   244: aload           4
        //   246: instanceof      Landroid/database/sqlite/SQLiteCursor;
        //   249: ifeq            549
        //   252: aload           4
        //   254: checkcast       Landroid/database/sqlite/SQLiteCursor;
        //   257: invokevirtual   android/database/sqlite/SQLiteCursor.getWindow:()Landroid/database/CursorWindow;
        //   260: invokevirtual   android/database/CursorWindow.getNumRows:()I
        //   263: ifle            394
        //   266: aload           10
        //   268: iload           25
        //   270: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   275: checkcast       Lcom/google/analytics/tracking/android/Hit;
        //   278: aload           4
        //   280: iconst_1       
        //   281: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   286: invokevirtual   com/google/analytics/tracking/android/Hit.setHitString:(Ljava/lang/String;)V
        //   289: iinc            25, 1
        //   292: aload           4
        //   294: invokeinterface android/database/Cursor.moveToNext:()Z
        //   299: istore          26
        //   301: iload           26
        //   303: ifne            244
        //   306: aload           4
        //   308: ifnull          318
        //   311: aload           4
        //   313: invokeinterface android/database/Cursor.close:()V
        //   318: aload           10
        //   320: areturn        
        //   321: astore          7
        //   323: aload           7
        //   325: astore          8
        //   327: new             Ljava/lang/StringBuilder;
        //   330: dup            
        //   331: invokespecial   java/lang/StringBuilder.<init>:()V
        //   334: ldc_w           "error in peekHits fetching hitIds: "
        //   337: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   340: aload           8
        //   342: invokevirtual   android/database/sqlite/SQLiteException.getMessage:()Ljava/lang/String;
        //   345: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   348: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   351: invokestatic    com/google/analytics/tracking/android/Log.w:(Ljava/lang/String;)I
        //   354: pop            
        //   355: new             Ljava/util/ArrayList;
        //   358: dup            
        //   359: invokespecial   java/util/ArrayList.<init>:()V
        //   362: astore_3       
        //   363: aload           4
        //   365: ifnull          20
        //   368: aload           4
        //   370: invokeinterface android/database/Cursor.close:()V
        //   375: aload_3        
        //   376: areturn        
        //   377: astore          6
        //   379: aload           4
        //   381: ifnull          391
        //   384: aload           4
        //   386: invokeinterface android/database/Cursor.close:()V
        //   391: aload           6
        //   393: athrow         
        //   394: new             Ljava/lang/StringBuilder;
        //   397: dup            
        //   398: invokespecial   java/lang/StringBuilder.<init>:()V
        //   401: ldc_w           "hitString for hitId "
        //   404: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   407: aload           10
        //   409: iload           25
        //   411: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   416: checkcast       Lcom/google/analytics/tracking/android/Hit;
        //   419: invokevirtual   com/google/analytics/tracking/android/Hit.getHitId:()J
        //   422: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   425: ldc_w           " too large.  Hit will be deleted."
        //   428: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   431: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   434: invokestatic    com/google/analytics/tracking/android/Log.w:(Ljava/lang/String;)I
        //   437: pop            
        //   438: goto            289
        //   441: astore          16
        //   443: new             Ljava/lang/StringBuilder;
        //   446: dup            
        //   447: invokespecial   java/lang/StringBuilder.<init>:()V
        //   450: ldc_w           "error in peekHits fetching hitString: "
        //   453: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   456: aload           16
        //   458: invokevirtual   android/database/sqlite/SQLiteException.getMessage:()Ljava/lang/String;
        //   461: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   464: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   467: invokestatic    com/google/analytics/tracking/android/Log.w:(Ljava/lang/String;)I
        //   470: pop            
        //   471: new             Ljava/util/ArrayList;
        //   474: dup            
        //   475: invokespecial   java/util/ArrayList.<init>:()V
        //   478: astore          18
        //   480: iconst_0       
        //   481: istore          19
        //   483: aload           10
        //   485: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //   490: astore          20
        //   492: aload           20
        //   494: invokeinterface java/util/Iterator.hasNext:()Z
        //   499: ifeq            534
        //   502: aload           20
        //   504: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   509: checkcast       Lcom/google/analytics/tracking/android/Hit;
        //   512: astore          21
        //   514: aload           21
        //   516: invokevirtual   com/google/analytics/tracking/android/Hit.getHitParams:()Ljava/lang/String;
        //   519: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   522: istore          22
        //   524: iload           22
        //   526: ifeq            595
        //   529: iload           19
        //   531: ifeq            592
        //   534: aload           4
        //   536: ifnull          546
        //   539: aload           4
        //   541: invokeinterface android/database/Cursor.close:()V
        //   546: aload           18
        //   548: areturn        
        //   549: aload           10
        //   551: iload           25
        //   553: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   558: checkcast       Lcom/google/analytics/tracking/android/Hit;
        //   561: aload           4
        //   563: iconst_1       
        //   564: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   569: invokevirtual   com/google/analytics/tracking/android/Hit.setHitString:(Ljava/lang/String;)V
        //   572: goto            289
        //   575: astore          15
        //   577: aload           4
        //   579: ifnull          589
        //   582: aload           4
        //   584: invokeinterface android/database/Cursor.close:()V
        //   589: aload           15
        //   591: athrow         
        //   592: iconst_1       
        //   593: istore          19
        //   595: aload           18
        //   597: aload           21
        //   599: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   604: pop            
        //   605: goto            492
        //   608: astore          6
        //   610: goto            379
        //   613: astore          11
        //   615: aload           11
        //   617: astore          8
        //   619: goto            327
        //    Signature:
        //  (I)Ljava/util/List<Lcom/google/analytics/tracking/android/Hit;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  33     97     321    327    Landroid/database/sqlite/SQLiteException;
        //  33     97     377    379    Any
        //  97     107    613    622    Landroid/database/sqlite/SQLiteException;
        //  97     107    608    613    Any
        //  107    165    613    622    Landroid/database/sqlite/SQLiteException;
        //  107    165    608    613    Any
        //  182    236    441    608    Landroid/database/sqlite/SQLiteException;
        //  182    236    575    592    Any
        //  244    289    441    608    Landroid/database/sqlite/SQLiteException;
        //  244    289    575    592    Any
        //  292    301    441    608    Landroid/database/sqlite/SQLiteException;
        //  292    301    575    592    Any
        //  327    363    377    379    Any
        //  394    438    441    608    Landroid/database/sqlite/SQLiteException;
        //  394    438    575    592    Any
        //  443    480    575    592    Any
        //  483    492    575    592    Any
        //  492    524    575    592    Any
        //  549    572    441    608    Landroid/database/sqlite/SQLiteException;
        //  549    572    575    592    Any
        //  595    605    575    592    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0107:
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
    
    @Override
    public void putHit(final Map<String, String> map, final long n, final String s, final Collection<Command> collection) {
        this.deleteStaleHits();
        this.fillVersionParametersIfNecessary(map, collection);
        this.removeOldHitIfFull();
        this.writeHitToDatabase(map, n, s);
    }
    
    @VisibleForTesting
    public void setClock(final Clock mClock) {
        this.mClock = mClock;
    }
    
    @Override
    public void setDispatch(final boolean b) {
        Dispatcher mDispatcher;
        if (b) {
            mDispatcher = new SimpleNetworkDispatcher(this, this.createDefaultHttpClientFactory(), this.mContext);
        }
        else {
            mDispatcher = new NoopDispatcher();
        }
        this.mDispatcher = mDispatcher;
    }
    
    @VisibleForTesting
    void setDispatcher(final Dispatcher mDispatcher) {
        this.mDispatcher = mDispatcher;
    }
    
    @VisibleForTesting
    void setLastDeleteStaleHitsTime(final long mLastDeleteStaleHitsTime) {
        this.mLastDeleteStaleHitsTime = mLastDeleteStaleHitsTime;
    }
    
    @VisibleForTesting
    class AnalyticsDatabaseHelper extends SQLiteOpenHelper
    {
        private boolean mBadDatabase;
        private long mLastDatabaseCheckTime;
        
        AnalyticsDatabaseHelper(final Context context, final String s) {
            super(context, s, (SQLiteDatabase$CursorFactory)null, 1);
            this.mLastDatabaseCheckTime = 0L;
        }
        
        private boolean tablePresent(final String str, final SQLiteDatabase sqLiteDatabase) {
            Cursor query = null;
            try {
                query = sqLiteDatabase.query("SQLITE_MASTER", new String[] { "name" }, "name=?", new String[] { str }, (String)null, (String)null, (String)null);
                return query.moveToFirst();
            }
            catch (SQLiteException ex) {
                Log.w("error querying for table " + str);
                return false;
            }
            finally {
                if (query != null) {
                    query.close();
                }
            }
        }
        
        private void validateColumnsPresent(final SQLiteDatabase sqLiteDatabase) {
            final Cursor rawQuery = sqLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", (String[])null);
            final HashSet<String> set = new HashSet<String>();
            try {
                final String[] columnNames = rawQuery.getColumnNames();
                for (int i = 0; i < columnNames.length; ++i) {
                    set.add(columnNames[i]);
                }
                rawQuery.close();
                if (!set.remove("hit_id") || !set.remove("hit_url") || !set.remove("hit_string") || !set.remove("hit_time")) {
                    throw new SQLiteException("Database column missing");
                }
            }
            finally {
                rawQuery.close();
            }
            final boolean b = !set.remove("hit_app_id");
            if (!set.isEmpty()) {
                throw new SQLiteException("Database has extra columns");
            }
            if (b) {
                sqLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
            }
        }
        
        public SQLiteDatabase getWritableDatabase() {
            if (this.mBadDatabase && 3600000L + this.mLastDatabaseCheckTime > PersistentAnalyticsStore.this.mClock.currentTimeMillis()) {
                throw new SQLiteException("Database creation failed");
            }
            this.mBadDatabase = true;
            this.mLastDatabaseCheckTime = PersistentAnalyticsStore.this.mClock.currentTimeMillis();
            while (true) {
                try {
                    SQLiteDatabase sqLiteDatabase = super.getWritableDatabase();
                    if (sqLiteDatabase == null) {
                        sqLiteDatabase = super.getWritableDatabase();
                    }
                    this.mBadDatabase = false;
                    return sqLiteDatabase;
                }
                catch (SQLiteException ex) {
                    PersistentAnalyticsStore.this.mContext.getDatabasePath(PersistentAnalyticsStore.this.mDatabaseName).delete();
                    final SQLiteDatabase sqLiteDatabase = null;
                    continue;
                }
                break;
            }
        }
        
        boolean isBadDatabase() {
            return this.mBadDatabase;
        }
        
        public void onCreate(final SQLiteDatabase sqLiteDatabase) {
            FutureApis.setOwnerOnlyReadWrite(sqLiteDatabase.getPath());
        }
        
        public void onOpen(final SQLiteDatabase sqLiteDatabase) {
            while (true) {
                if (Build$VERSION.SDK_INT < 15) {
                    final Cursor rawQuery = sqLiteDatabase.rawQuery("PRAGMA journal_mode=memory", (String[])null);
                    try {
                        rawQuery.moveToFirst();
                        rawQuery.close();
                        if (!this.tablePresent("hits2", sqLiteDatabase)) {
                            sqLiteDatabase.execSQL(PersistentAnalyticsStore.CREATE_HITS_TABLE);
                            return;
                        }
                    }
                    finally {
                        rawQuery.close();
                    }
                    this.validateColumnsPresent(sqLiteDatabase);
                    return;
                }
                continue;
            }
        }
        
        public void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
        }
        
        void setBadDatabase(final boolean mBadDatabase) {
            this.mBadDatabase = mBadDatabase;
        }
    }
}
