.class public Lcom/facebook/orca/prefs/OrcaSharedPreferences;
.super Ljava/lang/Object;
.source "OrcaSharedPreferences.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/database/sqlite/SQLiteDatabase;

.field private final c:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "databaseLock"
    .end annotation
.end field

.field private final h:Landroid/content/SharedPreferences;

.field private final i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->j:Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->b:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->j:Lcom/facebook/orca/prefs/PrefKey;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->x:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->k:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/prefs/PrefsDbOpenHelper;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Lcom/facebook/orca/annotations/FromApplication;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f:Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a:Landroid/content/Context;

    .line 68
    invoke-virtual {p2}, Lcom/facebook/orca/prefs/PrefsDbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 69
    invoke-static {}, Lcom/google/common/collect/Maps;->d()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    .line 70
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    .line 74
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d()V

    .line 75
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e()V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f()V

    .line 80
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Landroid/content/SharedPreferences;

    .line 81
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$1;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    iput-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 87
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->i:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 256
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 257
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {v1, p1}, Lcom/facebook/orca/prefs/PrefKey;->a(Lcom/facebook/orca/common/util/TypedKey;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 261
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 407
    monitor-enter p0

    .line 408
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g:Z

    if-eqz v0, :cond_0

    .line 410
    monitor-exit p0

    .line 425
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v0, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v0, p1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 416
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 417
    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/Object;)V

    .line 422
    :goto_1
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 423
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    goto :goto_0

    .line 420
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;)V

    goto :goto_1

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/orca/prefs/PrefKey;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    monitor-enter p0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Sets;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    .line 285
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 286
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/prefs/PrefKey;

    .line 287
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 288
    sget-object v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->j:Ljava/lang/Object;

    if-ne v1, v5, :cond_0

    .line 289
    iget-object v5, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v5, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :goto_1
    iget-object v5, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/Map;

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g()V

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 291
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v5, v2, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 298
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/prefs/PrefKey;

    move-object v2, v0

    .line 302
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;

    .line 303
    if-eqz v1, :cond_3

    .line 304
    invoke-interface {v1, p0, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;->a(Lcom/facebook/orca/prefs/OrcaSharedPreferences;Lcom/facebook/orca/prefs/PrefKey;)V

    goto :goto_2

    .line 308
    :cond_4
    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->j:Ljava/lang/Object;

    return-object v0
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x2

    .line 94
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v2, v4

    const-string v0, "type"

    aput-object v0, v2, v5

    const-string v0, "value"

    aput-object v0, v2, v1

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 101
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 104
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 110
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 114
    :pswitch_2
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    :pswitch_4
    iget-object v2, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    new-instance v3, Lcom/facebook/orca/prefs/PrefKey;

    invoke-direct {v3, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 127
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 129
    return-void

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private e()V
    .locals 5

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v2

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    new-instance v4, Lcom/facebook/orca/prefs/PrefKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1}, Lcom/facebook/orca/prefs/PrefKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 142
    invoke-direct {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h()V

    .line 143
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 149
    sget-object v0, Lcom/facebook/orca/prefs/PrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p0, v0, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;J)J

    move-result-wide v0

    .line 150
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->i:Lcom/facebook/orca/prefs/PrefKey;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;J)V

    .line 153
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 155
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 311
    new-instance v0, Lcom/facebook/orca/common/async/AsyncTaskRunner;

    new-instance v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;

    invoke-direct {v1, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$2;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    invoke-direct {v0, v1}, Lcom/facebook/orca/common/async/AsyncTaskRunner;-><init>(Ljava/lang/Runnable;)V

    .line 317
    invoke-virtual {v0}, Lcom/facebook/orca/common/async/AsyncTaskRunner;->a()V

    .line 318
    return-void
.end method

.method private h()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    monitor-exit p0

    .line 399
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v2

    .line 327
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 328
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 330
    iget-object v3, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->f:Ljava/lang/Object;

    monitor-enter v3

    .line 331
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 334
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 336
    :try_start_3
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 337
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 338
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 339
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 340
    sget-object v6, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->j:Ljava/lang/Object;

    if-ne v0, v6, :cond_1

    .line 341
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "preferences"

    const-string v7, "key = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-virtual {v0, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 365
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 396
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g:Z

    throw v0

    .line 398
    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 328
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 343
    :cond_1
    :try_start_7
    const-string v6, "key"

    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 345
    const-string v1, "type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v1, "value"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "preferences"

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 347
    :cond_3
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 348
    const-string v1, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    const-string v1, "value"

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v11

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_4
    move v0, v10

    goto :goto_3

    .line 350
    :cond_5
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 351
    const-string v1, "type"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string v1, "value"

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 353
    :cond_6
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 354
    const-string v1, "type"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    const-string v1, "value"

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 356
    :cond_7
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 357
    const-string v1, "type"

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v1, "value"

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_2

    .line 363
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 365
    :try_start_8
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 369
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_10

    .line 370
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 371
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/prefs/PrefKey;

    .line 373
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 374
    sget-object v5, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->j:Ljava/lang/Object;

    if-ne v0, v5, :cond_a

    .line 375
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 377
    :cond_a
    if-eqz v0, :cond_9

    .line 378
    instance-of v5, v0, Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 379
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 380
    :cond_b
    instance-of v5, v0, Ljava/lang/Boolean;

    if-eqz v5, :cond_c

    .line 381
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 382
    :cond_c
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_d

    .line 383
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 384
    :cond_d
    instance-of v5, v0, Ljava/lang/Long;

    if-eqz v5, :cond_e

    .line 385
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v4, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 386
    :cond_e
    instance-of v5, v0, Ljava/lang/Float;

    if-eqz v5, :cond_9

    .line 387
    invoke-virtual {v1}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v4, v1, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 392
    :cond_f
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 396
    :cond_10
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->g:Z

    .line 398
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;I)I
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 241
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;J)J
    .locals 2

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 246
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    move-wide v0, p2

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 265
    new-instance v0, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    invoke-direct {v0, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;-><init>(Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V

    return-object v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/facebook/orca/prefs/PrefKey;Z)Z
    .locals 1

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->c:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 236
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->h:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 435
    sget-object v2, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->k:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/prefs/PrefKey;

    .line 436
    invoke-virtual {v0, p0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->b(Lcom/facebook/orca/prefs/PrefKey;)V

    .line 437
    invoke-virtual {p0}, Lcom/facebook/orca/prefs/PrefKey;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 440
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    return-void
.end method

.method public declared-synchronized b(Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
