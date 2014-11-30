.class public Lcom/dolphin/browser/o/b;
.super Ljava/lang/Object;
.source "LocalHtmlManager.java"


# static fields
.field private static volatile a:Lcom/dolphin/browser/o/b;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/o/b;->b:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public static a()Lcom/dolphin/browser/o/b;
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/dolphin/browser/o/b;->a:Lcom/dolphin/browser/o/b;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lcom/dolphin/browser/o/b;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/o/b;->a:Lcom/dolphin/browser/o/b;

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 33
    new-instance v2, Lcom/dolphin/browser/o/b;

    invoke-direct {v2, v0}, Lcom/dolphin/browser/o/b;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/dolphin/browser/o/b;->a:Lcom/dolphin/browser/o/b;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lcom/dolphin/browser/o/b;->a:Lcom/dolphin/browser/o/b;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 70
    :goto_0
    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/o/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->e:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "key = \'local_html\' and value = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    if-eqz v1, :cond_1

    .line 64
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move v0, v7

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "LocalHtmlManager"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 62
    :cond_2
    if-eqz v1, :cond_3

    .line 64
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    move v0, v6

    .line 70
    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    .line 66
    const-string v1, "LocalHtmlManager"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 59
    :catch_2
    move-exception v0

    move-object v1, v8

    .line 60
    :goto_3
    :try_start_4
    const-string v2, "LocalHtmlManager"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    if-eqz v1, :cond_3

    .line 64
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 65
    :catch_3
    move-exception v0

    .line 66
    const-string v1, "LocalHtmlManager"

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 62
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v8, :cond_4

    .line 64
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 67
    :cond_4
    :goto_5
    throw v0

    .line 65
    :catch_4
    move-exception v1

    .line 66
    const-string v2, "LocalHtmlManager"

    invoke-static {v2, v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 62
    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_4

    .line 59
    :catch_5
    move-exception v0

    goto :goto_3
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/o/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 76
    const-string v2, "key"

    const-string v3, "local_html"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "value"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v2, Lcom/dolphin/browser/provider/Browser;->e:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 80
    return-void
.end method
