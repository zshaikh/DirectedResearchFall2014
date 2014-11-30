.class public Lcom/dolphin/browser/provider/w;
.super Ljava/lang/Object;
.source "MostVisitedManager.java"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:[Ljava/lang/String;

.field private static volatile e:Lcom/dolphin/browser/provider/w;


# instance fields
.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/Context;

.field private g:Landroid/content/ContentResolver;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getMostVisitMaxCount()I

    move-result v0

    sput v0, Lcom/dolphin/browser/provider/w;->a:I

    .line 44
    sget v0, Lcom/dolphin/browser/provider/w;->a:I

    sput v0, Lcom/dolphin/browser/provider/w;->b:I

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "visits"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "permanent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/provider/w;->c:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/provider/w;->d:Ljava/util/Queue;

    .line 72
    sget v0, Lcom/dolphin/browser/provider/w;->a:I

    iput v0, p0, Lcom/dolphin/browser/provider/w;->h:I

    .line 127
    iput-object p1, p0, Lcom/dolphin/browser/provider/w;->f:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/provider/w;->g:Landroid/content/ContentResolver;

    .line 129
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/provider/w;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/provider/w;->g:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static final a()Lcom/dolphin/browser/provider/w;
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcom/dolphin/browser/provider/w;->e:Lcom/dolphin/browser/provider/w;

    if-nez v0, :cond_1

    .line 76
    const-class v1, Lcom/dolphin/browser/provider/w;

    monitor-enter v1

    .line 77
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/provider/w;->e:Lcom/dolphin/browser/provider/w;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/dolphin/browser/provider/w;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/dolphin/browser/provider/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/provider/w;->e:Lcom/dolphin/browser/provider/w;

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    sget-object v0, Lcom/dolphin/browser/provider/w;->e:Lcom/dolphin/browser/provider/w;

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dolphin/browser/provider/w;->g:Landroid/content/ContentResolver;

    const/4 v1, 0x5

    invoke-static {v0, p2, p3, p1, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 235
    new-instance v0, Lcom/dolphin/browser/provider/x;

    invoke-direct {v0, p0, p3}, Lcom/dolphin/browser/provider/x;-><init>(Lcom/dolphin/browser/provider/w;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public a(JILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dolphin/browser/provider/w;->g:Landroid/content/ContentResolver;

    const/4 v6, 0x5

    move-wide v1, p1

    move-object v3, p4

    move-object v4, p5

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;II)V

    .line 263
    new-instance v0, Lcom/dolphin/browser/provider/x;

    invoke-direct {v0, p0, p5}, Lcom/dolphin/browser/provider/x;-><init>(Lcom/dolphin/browser/provider/w;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 186
    .line 189
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/provider/q;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 190
    const-string v3, "SELECT count(_id) as count FROM most_visited LEFT OUTER JOIN images ON most_visited.url = images.url_key"

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 192
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 199
    :goto_0
    if-eqz v1, :cond_0

    .line 201
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    :cond_0
    :goto_1
    return v0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 195
    :catch_1
    move-exception v1

    move-object v1, v0

    .line 197
    :goto_2
    :try_start_3
    iget v0, p0, Lcom/dolphin/browser/provider/w;->h:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 199
    if-eqz v1, :cond_0

    .line 201
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 202
    :catch_2
    move-exception v1

    .line 203
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 199
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    if-eqz v1, :cond_1

    .line 201
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 204
    :cond_1
    :goto_4
    throw v0

    .line 202
    :catch_3
    move-exception v1

    .line 203
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 199
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 195
    :catch_4
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0
.end method
