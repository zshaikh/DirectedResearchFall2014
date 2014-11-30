.class public Lcom/dolphin/browser/bookmark/cq;
.super Lcom/dolphin/browser/u/a;
.source "TabAdapter.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/dolphin/browser/u/a;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/cq;->a:Ljava/lang/String;

    .line 28
    iput-wide p2, p0, Lcom/dolphin/browser/bookmark/cq;->b:J

    .line 29
    return-void
.end method

.method private a([B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 132
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-static {p1, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private a(Lcom/dolphin/browser/bookmark/b/c;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cq;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    invoke-direct {p0, v1}, Lcom/dolphin/browser/bookmark/cq;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Landroid/graphics/Bitmap;)V

    .line 122
    :goto_0
    invoke-virtual {p1, v2}, Lcom/dolphin/browser/bookmark/b/c;->d(Z)V

    .line 123
    invoke-virtual {p1, v2}, Lcom/dolphin/browser/bookmark/b/c;->e(Z)V

    .line 125
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/b/c;->a()V

    .line 126
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v0, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 34
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "deviceid"

    aput-object v0, v2, v7

    const-string v0, "name"

    aput-object v0, v2, v10

    .line 37
    const-string v3, "_id == ?"

    .line 38
    const-wide/16 v0, -0xd

    iget-wide v4, p0, Lcom/dolphin/browser/bookmark/cq;->b:J

    sub-long v8, v0, v4

    .line 39
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cq;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->OTHER_DEVICES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 48
    if-nez v7, :cond_2

    .line 74
    if-eqz v7, :cond_0

    .line 76
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    move-object v0, v6

    .line 83
    :cond_1
    :goto_1
    return-object v0

    .line 51
    :cond_2
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 52
    const-string v0, "deviceid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/bookmark/cq;->a:Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->TABS_URI:Landroid/net/Uri;

    const v2, 0x7fffffff

    invoke-static {v1, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 59
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "favicon"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "folder"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "0 ASis_folder"

    aput-object v4, v2, v3

    .line 67
    const-string v3, "deviceid == ?"

    .line 69
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 70
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/cq;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 74
    :goto_2
    if-eqz v7, :cond_1

    .line 76
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 77
    :catch_0
    move-exception v1

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_3

    .line 76
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 79
    :cond_3
    :goto_4
    throw v0

    .line 77
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto :goto_4

    .line 74
    :catchall_1
    move-exception v0

    move-object v6, v7

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_2
.end method

.method public b()J
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, -0x9

    return-wide v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Lcom/dolphin/browser/bookmark/b/c;

    invoke-direct {p0, p1, p3}, Lcom/dolphin/browser/bookmark/cq;->a(Lcom/dolphin/browser/bookmark/b/c;Landroid/database/Cursor;)V

    .line 98
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/dolphin/browser/bookmark/b/c;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/bookmark/b/c;-><init>(Landroid/content/Context;)V

    .line 103
    return-object v0
.end method
