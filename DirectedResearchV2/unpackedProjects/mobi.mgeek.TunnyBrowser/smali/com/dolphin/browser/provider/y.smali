.class public Lcom/dolphin/browser/provider/y;
.super Ljava/lang/Object;
.source "SpeedDialManager.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static b:Lcom/dolphin/browser/provider/y;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/content/ContentResolver;

.field private e:I

.field private f:I

.field private g:Landroid/database/Cursor;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/provider/ac;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/database/DataSetObserver;

.field private j:Landroid/os/Handler;

.field private k:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x6

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

    const-string v2, "is_build_in"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "thumbnail_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/provider/y;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/16 v0, 0x8

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/dolphin/browser/provider/y;->e:I

    .line 67
    iput v0, p0, Lcom/dolphin/browser/provider/y;->f:I

    .line 423
    new-instance v0, Lcom/dolphin/browser/provider/aa;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/provider/aa;-><init>(Lcom/dolphin/browser/provider/y;)V

    iput-object v0, p0, Lcom/dolphin/browser/provider/y;->i:Landroid/database/DataSetObserver;

    .line 435
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/provider/y;->j:Landroid/os/Handler;

    .line 437
    new-instance v0, Lcom/dolphin/browser/provider/ab;

    iget-object v1, p0, Lcom/dolphin/browser/provider/y;->j:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/provider/ab;-><init>(Lcom/dolphin/browser/provider/y;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dolphin/browser/provider/y;->k:Landroid/database/ContentObserver;

    .line 113
    iput-object p1, p0, Lcom/dolphin/browser/provider/y;->c:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/provider/y;->d:Landroid/content/ContentResolver;

    .line 115
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/y;->c()V

    .line 116
    return-void
.end method

.method public static final a()Lcom/dolphin/browser/provider/y;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/dolphin/browser/provider/y;->b:Lcom/dolphin/browser/provider/y;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/dolphin/browser/provider/y;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dolphin/browser/provider/y;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/provider/y;->b:Lcom/dolphin/browser/provider/y;

    .line 73
    :cond_0
    sget-object v0, Lcom/dolphin/browser/provider/y;->b:Lcom/dolphin/browser/provider/y;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/provider/y;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/dolphin/browser/provider/y;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    iget-object v1, p0, Lcom/dolphin/browser/provider/y;->g:Landroid/database/Cursor;

    .line 382
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    :cond_1
    invoke-static {v1}, Lcom/dolphin/browser/provider/ac;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/provider/ac;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    :cond_2
    iput-object v0, p0, Lcom/dolphin/browser/provider/y;->h:Ljava/util/List;

    .line 389
    :cond_3
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lcom/dolphin/browser/provider/y;->e:I

    .line 235
    return-void
.end method

.method public b()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->g:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->g:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->SPEED_DIAL_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/dolphin/browser/provider/y;->f:I

    invoke-static {v1, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/provider/y;->a:[Ljava/lang/String;

    const-string v5, "is_folder DESC, _order DESC, title COLLATE UNICODE ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/dolphin/browser/provider/y;->i:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 127
    iget-object v1, p0, Lcom/dolphin/browser/provider/y;->k:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 129
    :cond_1
    iput-object v0, p0, Lcom/dolphin/browser/provider/y;->g:Landroid/database/Cursor;

    .line 130
    iget-object v1, p0, Lcom/dolphin/browser/provider/y;->c:Landroid/content/Context;

    new-instance v2, Lcom/dolphin/browser/provider/z;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/provider/z;-><init>(Lcom/dolphin/browser/provider/y;)V

    invoke-static {v1, v0, v2}, Lcom/dolphin/browser/core/t;->a(Landroid/content/Context;Landroid/database/Cursor;Lcom/dolphin/browser/core/aa;)V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->g:Landroid/database/Cursor;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 238
    iput p1, p0, Lcom/dolphin/browser/provider/y;->f:I

    .line 239
    return-void
.end method

.method public c()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 145
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v2, "/files/speed_dial"

    invoke-direct {v7, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/io/File;

    const-string v2, "/recordes"

    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/provider/y;->d()V

    .line 155
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/dolphin/browser/util/IOUtilities;->c(Ljava/io/InputStream;)Ljava/io/InputStreamReader;

    move-result-object v0

    .line 157
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 160
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 161
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->d:Landroid/content/ContentResolver;

    .line 163
    :goto_1
    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 168
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v7, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    const-wide/16 v3, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;

    .line 172
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const/4 v2, 0x0

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/dolphin/browser/util/IOUtilities;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 175
    :cond_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    goto :goto_1

    .line 180
    :cond_3
    if-eqz v6, :cond_4

    .line 182
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :cond_4
    :goto_2
    invoke-static {v7}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 177
    :catch_1
    move-exception v0

    .line 178
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 180
    if-eqz v1, :cond_5

    .line 182
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    :cond_5
    :goto_4
    invoke-static {v7}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    goto :goto_0

    .line 183
    :catch_2
    move-exception v0

    .line 184
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 180
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_5
    if-eqz v6, :cond_6

    .line 182
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 187
    :cond_6
    :goto_6
    invoke-static {v7}, Lcom/dolphin/browser/util/IOUtilities;->b(Ljava/io/File;)V

    throw v0

    .line 183
    :catch_3
    move-exception v1

    .line 184
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_6

    .line 180
    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_5

    .line 177
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/dolphin/browser/provider/y;->d:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->SPEED_DIAL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    return-void
.end method
