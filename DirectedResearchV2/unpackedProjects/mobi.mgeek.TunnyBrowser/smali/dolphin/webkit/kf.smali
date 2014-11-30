.class final Ldolphin/webkit/kf;
.super Ldolphin/webkit/WebViewDatabase;
.source "WebViewDatabaseClassic.java"


# static fields
.field private static A:I

.field private static B:I

.field private static C:I

.field private static D:I

.field private static E:I

.field static final synthetic a:Z

.field private static b:Ldolphin/webkit/kf;

.field private static c:Landroid/database/sqlite/SQLiteDatabase;

.field private static d:Landroid/database/sqlite/SQLiteDatabase;

.field private static e:Landroid/database/sqlite/SQLiteDatabase;

.field private static f:Landroid/database/sqlite/SQLiteDatabase;

.field private static g:Landroid/database/sqlite/SQLiteDatabase;

.field private static h:Landroid/database/sqlite/SQLiteDatabase;

.field private static i:Landroid/database/sqlite/SQLiteDatabase;

.field private static final n:[Ljava/lang/String;

.field private static final o:[Ljava/lang/String;

.field private static p:Landroid/database/DatabaseUtils$InsertHelper;

.field private static q:I

.field private static r:I

.field private static s:I

.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I

.field private static z:I


# instance fields
.field private F:Z

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 46
    const-class v0, Ldolphin/webkit/kf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ldolphin/webkit/kf;->a:Z

    .line 80
    sput-object v3, Ldolphin/webkit/kf;->b:Ldolphin/webkit/kf;

    .line 82
    sput-object v3, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    sput-object v3, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    sput-object v3, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    sput-object v3, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    .line 88
    sput-object v3, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    sput-object v3, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    sput-object v3, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "cookies"

    aput-object v3, v0, v2

    const-string v3, "password"

    aput-object v3, v0, v1

    const/4 v3, 0x2

    const-string v4, "formurl"

    aput-object v4, v0, v3

    const/4 v3, 0x3

    const-string v4, "formdata"

    aput-object v4, v0, v3

    const/4 v3, 0x4

    const-string v4, "httpauth"

    aput-object v4, v0, v3

    sput-object v0, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    .line 118
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 46
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ldolphin/webkit/WebViewDatabase;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/kf;->k:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldolphin/webkit/kf;->m:Ljava/lang/Object;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/kf;->F:Z

    .line 252
    new-instance v0, Ldolphin/webkit/kg;

    invoke-direct {v0, p0, p1}, Ldolphin/webkit/kg;-><init>(Ldolphin/webkit/kf;Landroid/content/Context;)V

    invoke-virtual {v0}, Ldolphin/webkit/kg;->start()V

    .line 260
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ldolphin/webkit/kf;
    .locals 2

    .prologue
    .line 263
    const-class v1, Ldolphin/webkit/kf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->b:Ldolphin/webkit/kf;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Ldolphin/webkit/kf;

    invoke-direct {v0, p0}, Ldolphin/webkit/kf;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/webkit/kf;->b:Ldolphin/webkit/kf;

    .line 266
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->b:Ldolphin/webkit/kf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 642
    if-gtz p1, :cond_1

    .line 644
    :try_start_0
    const-string v0, "webview.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 648
    const-string v1, "WebViewDatabaseClassic"

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    const-string v0, "webview.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "webview.db"

    invoke-virtual {p0, v0, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 656
    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 658
    :try_start_1
    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 660
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "checkInitialized"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 661
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 664
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 670
    :goto_1
    :try_start_3
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_JB:Z

    if-eqz v0, :cond_3

    .line 671
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "sDatabase"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 672
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 673
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 682
    :catch_1
    move-exception v0

    .line 683
    const-string v2, "WebViewDatabaseClassic"

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 684
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 685
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 687
    :cond_2
    invoke-static {p0, v1}, Ldolphin/webkit/kf;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 667
    :catch_2
    move-exception v0

    .line 668
    :try_start_4
    const-string v0, "WebViewDatabaseClassic"

    const-string v3, "android checkInitialized exception"

    invoke-static {v0, v3}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 676
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "mDatabase"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 677
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    sput-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method static synthetic a(Ldolphin/webkit/kf;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ldolphin/webkit/kf;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(I)Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1120
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1166
    :goto_0
    return v9

    .line 1127
    :cond_0
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 1128
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "host_key"

    aput-object v1, v2, v0

    .line 1131
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1160
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-ne v0, v8, :cond_7

    move v0, v8

    .line 1164
    :goto_2
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_3
    move v9, v0

    .line 1166
    goto :goto_0

    .line 1134
    :cond_2
    :try_start_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1135
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 1138
    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "autofill"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 1141
    :cond_3
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 1142
    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 1145
    :cond_4
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_6

    .line 1146
    if-nez p1, :cond_5

    .line 1147
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "host_key"

    aput-object v1, v2, v0

    .line 1150
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 1154
    :cond_5
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_1

    .line 1158
    :cond_6
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, p1

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    move v0, v9

    .line 1160
    goto/16 :goto_2

    .line 1161
    :catch_0
    move-exception v0

    move-object v1, v10

    .line 1162
    :goto_4
    :try_start_3
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "hasEntries"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1164
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    move-object v10, v1

    goto :goto_5

    .line 1161
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_9
    move v0, v9

    goto/16 :goto_3
.end method

.method private declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/kf;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Ldolphin/webkit/kf;->c(Landroid/content/Context;)V

    .line 275
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const-string v0, "dolphin_webviewCache.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 282
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldolphin/webkit/kf;->F:Z

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 278
    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Ldolphin/webkit/kf;->e(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private c(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    :try_start_0
    const-string v0, "dolphin_webview.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_3

    .line 299
    invoke-static {p1}, Ldolphin/webkit/kf;->j(Landroid/content/Context;)V

    .line 305
    :cond_1
    :goto_1
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_4

    .line 306
    iput-boolean v4, p0, Ldolphin/webkit/kf;->F:Z

    .line 307
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 362
    :cond_2
    :goto_2
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 291
    const-string v1, "WebViewDatabaseClassic"

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const-string v0, "dolphin_webview.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "dolphin_webview.db"

    invoke-virtual {p1, v0, v3, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 301
    :cond_3
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_1

    .line 302
    invoke-static {p1}, Ldolphin/webkit/kf;->f(Landroid/content/Context;)V

    goto :goto_1

    .line 311
    :cond_4
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_6

    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_5

    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_6

    .line 312
    :cond_5
    iput-boolean v4, p0, Ldolphin/webkit/kf;->F:Z

    .line 313
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_2

    .line 317
    :cond_6
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_8

    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_8

    .line 318
    :cond_7
    iput-boolean v4, p0, Ldolphin/webkit/kf;->F:Z

    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    goto :goto_2

    .line 323
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_9

    .line 324
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 326
    :cond_9
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_a

    .line 327
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 330
    :cond_a
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_b

    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_e

    .line 332
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 337
    :goto_3
    :try_start_1
    invoke-static {}, Ldolphin/webkit/kf;->f()V

    .line 338
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 343
    :cond_b
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_c

    .line 344
    invoke-static {p1}, Ldolphin/webkit/kf;->k(Landroid/content/Context;)V

    .line 346
    :cond_c
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_d

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_d

    .line 347
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 349
    :try_start_2
    invoke-static {p1}, Ldolphin/webkit/kf;->i(Landroid/content/Context;)V

    .line 350
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 352
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 358
    :cond_d
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 359
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_2

    .line 360
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    goto/16 :goto_2

    .line 334
    :cond_e
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_3

    .line 340
    :catchall_0
    move-exception v0

    sget-object v1, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 352
    :catchall_1
    move-exception v0

    sget-object v1, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 365
    .line 367
    :try_start_0
    const-string v1, "dolphin_webviewCache.db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 377
    :cond_0
    :goto_0
    return-object v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    const-string v2, "WebViewDatabaseClassic"

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    const-string v1, "dolphin_webviewCache.db"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    const-string v1, "dolphin_webviewCache.db"

    invoke-virtual {p1, v1, v4, v0}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 381
    sget-boolean v2, Ldolphin/webkit/kf;->a:Z

    if-nez v2, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 383
    :cond_0
    invoke-direct {p0, p1}, Ldolphin/webkit/kf;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 385
    sget-boolean v2, Ldolphin/webkit/VersionInfo;->IS_ICS:Z

    if-eqz v2, :cond_1

    .line 386
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 391
    :cond_1
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    .line 392
    iput-boolean v0, p0, Ldolphin/webkit/kf;->F:Z

    .line 393
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 394
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Create cache database failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_2
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    .line 399
    sget-boolean v2, Ldolphin/webkit/VersionInfo;->IS_ICS:Z

    if-eqz v2, :cond_3

    .line 400
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 406
    :goto_0
    :try_start_0
    invoke-static {}, Ldolphin/webkit/kf;->j()V

    .line 407
    invoke-static {}, Ldolphin/webkit/kf;->k()V

    .line 408
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 416
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 417
    invoke-direct {p0, p1}, Ldolphin/webkit/kf;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sput-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 422
    invoke-static {}, Ldolphin/webkit/CacheManager;->e()Z

    .line 426
    :goto_1
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "PRAGMA read_uncommitted = true;"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 430
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    .line 433
    new-instance v1, Landroid/database/DatabaseUtils$InsertHelper;

    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "cache"

    invoke-direct {v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    sput-object v1, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    .line 439
    :try_start_1
    sget-object v1, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 454
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->q:I

    .line 456
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "filepath"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->r:I

    .line 458
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "lastmodify"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->s:I

    .line 460
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "etag"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->t:I

    .line 462
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "expires"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->u:I

    .line 464
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "expiresstring"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->v:I

    .line 466
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->w:I

    .line 468
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "encoding"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->x:I

    .line 470
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "httpstatus"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->y:I

    .line 472
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->z:I

    .line 474
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "contentlength"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->A:I

    .line 476
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "contentdisposition"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->B:I

    .line 478
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "crossdomain"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->C:I

    .line 480
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "alloworigin"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldolphin/webkit/kf;->D:I

    .line 482
    :goto_2
    return-void

    .line 402
    :cond_3
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto/16 :goto_0

    .line 411
    :catchall_0
    move-exception v0

    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 416
    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 417
    invoke-direct {p0, p1}, Ldolphin/webkit/kf;->d(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    throw v0

    .line 440
    :catch_0
    move-exception v1

    .line 443
    const-string v2, "WebViewDatabaseClassic"

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    if-eqz v0, :cond_4

    .line 446
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 447
    invoke-direct {p0, p1}, Ldolphin/webkit/kf;->e(Landroid/content/Context;)V

    goto :goto_2

    .line 450
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Create cache database failed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    goto/16 :goto_1
.end method

.method private static f()V
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Ldolphin/webkit/kf;->i()V

    .line 486
    invoke-static {}, Ldolphin/webkit/kf;->h()V

    .line 489
    invoke-static {}, Ldolphin/webkit/kf;->g()V

    .line 492
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 493
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 693
    const/4 v0, 0x5

    invoke-static {p0, v0}, Ldolphin/webkit/kf;->a(Landroid/content/Context;I)V

    .line 696
    :try_start_0
    const-string v0, "webviewCookiesChromium.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 699
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 700
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 702
    :cond_0
    const-string v0, "webviewCookiesChromium.db"

    invoke-virtual {p0, v0, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method

.method private static g()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 496
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 498
    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 511
    :goto_0
    return-void

    .line 503
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expires"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 509
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS cookiesIndex ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (path)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xd

    .line 709
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 711
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 712
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 714
    :cond_1
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "creation_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expires_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "httponly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last_access_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 721
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS cookiesIndex ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (path)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static h()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 532
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 534
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 560
    :goto_0
    return-void

    .line 539
    :cond_0
    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 545
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 549
    :cond_1
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, v10

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 551
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 552
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string v2, "url"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 554
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 555
    const-string v4, "url"

    invoke-static {v2}, Ldolphin/webkit/hy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-object v2, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v4, v4, v10

    const-string v5, "_id=?"

    new-array v6, v9, [Ljava/lang/String;

    aput-object v1, v6, v8

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 559
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 728
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "urlid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "urlid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT IGNORE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 745
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT REPLACE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 753
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT REPLACE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 759
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ge v0, v4, :cond_0

    .line 760
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    goto/16 :goto_0
.end method

.method private static i()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 563
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 565
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 570
    :cond_0
    if-eqz v0, :cond_1

    .line 571
    const-string v1, "WebViewDatabaseClassic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", which will destroy old data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1
    const/16 v1, 0x9

    if-ne v1, v0, :cond_2

    .line 577
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 579
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT REPLACE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :cond_2
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 591
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 594
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 596
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 598
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 602
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "domain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expires"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 608
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX cookiesIndex ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (path)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 612
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 617
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "urlid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "urlid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT IGNORE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT REPLACE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 633
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT REPLACE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static i(Landroid/content/Context;)V
    .locals 13

    .prologue
    .line 764
    invoke-static {p0}, Ldolphin/webkit/kf;->h(Landroid/content/Context;)V

    .line 765
    const/4 v8, 0x0

    .line 766
    const/4 v11, 0x0

    .line 767
    const/4 v9, 0x0

    .line 769
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 771
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 772
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 773
    const-string v2, "host"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":80"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const-string v2, "realm"

    const-string v3, "realm"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v2, "username"

    const-string v3, "username"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v2, "password"

    const-string v3, "password"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    sget-object v2, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    goto :goto_0

    .line 780
    :catch_0
    move-exception v0

    .line 781
    :goto_1
    :try_start_2
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get cursor cursor"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    .line 783
    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v1

    .line 787
    :goto_2
    :try_start_3
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 789
    :goto_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 790
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 791
    const-string v2, "urlid"

    const-string v3, "urlid"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 792
    const-string v2, "name"

    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    const-string v2, "value"

    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    sget-object v2, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    goto :goto_3

    .line 797
    :catch_1
    move-exception v0

    .line 798
    :goto_4
    :try_start_5
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get cursor cursor"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    .line 800
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v1

    .line 804
    :goto_5
    :try_start_6
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v10

    move-object v8, v9

    move-object v9, v11

    .line 807
    :goto_6
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 808
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 809
    const-string v1, "url"

    const-string v2, "url"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    sget-object v1, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 812
    const-string v0, "(url == ?)"
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 814
    :try_start_8
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const-string v3, "(url == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "url"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 817
    :goto_7
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 818
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-wide v11

    .line 820
    :try_start_9
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "urlid"

    aput-object v4, v2, v3

    const-string v3, "(urlid == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v10, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-result-object v0

    .line 826
    :goto_8
    :try_start_a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 827
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 828
    const-string v2, "urlid"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    sget-object v2, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    .line 832
    :catch_2
    move-exception v1

    .line 833
    :goto_9
    :try_start_b
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get data cursor in update"

    invoke-static {v2, v3, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 835
    if-eqz v0, :cond_0

    :try_start_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_0
    :goto_a
    move-object v8, v0

    goto :goto_7

    .line 783
    :cond_1
    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_b
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 800
    :cond_3
    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_c
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 835
    :cond_5
    if-eqz v0, :cond_0

    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_a

    .line 838
    :catch_3
    move-exception v1

    move-object v2, v1

    move-object v1, v9

    .line 839
    :goto_d
    :try_start_e
    const-string v3, "WebViewDatabaseClassic"

    const-string v4, "get cursor cursor"

    invoke-static {v3, v4, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 841
    if-eqz v1, :cond_6

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :cond_6
    :goto_e
    move-object v8, v0

    move-object v9, v1

    .line 843
    goto/16 :goto_6

    .line 835
    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_f
    if-eqz v8, :cond_7

    :try_start_10
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 838
    :catch_4
    move-exception v0

    move-object v2, v0

    move-object v1, v9

    move-object v0, v8

    goto :goto_d

    .line 841
    :cond_8
    if-eqz v9, :cond_15

    :try_start_11
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    move-object v1, v9

    goto :goto_e

    :catchall_3
    move-exception v0

    :goto_10
    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 844
    :catch_5
    move-exception v0

    move-object v1, v10

    .line 845
    :goto_11
    :try_start_12
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get cursor cursor"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    .line 847
    if-eqz v1, :cond_13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v8, v1

    .line 851
    :goto_12
    :try_start_13
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    move-result-object v0

    .line 853
    :goto_13
    :try_start_14
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 854
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 855
    const-string v2, "host"

    const-string v3, "host"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v2, "username"

    const-string v3, "username"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v2, "password"

    const-string v3, "password"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    sget-object v2, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_13

    .line 861
    :catch_6
    move-exception v1

    .line 862
    :goto_14
    :try_start_15
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get cursor cursor"

    invoke-static {v2, v3, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 864
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v8, v0

    .line 867
    :goto_15
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 868
    invoke-static {p0}, Ldolphin/webkit/kf;->g(Landroid/content/Context;)V

    .line 870
    :try_start_16
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 872
    :goto_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 873
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 874
    const-string v1, "host_key"

    const-string v2, "domain"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v1, "name"

    const-string v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const-string v1, "value"

    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string v1, "path"

    const-string v2, "path"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v1, "expires_utc"

    const-string v2, "expires"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const-wide v4, 0x295e9648864000L

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 879
    const-string v1, "secure"

    const-string v2, "secure"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    const-string v1, "httponly"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    const-string v1, "last_access_utc"

    const-string v2, "expires"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 883
    sget-object v1, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_16
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto/16 :goto_16

    .line 887
    :catch_7
    move-exception v0

    .line 888
    :try_start_17
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "get c cursor in update"

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 890
    if-eqz v8, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_a
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 893
    :goto_17
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 894
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 895
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 896
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 897
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 898
    return-void

    .line 847
    :cond_b
    if-eqz v10, :cond_14

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v8, v10

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    move-object v10, v8

    :goto_18
    if-eqz v10, :cond_c

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    .line 864
    :cond_d
    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v8, v0

    goto/16 :goto_15

    :catchall_5
    move-exception v0

    :goto_19
    if-eqz v8, :cond_e

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v0

    .line 886
    :cond_f
    :try_start_18
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_18} :catch_7
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 890
    if-eqz v8, :cond_10

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_10
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_17

    .line 890
    :catchall_6
    move-exception v0

    if-eqz v8, :cond_11

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 891
    :cond_11
    sget-object v1, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 864
    :catchall_7
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_19

    .line 861
    :catch_8
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_14

    .line 847
    :catchall_8
    move-exception v0

    goto :goto_18

    :catchall_9
    move-exception v0

    move-object v10, v1

    goto :goto_18

    .line 844
    :catch_9
    move-exception v0

    move-object v1, v8

    goto/16 :goto_11

    .line 841
    :catchall_a
    move-exception v0

    move-object v9, v1

    goto/16 :goto_10

    .line 835
    :catchall_b
    move-exception v0

    goto/16 :goto_f

    .line 832
    :catch_a
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_9

    .line 800
    :catchall_c
    move-exception v0

    goto/16 :goto_c

    .line 797
    :catch_b
    move-exception v0

    move-object v1, v8

    goto/16 :goto_4

    .line 783
    :catchall_d
    move-exception v0

    goto/16 :goto_b

    .line 780
    :catch_c
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1

    :cond_12
    move-object v8, v0

    goto/16 :goto_15

    :cond_13
    move-object v8, v1

    goto/16 :goto_12

    :cond_14
    move-object v8, v10

    goto/16 :goto_12

    :cond_15
    move-object v0, v8

    move-object v1, v9

    goto/16 :goto_e

    :cond_16
    move-object v8, v1

    goto/16 :goto_5

    :cond_17
    move-object v8, v1

    goto/16 :goto_2
.end method

.method private static j()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 1070
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 1071
    if-eqz v0, :cond_0

    .line 1072
    const-string v1, "WebViewDatabaseClassic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading cache database from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS cache"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1077
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1078
    return-void
.end method

.method private static j(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 903
    :try_start_0
    const-string v0, "http_auth.db"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    :cond_0
    :goto_0
    invoke-static {p0}, Ldolphin/webkit/kf;->m(Landroid/content/Context;)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webview"

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Cookies"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 917
    const/high16 v2, 0x10000000

    .line 920
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 928
    :cond_1
    :goto_1
    invoke-static {p0}, Ldolphin/webkit/kf;->n(Landroid/content/Context;)V

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "webview"

    invoke-virtual {p0, v1, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Web Data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 935
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 943
    :cond_2
    :goto_2
    invoke-static {p0}, Ldolphin/webkit/kf;->l(Landroid/content/Context;)V

    .line 944
    return-void

    .line 904
    :catch_0
    move-exception v0

    .line 906
    const-string v1, "WebViewDatabaseClassic"

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 907
    const-string v0, "http_auth.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    const-string v0, "http_auth.db"

    invoke-virtual {p0, v0, v6, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    goto/16 :goto_0

    .line 921
    :catch_1
    move-exception v0

    .line 923
    const-string v3, "WebViewDatabaseClassic"

    invoke-static {v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 924
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_1

    .line 936
    :catch_2
    move-exception v0

    .line 938
    const-string v3, "WebViewDatabaseClassic"

    invoke-static {v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 940
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_2
.end method

.method private static k()V
    .locals 2

    .prologue
    .line 1081
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 1082
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE cache (_id INTEGER PRIMARY KEY, url TEXT, filepath TEXT, lastmodify TEXT, etag TEXT, expires INTEGER, expiresstring TEXT, mimetype TEXT, encoding TEXT,httpstatus INTEGER, location TEXT, contentlength INTEGER, contentdisposition TEXT, crossdomain TEXT, alloworigin TEXT, UNIQUE (url) ON CONFLICT REPLACE);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1095
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX cacheUrlIndex ON cache (url)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1098
    :cond_0
    return-void
.end method

.method private static k(Landroid/content/Context;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 948
    .line 950
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 952
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 954
    const-string v2, "host"

    const-string v3, "host"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v2, "realm"

    const-string v3, "realm"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v2, "username"

    const-string v3, "username"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v2, "password"

    const-string v3, "password"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    sget-object v2, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto :goto_0

    .line 961
    :catch_0
    move-exception v0

    .line 962
    :goto_1
    :try_start_2
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get c cursor"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 964
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v9, v1

    .line 968
    :goto_2
    :try_start_3
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 970
    :goto_3
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 971
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 973
    const-string v2, "name"

    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    const-string v2, "value"

    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const-string v2, "value_lower"

    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "count"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 977
    sget-object v2, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "autofill"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    .line 980
    :catch_1
    move-exception v0

    .line 981
    :goto_4
    :try_start_5
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get c cursor in update"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 983
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v9, v1

    .line 987
    :goto_5
    :try_start_6
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v1

    .line 989
    :goto_6
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 990
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 992
    const-string v2, "host_key"

    const-string v3, "domain"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string v2, "name"

    const-string v3, "name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    const-string v2, "value"

    const-string v3, "value"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v2, "path"

    const-string v3, "path"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    const-string v2, "expires_utc"

    const-string v3, "expires"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide v5, 0x295e9648864000L

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 997
    const-string v2, "secure"

    const-string v3, "secure"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    const-string v2, "httponly"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 999
    const-string v2, "last_access_utc"

    const-string v3, "expires"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1000
    const-string v2, "has_expires"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    const-string v2, "persistent"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string v2, "priority"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    sget-object v2, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_6

    .line 1007
    :catch_2
    move-exception v0

    .line 1008
    :goto_7
    :try_start_8
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "get c cursor in update"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1010
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1012
    :cond_0
    :goto_8
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, v10

    invoke-virtual {v0, v1, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1013
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1014
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v1, v1, v11

    invoke-virtual {v0, v1, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1015
    return-void

    .line 964
    :cond_1
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v9, v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_9
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 983
    :cond_3
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v9, v1

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_a
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1010
    :cond_5
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v1, v9

    :goto_b
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_3
    move-exception v0

    goto :goto_b

    .line 1007
    :catch_3
    move-exception v0

    move-object v1, v9

    goto :goto_7

    .line 983
    :catchall_4
    move-exception v0

    goto :goto_a

    .line 980
    :catch_4
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4

    .line 964
    :catchall_5
    move-exception v0

    goto :goto_9

    .line 961
    :catch_5
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1

    :cond_7
    move-object v9, v1

    goto/16 :goto_5

    :cond_8
    move-object v9, v1

    goto/16 :goto_2
.end method

.method private static l(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 1020
    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1022
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 1023
    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1025
    :cond_1
    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS autofill (name TEXT, value TEXT, value_lower TEXT, pair_id INTEGER PRIMARY KEY, count INTEGER);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private l()Z
    .locals 3

    .prologue
    .line 1103
    monitor-enter p0

    .line 1104
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Ldolphin/webkit/kf;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1106
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    :try_start_2
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "Caught exception while checking initialization"

    invoke-static {v1, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const-string v1, "WebViewDatabaseClassic"

    invoke-static {v0}, Ldolphin/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1114
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_3

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static m(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1034
    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1036
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1037
    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1039
    :cond_1
    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " UNIQUE ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") ON CONFLICT REPLACE);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static n(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0xd

    .line 1051
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1053
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 1054
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1056
    :cond_1
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "creation_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "host_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "expires_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "secure"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "httponly"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last_access_utc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has_expires"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "persistent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1065
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE INDEX IF NOT EXISTS cookiesIndex ON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (path)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1174
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1175
    iget-object v10, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v10

    .line 1176
    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "host_key"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "path"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "value"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "expires_utc"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "secure"

    aput-object v1, v2, v0

    .line 1181
    const-string v0, "(host_key GLOB \'*\' || ?)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    const/4 v8, 0x0

    .line 1185
    :try_start_1
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-string v3, "(host_key GLOB \'*\' || ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1188
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1189
    const-string v0, "host_key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1190
    const-string v0, "path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1191
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1192
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1193
    const-string v0, "expires_utc"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1194
    const-string v0, "secure"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1196
    :cond_0
    new-instance v8, Ldolphin/webkit/bj;

    invoke-direct {v8}, Ldolphin/webkit/bj;-><init>()V

    .line 1197
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    .line 1198
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    .line 1199
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    .line 1200
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    .line 1201
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1202
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Ldolphin/webkit/bj;->e:J

    .line 1206
    :goto_0
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Ldolphin/webkit/bj;->h:Z

    .line 1207
    const/4 v0, 0x1

    iput-byte v0, v8, Ldolphin/webkit/bj;->i:B

    .line 1208
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1217
    :cond_2
    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v9

    .line 1204
    :cond_3
    :try_start_4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide v13, 0x295e9648864000L

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    iput-wide v11, v8, Ldolphin/webkit/bj;->e:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 1211
    :catch_0
    move-exception v0

    .line 1212
    :goto_3
    :try_start_5
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getCookiesForDomain"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1214
    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1218
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 1206
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1214
    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1211
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3
.end method

.method a(J)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1770
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1771
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1823
    :cond_0
    :goto_0
    return-object v0

    .line 1773
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1774
    const/4 v2, 0x0

    .line 1775
    const-string v1, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    .line 1777
    :try_start_0
    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT contentlength, filepath FROM cache ORDER BY expires ASC"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v3

    .line 1778
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1779
    const/16 v7, 0x64

    .line 1780
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v1, 0x654

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1781
    const-string v1, "DELETE FROM cache WHERE filepath IN (?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    const/4 v1, 0x1

    :goto_1
    if-ge v1, v7, :cond_2

    .line 1783
    const-string v2, ", ?"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1782
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1785
    :cond_2
    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1786
    const/4 v2, 0x0

    .line 1788
    :try_start_2
    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 1791
    const/4 v1, 0x1

    move-wide v4, p1

    .line 1793
    :cond_3
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1794
    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-nez v6, :cond_7

    .line 1806
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v6, v4, v8

    if-gtz v6, :cond_3

    .line 1807
    :cond_4
    const/4 v4, 0x1

    if-le v1, v4, :cond_5

    .line 1810
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1815
    :cond_5
    if-eqz v2, :cond_6

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1821
    :cond_6
    :goto_3
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1797
    :cond_7
    sub-long v5, v4, v8

    .line 1798
    const/4 v4, 0x1

    :try_start_4
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1799
    invoke-virtual {v2, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1800
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1801
    add-int/lit8 v4, v1, 0x1

    if-ne v1, v7, :cond_a

    .line 1802
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1803
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1804
    const/4 v1, 0x1

    move-wide v4, v5

    goto :goto_2

    .line 1812
    :catch_0
    move-exception v1

    .line 1813
    :try_start_5
    const-string v4, "WebViewDatabaseClassic"

    const-string v5, "trimCache SQLiteStatement"

    invoke-static {v4, v5, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1815
    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 1818
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 1819
    :goto_4
    :try_start_7
    const-string v3, "WebViewDatabaseClassic"

    const-string v4, "trimCache Cursor"

    invoke-static {v3, v4, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1821
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1815
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_8

    :try_start_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_8
    throw v1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1821
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 1818
    :catch_2
    move-exception v1

    goto :goto_4

    :cond_a
    move v1, v4

    move-wide v12, v5

    move-wide v4, v12

    goto :goto_2
.end method

.method a(Ldolphin/webkit/bj;)V
    .locals 10

    .prologue
    const-wide v8, 0x295e9648864000L

    const-wide/16 v6, 0x3e8

    .line 1389
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1390
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1391
    const-string v2, "host_key"

    iget-object v3, p1, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    const-string v2, "name"

    iget-object v3, p1, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v2, "value"

    iget-object v3, p1, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    const-string v2, "path"

    iget-object v3, p1, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget-wide v2, p1, Ldolphin/webkit/bj;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1396
    const-string v2, "expires_utc"

    iget-wide v3, p1, Ldolphin/webkit/bj;->e:J

    mul-long/2addr v3, v6

    add-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1398
    :cond_0
    const-string v2, "secure"

    iget-boolean v3, p1, Ldolphin/webkit/bj;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1399
    const-string v2, "httponly"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1400
    const-string v2, "last_access_utc"

    iget-wide v3, p1, Ldolphin/webkit/bj;->f:J

    mul-long/2addr v3, v6

    add-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1401
    const-string v2, "has_expires"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1402
    const-string v2, "persistent"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1403
    const-string v2, "priority"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1405
    sget-object v2, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1407
    monitor-exit v1

    .line 1408
    return-void

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;Ldolphin/webkit/CacheManager$CacheResult;)V
    .locals 4

    .prologue
    .line 1694
    sget-boolean v0, Ldolphin/webkit/kf;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1696
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1717
    :cond_1
    :goto_0
    return-void

    .line 1700
    :cond_2
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 1701
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->q:I

    invoke-virtual {v0, v1, p1}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1702
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->r:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1703
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->s:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1704
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->t:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1705
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->u:I

    iget-wide v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 1706
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->v:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1707
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->w:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1708
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->x:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1709
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->y:I

    iget v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 1710
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->z:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1711
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->A:I

    iget-wide v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 1712
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->B:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1714
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->C:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1715
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    sget v1, Ldolphin/webkit/kf;->D:I

    iget-object v2, p2, Ldolphin/webkit/CacheManager$CacheResult;->allowOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    .line 1716
    sget-object v0, Ldolphin/webkit/kf;->p:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1335
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1336
    :try_start_0
    const-string v0, "(host_key == ?) AND (path == ?) AND (name == ?)"

    .line 1339
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "(host_key == ?) AND (path == ?) AND (name == ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1342
    monitor-exit v1

    .line 1343
    return-void

    .line 1342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1973
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1977
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/kf;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 1978
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1979
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v2, "realm"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    const-string v2, "username"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const-string v2, "password"

    invoke-virtual {v0, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    sget-boolean v2, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v2, :cond_2

    .line 1984
    sget-object v2, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1986
    monitor-exit v1

    goto :goto_0

    .line 1995
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1988
    :cond_2
    :try_start_1
    sget-boolean v2, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v2, :cond_3

    .line 1989
    sget-object v2, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1991
    monitor-exit v1

    goto :goto_0

    .line 1993
    :cond_3
    sget-object v2, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1995
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 2149
    iget-object v11, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    monitor-enter v11

    .line 2150
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2151
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 2152
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2153
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2154
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v9, v0

    .line 2157
    const-string v1, "(name == ?) AND (value == ?)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2160
    :try_start_1
    sget-object v1, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "autofill"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "value"

    aput-object v5, v3, v4

    const-string v4, "(name == ?) AND (value == ?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v7, 0x1

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 2166
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    if-eqz v1, :cond_1

    .line 2172
    if-eqz v2, :cond_0

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2181
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2172
    :cond_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2175
    :cond_2
    :goto_1
    const-string v2, "name"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    const-string v2, "value"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    const-string v2, "value_lower"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    const-string v1, "count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2179
    sget-object v1, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "autofill"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2169
    :catch_0
    move-exception v1

    move-object v2, v10

    .line 2170
    :goto_2
    :try_start_5
    const-string v3, "WebViewDatabaseClassic"

    const-string v4, "getFormData dataCursor"

    invoke-static {v3, v4, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2172
    if-eqz v2, :cond_2

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v1

    :goto_3
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 2181
    :cond_4
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2182
    return-void

    .line 2172
    :catchall_2
    move-exception v1

    move-object v10, v2

    goto :goto_3

    .line 2169
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method a()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1573
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1592
    :cond_0
    :goto_0
    return v0

    .line 1576
    :cond_1
    sget v2, Ldolphin/webkit/kf;->E:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Ldolphin/webkit/kf;->E:I

    if-ne v2, v1, :cond_0

    .line 1577
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/kv;->getLooper()Ldolphin/util/l;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/util/l;->d()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1579
    const-string v0, "WebViewDatabaseClassic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS:Z

    if-eqz v0, :cond_3

    .line 1585
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    :goto_1
    move v0, v1

    .line 1590
    goto :goto_0

    .line 1587
    :cond_3
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    goto :goto_1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 1999
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v1

    const-string v0, "password"

    aput-object v0, v2, v3

    .line 2002
    const-string v0, "(host == ?) AND (realm == ?)"

    .line 2004
    iget-object v9, p0, Ldolphin/webkit/kf;->m:Ljava/lang/Object;

    monitor-enter v9

    .line 2008
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2011
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2012
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    .line 2013
    const/4 v0, 0x0

    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    .line 2015
    const/4 v0, 0x1

    const-string v2, "password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2021
    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2023
    :cond_1
    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v8

    .line 2018
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 2019
    :goto_1
    :try_start_3
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getHttpAuthUsernamePassword"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2021
    if-eqz v1, :cond_1

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2024
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 2021
    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_2

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 2018
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method addCookie(Ldolphin/webkit/bj;)V
    .locals 6

    .prologue
    .line 1441
    iget-object v0, p1, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    .line 1447
    invoke-virtual {p0, p1}, Ldolphin/webkit/kf;->a(Ldolphin/webkit/bj;)V

    goto :goto_0

    .line 1451
    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    .line 1452
    invoke-virtual {p0, p1}, Ldolphin/webkit/kf;->b(Ldolphin/webkit/bj;)V

    goto :goto_0

    .line 1455
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1456
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1457
    const-string v2, "domain"

    iget-object v3, p1, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v2, "path"

    iget-object v3, p1, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v2, "name"

    iget-object v3, p1, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1460
    const-string v2, "value"

    iget-object v3, p1, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-wide v2, p1, Ldolphin/webkit/bj;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 1462
    const-string v2, "expires"

    iget-wide v3, p1, Ldolphin/webkit/bj;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1464
    :cond_4
    const-string v2, "secure"

    iget-boolean v3, p1, Ldolphin/webkit/bj;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1465
    sget-object v2, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1466
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1223
    iget-object v10, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v10

    .line 1224
    const/4 v0, 0x6

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "host_key"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "path"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "value"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "expires_utc"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "secure"

    aput-object v1, v2, v0

    .line 1229
    const-string v0, "(host_key GLOB \'*\' || ?)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    const/4 v8, 0x0

    .line 1233
    :try_start_1
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-string v3, "(host_key GLOB \'*\' || ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1236
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1237
    const-string v0, "host_key"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1238
    const-string v0, "path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1239
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1240
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1241
    const-string v0, "expires_utc"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1242
    const-string v0, "secure"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1244
    :cond_0
    new-instance v8, Ldolphin/webkit/bj;

    invoke-direct {v8}, Ldolphin/webkit/bj;-><init>()V

    .line 1245
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    .line 1246
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    .line 1247
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    .line 1248
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    .line 1249
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    const-wide/16 v11, -0x1

    iput-wide v11, v8, Ldolphin/webkit/bj;->e:J

    .line 1254
    :goto_0
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Ldolphin/webkit/bj;->h:Z

    .line 1255
    const/4 v0, 0x1

    iput-byte v0, v8, Ldolphin/webkit/bj;->i:B

    .line 1256
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1265
    :cond_2
    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v9

    .line 1252
    :cond_3
    :try_start_4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide v13, 0x295e9648864000L

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    iput-wide v11, v8, Ldolphin/webkit/bj;->e:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    :goto_3
    :try_start_5
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getCookiesForDomain"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1262
    if-eqz v1, :cond_2

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 1254
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1262
    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_5

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 1259
    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_3
.end method

.method b(Ldolphin/webkit/bj;)V
    .locals 10

    .prologue
    const-wide v8, 0x295e9648864000L

    const-wide/16 v6, 0x3e8

    .line 1411
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1412
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1413
    const-string v2, "host_key"

    iget-object v3, p1, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const-string v2, "name"

    iget-object v3, p1, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v2, "value"

    iget-object v3, p1, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v2, "path"

    iget-object v3, p1, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-wide v2, p1, Ldolphin/webkit/bj;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1418
    const-string v2, "expires_utc"

    iget-wide v3, p1, Ldolphin/webkit/bj;->e:J

    mul-long/2addr v3, v6

    add-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1421
    :cond_0
    const-string v2, "secure"

    iget-boolean v3, p1, Ldolphin/webkit/bj;->h:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1422
    const-string v2, "httponly"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1423
    const-string v2, "last_access_utc"

    iget-wide v3, p1, Ldolphin/webkit/bj;->f:J

    mul-long/2addr v3, v6

    add-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1426
    :try_start_1
    sget-object v2, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1431
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1432
    return-void

    .line 1427
    :catch_0
    move-exception v0

    .line 1428
    const-string v2, "WebViewDatabaseClassic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception in insert jellybeancookiesDatabase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1346
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1347
    :try_start_0
    const-string v0, "(host_key == ?) AND (path == ?) AND (name == ?)"

    .line 1350
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "(host_key == ?) AND (path == ?) AND (name == ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1353
    monitor-exit v1

    .line 1354
    return-void

    .line 1353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2185
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2223
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    const-string v0, "(url == ?)"

    .line 2190
    iget-object v11, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    monitor-enter v11

    .line 2191
    const-wide/16 v9, -0x1

    .line 2194
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const-string v3, "(url == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2197
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2198
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v2

    .line 2208
    :goto_1
    if-eqz v1, :cond_6

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v2

    .line 2210
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_4

    .line 2211
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2212
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2213
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2214
    const-string v4, "urlid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2215
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2217
    const-string v4, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const-string v1, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 2222
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2200
    :cond_2
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2201
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    sget-object v2, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v2

    goto :goto_1

    .line 2205
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 2206
    :goto_4
    :try_start_4
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "setFormData"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2208
    if-eqz v1, :cond_5

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2222
    :cond_4
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2208
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 2205
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move-wide v0, v9

    goto/16 :goto_2

    :cond_6
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1597
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1624
    :cond_0
    :goto_0
    return v0

    .line 1600
    :cond_1
    sget v1, Ldolphin/webkit/kf;->E:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Ldolphin/webkit/kf;->E:I

    if-nez v1, :cond_0

    .line 1601
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ldolphin/webkit/kv;->a()Ldolphin/webkit/kv;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/webkit/kv;->getLooper()Ldolphin/util/l;

    move-result-object v2

    invoke-virtual {v2}, Ldolphin/util/l;->d()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1603
    const-string v1, "WebViewDatabaseClassic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endCacheTransaction should be called from WebViewWorkerThread instead of from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldolphin/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_2
    :try_start_0
    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1611
    :try_start_1
    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1622
    const/4 v0, 0x1

    goto :goto_0

    .line 1612
    :catch_0
    move-exception v1

    .line 1614
    const-string v2, "WebViewDatabaseClassic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1616
    :catch_1
    move-exception v1

    .line 1618
    const-string v2, "WebViewDatabaseClassic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1610
    :catchall_0
    move-exception v1

    .line 1611
    :try_start_2
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1619
    throw v1

    .line 1612
    :catch_2
    move-exception v1

    .line 1614
    const-string v2, "WebViewDatabaseClassic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1616
    :catch_3
    move-exception v1

    .line 1618
    const-string v2, "WebViewDatabaseClassic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 2028
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 2056
    :goto_0
    return-object v0

    .line 2032
    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v1

    const-string v0, "password"

    aput-object v0, v2, v3

    .line 2035
    const-string v0, "(host == ?) AND (realm == ?)"

    .line 2037
    iget-object v9, p0, Ldolphin/webkit/kf;->m:Ljava/lang/Object;

    monitor-enter v9

    .line 2041
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2044
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2045
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2046
    const/4 v0, 0x0

    :try_start_2
    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    .line 2048
    const/4 v0, 0x1

    const-string v2, "password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v8

    .line 2054
    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2056
    :cond_2
    :goto_2
    monitor-exit v9

    goto :goto_0

    .line 2057
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2051
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 2052
    :goto_3
    :try_start_4
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getHttpAuthUsernamePassword"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2054
    if-eqz v8, :cond_4

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 2051
    :catch_1
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v8

    goto :goto_1
.end method

.method c(Ljava/lang/String;)Ldolphin/webkit/CacheManager$CacheResult;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1634
    sget-boolean v1, Ldolphin/webkit/kf;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1636
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1669
    :cond_1
    :goto_0
    return-object v0

    .line 1642
    :cond_2
    const-string v1, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain, alloworigin FROM cache WHERE url = ?"

    .line 1646
    :try_start_0
    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT filepath, lastmodify, etag, expires, expiresstring, mimetype, encoding, httpstatus, location, contentlength, contentdisposition, crossdomain, alloworigin FROM cache WHERE url = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1647
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1648
    new-instance v1, Ldolphin/webkit/CacheManager$CacheResult;

    invoke-direct {v1}, Ldolphin/webkit/CacheManager$CacheResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1649
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->localPath:Ljava/lang/String;

    .line 1650
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->lastModified:Ljava/lang/String;

    .line 1651
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->etag:Ljava/lang/String;

    .line 1652
    const/4 v0, 0x3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Ldolphin/webkit/CacheManager$CacheResult;->expires:J

    .line 1653
    const/4 v0, 0x4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->expiresString:Ljava/lang/String;

    .line 1654
    const/4 v0, 0x5

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->mimeType:Ljava/lang/String;

    .line 1655
    const/4 v0, 0x6

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->encoding:Ljava/lang/String;

    .line 1656
    const/4 v0, 0x7

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->httpStatusCode:I

    .line 1657
    const/16 v0, 0x8

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->location:Ljava/lang/String;

    .line 1658
    const/16 v0, 0x9

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Ldolphin/webkit/CacheManager$CacheResult;->contentLength:J

    .line 1659
    const/16 v0, 0xa

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->contentdisposition:Ljava/lang/String;

    .line 1660
    const/16 v0, 0xb

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->crossDomain:Ljava/lang/String;

    .line 1661
    const/16 v0, 0xc

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ldolphin/webkit/CacheManager$CacheResult;->allowOrigin:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 1667
    :cond_3
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1663
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1664
    :goto_1
    :try_start_3
    const-string v3, "WebViewDatabaseClassic"

    const-string v4, "getCache"

    invoke-static {v3, v4, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1667
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1663
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1723
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1728
    :goto_0
    return-void

    .line 1727
    :cond_0
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "cache"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1863
    if-eqz p1, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    iget-object v1, p0, Ldolphin/webkit/kf;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1868
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1869
    const-string v2, "host"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    const-string v2, "username"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const-string v2, "password"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    sget-boolean v2, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v2, :cond_2

    .line 1873
    sget-object v2, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1875
    monitor-exit v1

    goto :goto_0

    .line 1879
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1877
    :cond_2
    :try_start_1
    sget-object v2, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "host"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1879
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method c(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2233
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2278
    :cond_0
    :goto_0
    return-void

    .line 2236
    :cond_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    .line 2237
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/kf;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2240
    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    .line 2241
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/kf;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2244
    :cond_3
    const-string v0, "(url == ?)"

    .line 2245
    iget-object v11, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    monitor-enter v11

    .line 2246
    const-wide/16 v9, -0x1

    .line 2249
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const-string v3, "(url == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2252
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2253
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-wide v2

    .line 2263
    :goto_1
    if-eqz v1, :cond_8

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v2

    .line 2265
    :goto_2
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    .line 2266
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2267
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2268
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2269
    const-string v4, "urlid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2270
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2272
    const-string v4, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    const-string v1, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 2277
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2255
    :cond_4
    :try_start_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2256
    const-string v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    sget-object v2, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v2

    goto :goto_1

    .line 2260
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 2261
    :goto_4
    :try_start_4
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "setFormData"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2263
    if-eqz v1, :cond_7

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 2277
    :cond_6
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2263
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 2260
    :catch_1
    move-exception v0

    goto :goto_4

    :cond_7
    move-wide v0, v9

    goto/16 :goto_2

    :cond_8
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method c(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 2070
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 2108
    :goto_0
    return-object v0

    .line 2074
    :cond_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    .line 2075
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/kf;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2079
    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    .line 2080
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/kf;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2084
    :cond_3
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v1

    const-string v0, "password"

    aput-object v0, v2, v3

    .line 2087
    const-string v0, "(host == ?) AND (realm == ?)"

    .line 2089
    iget-object v9, p0, Ldolphin/webkit/kf;->m:Ljava/lang/Object;

    monitor-enter v9

    .line 2093
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    const-string v3, "(host == ?) AND (realm == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2096
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2097
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2098
    const/4 v0, 0x0

    :try_start_2
    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    .line 2100
    const/4 v0, 0x1

    const-string v2, "password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v8

    .line 2106
    :goto_1
    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2108
    :cond_4
    :goto_2
    monitor-exit v9

    goto :goto_0

    .line 2109
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2103
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 2104
    :goto_3
    :try_start_4
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getHttpAuthUsernamePassword"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2106
    if-eqz v8, :cond_6

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 2103
    :catch_1
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    move-object v0, v8

    goto :goto_1
.end method

.method public clearCookies()V
    .locals 5

    .prologue
    .line 1486
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    :goto_0
    return-void

    .line 1490
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1491
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_1

    .line 1492
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1493
    monitor-exit v1

    goto :goto_0

    .line 1500
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1495
    :cond_1
    :try_start_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_2

    .line 1496
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1497
    monitor-exit v1

    goto :goto_0

    .line 1499
    :cond_2
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1500
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method clearExpiredCookies(J)V
    .locals 7

    .prologue
    .line 1538
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1565
    :goto_0
    return-void

    .line 1542
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1544
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_1

    .line 1545
    const-string v0, "expires_utc <= ?"

    .line 1546
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "expires_utc <= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    :try_start_1
    monitor-exit v1

    goto :goto_0

    .line 1564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1550
    :cond_1
    :try_start_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_2

    .line 1551
    const-string v0, "expires_utc <= ?"

    .line 1552
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "expires_utc <= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1554
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1556
    :cond_2
    :try_start_4
    const-string v0, "expires <= ?"

    .line 1557
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "expires <= ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1564
    :goto_1
    :try_start_5
    monitor-exit v1

    goto :goto_0

    .line 1560
    :catch_0
    move-exception v0

    .line 1562
    const-string v2, "WebViewDatabaseClassic"

    invoke-static {v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public clearFormData()V
    .locals 5

    .prologue
    .line 2431
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2449
    :goto_0
    return-void

    .line 2435
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 2436
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_1

    .line 2437
    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "autofill"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2438
    monitor-exit v1

    goto :goto_0

    .line 2448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2440
    :cond_1
    :try_start_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_2

    .line 2441
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2442
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2443
    monitor-exit v1

    goto :goto_0

    .line 2445
    :cond_2
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2446
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2448
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public clearHttpAuthUsernamePassword()V
    .locals 5

    .prologue
    .line 2127
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2142
    :goto_0
    return-void

    .line 2131
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/kf;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 2132
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_1

    .line 2133
    sget-object v0, Ldolphin/webkit/kf;->g:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2134
    monitor-exit v1

    goto :goto_0

    .line 2141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2136
    :cond_1
    :try_start_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_2

    .line 2137
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2138
    monitor-exit v1

    goto :goto_0

    .line 2140
    :cond_2
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public clearSessionCookies()V
    .locals 5

    .prologue
    .line 1508
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1530
    :goto_0
    return-void

    .line 1512
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1513
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_1

    .line 1514
    const-string v0, "expires_utc ISNULL"

    .line 1515
    sget-object v0, Ldolphin/webkit/kf;->e:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "expires_utc ISNULL"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1517
    monitor-exit v1

    goto :goto_0

    .line 1529
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1519
    :cond_1
    :try_start_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_2

    .line 1520
    const-string v0, "expires_utc ISNULL"

    .line 1521
    sget-object v0, Ldolphin/webkit/kf;->i:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "expires_utc ISNULL"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1523
    monitor-exit v1

    goto :goto_0

    .line 1526
    :cond_2
    const-string v0, "expires ISNULL"

    .line 1527
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "expires ISNULL"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1529
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public clearUsernamePassword()V
    .locals 5

    .prologue
    .line 1944
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1955
    :goto_0
    return-void

    .line 1948
    :cond_0
    iget-object v1, p0, Ldolphin/webkit/kf;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1949
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_1

    .line 1950
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1951
    monitor-exit v1

    goto :goto_0

    .line 1954
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1953
    :cond_1
    :try_start_1
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1954
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method d()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    .line 1750
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1766
    :cond_0
    :goto_0
    return-wide v0

    .line 1755
    :cond_1
    const-string v2, "SELECT SUM(contentlength) as sum FROM cache"

    .line 1757
    :try_start_0
    sget-object v2, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT SUM(contentlength) as sum FROM cache"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1758
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1759
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1764
    :cond_2
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1761
    :catch_0
    move-exception v2

    .line 1762
    :try_start_1
    const-string v4, "WebViewDatabaseClassic"

    const-string v5, "getCacheTotalSize"

    invoke-static {v4, v5, v2}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1764
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2281
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2284
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->f:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "autofill"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "(name == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2290
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2291
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2294
    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2295
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 2300
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2302
    :cond_2
    :goto_0
    return-object v9

    .line 2297
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 2298
    :goto_1
    :try_start_2
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getFormData dataCursor"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2300
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 2297
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1678
    sget-boolean v0, Ldolphin/webkit/kf;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ldolphin/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1680
    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1685
    :cond_1
    :goto_0
    return-void

    .line 1684
    :cond_2
    sget-object v0, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM cache WHERE url = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method deleteCookies(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1367
    if-eqz p1, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    .line 1372
    invoke-virtual {p0, p1, p2, p3}, Ldolphin/webkit/kf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1375
    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    .line 1376
    invoke-virtual {p0, p1, p2, p3}, Ldolphin/webkit/kf;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1379
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1380
    :try_start_0
    const-string v0, "(domain == ?) AND (path == ?) AND (name == ?)"

    .line 1383
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "(domain == ?) AND (path == ?) AND (name == ?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1385
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2306
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2307
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 2348
    :goto_0
    return-object v0

    .line 2311
    :cond_1
    const-string v0, "(url == ?)"

    .line 2312
    const-string v0, "(urlid == ?) AND (name == ?)"

    .line 2314
    iget-object v11, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    monitor-enter v11

    .line 2317
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const-string v3, "(url == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v10

    .line 2320
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2321
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    .line 2324
    :try_start_2
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "(urlid == ?) AND (name == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 2330
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2331
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2334
    :cond_3
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2335
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v2

    if-nez v2, :cond_3

    .line 2340
    :cond_4
    if-eqz v1, :cond_2

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2343
    :catch_0
    move-exception v0

    move-object v9, v10

    .line 2344
    :goto_2
    :try_start_5
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "getFormData cursor"

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2346
    if-eqz v9, :cond_5

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2348
    :cond_5
    :goto_3
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v8

    goto/16 :goto_0

    .line 2337
    :catch_1
    move-exception v0

    move-object v1, v9

    .line 2338
    :goto_4
    :try_start_7
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getFormData dataCursor"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2340
    if-eqz v1, :cond_2

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 2346
    :catchall_0
    move-exception v0

    move-object v9, v10

    :goto_5
    if-eqz v9, :cond_6

    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2349
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    .line 2340
    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v9, :cond_7

    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2346
    :cond_8
    if-eqz v10, :cond_5

    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 2343
    :catch_2
    move-exception v0

    goto :goto_2

    .line 2340
    :catchall_4
    move-exception v0

    move-object v9, v1

    goto :goto_6

    .line 2337
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1827
    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1846
    :cond_0
    :goto_0
    return-object v0

    .line 1833
    :cond_1
    :try_start_0
    sget-object v1, Ldolphin/webkit/kf;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT filepath FROM cache"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1835
    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1836
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1838
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    .line 1844
    :cond_3
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1841
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1842
    :goto_1
    :try_start_3
    const-string v3, "WebViewDatabaseClassic"

    const-string v4, "getAllCacheFileNames"

    invoke-static {v3, v4, v1}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1844
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1841
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1
.end method

.method e(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 1890
    if-eqz p1, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 1925
    :goto_0
    return-object v0

    .line 1894
    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "username"

    aput-object v0, v2, v3

    const-string v0, "password"

    aput-object v0, v2, v1

    .line 1897
    const-string v0, "(host == ?)"

    .line 1898
    iget-object v9, p0, Ldolphin/webkit/kf;->k:Ljava/lang/Object;

    monitor-enter v9

    .line 1902
    :try_start_0
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-nez v0, :cond_3

    .line 1903
    sget-object v0, Ldolphin/webkit/kf;->h:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1911
    :goto_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1912
    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1913
    const/4 v0, 0x0

    :try_start_2
    const-string v2, "username"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0

    .line 1915
    const/4 v0, 0x1

    const-string v2, "password"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v8

    .line 1923
    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1925
    :cond_2
    :goto_3
    monitor-exit v9

    goto :goto_0

    .line 1926
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1908
    :cond_3
    :try_start_4
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    const-string v3, "(host == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    goto :goto_1

    .line 1918
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 1919
    :goto_4
    :try_start_5
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getUsernamePassword"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1923
    if-eqz v8, :cond_5

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    goto :goto_3

    .line 1920
    :catch_1
    move-exception v0

    move-object v1, v8

    .line 1921
    :goto_5
    :try_start_7
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "SQLite Exception"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1923
    if-eqz v8, :cond_5

    :try_start_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_6
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v0

    move-object v8, v1

    goto :goto_6

    .line 1920
    :catch_2
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_5

    .line 1918
    :catch_4
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v10, v1

    move-object v1, v8

    move-object v8, v10

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v8

    goto :goto_2
.end method

.method f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 2360
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2361
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 2412
    :goto_0
    return-object v0

    .line 2365
    :cond_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    .line 2366
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/kf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 2370
    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    .line 2371
    invoke-virtual {p0, p1, p2}, Ldolphin/webkit/kf;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 2375
    :cond_3
    const-string v0, "(url == ?)"

    .line 2376
    const-string v0, "(urlid == ?) AND (name == ?)"

    .line 2378
    iget-object v11, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    monitor-enter v11

    .line 2381
    :try_start_0
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Ldolphin/webkit/kf;->o:[Ljava/lang/String;

    const-string v3, "(url == ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v10

    .line 2384
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2385
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v5

    .line 2388
    :try_start_2
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "(urlid == ?) AND (name == ?)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 2394
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2395
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2398
    :cond_5
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2399
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v2

    if-nez v2, :cond_5

    .line 2404
    :cond_6
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 2407
    :catch_0
    move-exception v0

    move-object v9, v10

    .line 2408
    :goto_2
    :try_start_5
    const-string v1, "WebViewDatabaseClassic"

    const-string v2, "getFormData cursor"

    invoke-static {v1, v2, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2410
    if-eqz v9, :cond_7

    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2412
    :cond_7
    :goto_3
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v0, v8

    goto/16 :goto_0

    .line 2401
    :catch_1
    move-exception v0

    move-object v1, v9

    .line 2402
    :goto_4
    :try_start_7
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getFormData dataCursor"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2404
    if-eqz v1, :cond_4

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 2410
    :catchall_0
    move-exception v0

    move-object v9, v10

    :goto_5
    if-eqz v9, :cond_8

    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 2413
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v0

    .line 2404
    :catchall_2
    move-exception v0

    :goto_6
    if-eqz v9, :cond_9

    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2410
    :cond_a
    if-eqz v10, :cond_7

    :try_start_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 2407
    :catch_2
    move-exception v0

    goto :goto_2

    .line 2404
    :catchall_4
    move-exception v0

    move-object v9, v1

    goto :goto_6

    .line 2401
    :catch_3
    move-exception v0

    goto :goto_4
.end method

.method public getCookiesForDomain(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ldolphin/webkit/bj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1277
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    if-eqz p1, :cond_0

    invoke-direct {p0}, Ldolphin/webkit/kf;->l()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    .line 1330
    :goto_0
    return-object v0

    .line 1281
    :cond_1
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_KITKAT:Z

    if-eqz v0, :cond_2

    .line 1282
    invoke-virtual {p0, p1}, Ldolphin/webkit/kf;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1285
    :cond_2
    sget-boolean v0, Ldolphin/webkit/VersionInfo;->IS_ICS_MR1:Z

    if-eqz v0, :cond_3

    .line 1286
    invoke-virtual {p0, p1}, Ldolphin/webkit/kf;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 1289
    :cond_3
    iget-object v10, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v10

    .line 1290
    const/4 v0, 0x7

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "domain"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "path"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "value"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "expires"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "secure"

    aput-object v1, v2, v0

    .line 1295
    const-string v0, "(domain GLOB \'*\' || ?)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    const/4 v9, 0x0

    .line 1299
    :try_start_1
    sget-object v0, Ldolphin/webkit/kf;->c:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Ldolphin/webkit/kf;->n:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    const-string v3, "(domain GLOB \'*\' || ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1302
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1303
    const-string v0, "domain"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1304
    const-string v0, "path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1305
    const-string v0, "name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1306
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1307
    const-string v0, "expires"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1308
    const-string v0, "secure"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1310
    :cond_4
    new-instance v9, Ldolphin/webkit/bj;

    invoke-direct {v9}, Ldolphin/webkit/bj;-><init>()V

    .line 1311
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ldolphin/webkit/bj;->a:Ljava/lang/String;

    .line 1312
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ldolphin/webkit/bj;->b:Ljava/lang/String;

    .line 1313
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ldolphin/webkit/bj;->c:Ljava/lang/String;

    .line 1314
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Ldolphin/webkit/bj;->d:Ljava/lang/String;

    .line 1315
    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1316
    const-wide/16 v11, -0x1

    iput-wide v11, v9, Ldolphin/webkit/bj;->e:J

    .line 1320
    :goto_1
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v9, Ldolphin/webkit/bj;->h:Z

    .line 1321
    const/4 v0, 0x1

    iput-byte v0, v9, Ldolphin/webkit/bj;->i:B

    .line 1322
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1323
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-nez v0, :cond_4

    .line 1328
    :cond_5
    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1330
    :cond_6
    :goto_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v8

    goto/16 :goto_0

    .line 1318
    :cond_7
    :try_start_4
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v9, Ldolphin/webkit/bj;->e:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    :goto_4
    :try_start_5
    const-string v2, "WebViewDatabaseClassic"

    const-string v3, "getCookiesForDomain"

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1328
    if-eqz v1, :cond_6

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1331
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 1320
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 1328
    :catchall_1
    move-exception v0

    move-object v1, v9

    :goto_5
    if-eqz v1, :cond_9

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v0

    goto :goto_5

    .line 1325
    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_4
.end method

.method public hasCookies()Z
    .locals 2

    .prologue
    .line 1476
    iget-object v1, p0, Ldolphin/webkit/kf;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 1477
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Ldolphin/webkit/kf;->a(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasFormData()Z
    .locals 2

    .prologue
    .line 2421
    iget-object v1, p0, Ldolphin/webkit/kf;->l:Ljava/lang/Object;

    monitor-enter v1

    .line 2422
    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0, v0}, Ldolphin/webkit/kf;->a(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasHttpAuthUsernamePassword()Z
    .locals 2

    .prologue
    .line 2117
    iget-object v1, p0, Ldolphin/webkit/kf;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 2118
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Ldolphin/webkit/kf;->a(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasUsernamePassword()Z
    .locals 2

    .prologue
    .line 1934
    iget-object v1, p0, Ldolphin/webkit/kf;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1935
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ldolphin/webkit/kf;->a(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1936
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
