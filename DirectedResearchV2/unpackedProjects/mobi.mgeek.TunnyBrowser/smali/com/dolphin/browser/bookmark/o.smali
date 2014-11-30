.class public Lcom/dolphin/browser/bookmark/o;
.super Lcom/dolphin/browser/bookmark/j;
.source "BookmarkAdapter.java"


# instance fields
.field protected e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/dolphin/browser/bookmark/j;-><init>(Landroid/content/Context;)V

    .line 44
    iput-wide p2, p0, Lcom/dolphin/browser/bookmark/o;->e:J

    .line 45
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->p()V

    .line 46
    return-void
.end method

.method private a(J)J
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 226
    .line 229
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "folder"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 233
    if-nez v2, :cond_1

    .line 240
    if-eqz v2, :cond_0

    .line 242
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    :cond_0
    :goto_0
    return-wide v6

    .line 237
    :cond_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 240
    :goto_1
    if-eqz v2, :cond_2

    .line 242
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    move-wide v6, v0

    .line 249
    goto :goto_0

    :cond_3
    move-wide v0, v6

    .line 237
    goto :goto_1

    .line 240
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_4

    .line 242
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 245
    :cond_4
    :goto_4
    throw v0

    .line 243
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_4

    .line 240
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method private a(Lcom/dolphin/browser/bookmark/b/c;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_0
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Landroid/graphics/Bitmap;)V

    .line 163
    :goto_0
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/dolphin/browser/bookmark/o;->a:Z

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->b(Z)V

    .line 164
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->d(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->e(Z)V

    .line 167
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Z)V

    .line 168
    return-void

    .line 158
    :cond_2
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/fk;->a()Lmobi/mgeek/TunnyBrowser/fk;

    move-result-object v0

    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/fk;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 163
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Lcom/dolphin/browser/bookmark/b/i;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->a()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e065d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/dolphin/browser/bookmark/b/i;->a(J)V

    .line 178
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/i;->d(Z)V

    .line 180
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/i;->a(Z)V

    .line 181
    return-void
.end method


# virtual methods
.method public a(I)J
    .locals 2

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/dolphin/browser/bookmark/j;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(JZ)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/dolphin/browser/bookmark/o;->b:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->d()I

    move-result v4

    move-wide v1, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/bookmarks/d;->a(Landroid/content/ContentResolver;J[Ljava/lang/String;IZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/content/Context;Lcom/dolphin/browser/bookmark/a/a;)Lcom/dolphin/browser/bookmark/b/a;
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p2}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Lcom/dolphin/browser/bookmark/b/i;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/bookmark/b/i;-><init>(Landroid/content/Context;)V

    .line 131
    :goto_0
    invoke-virtual {v0, p2}, Lcom/dolphin/browser/bookmark/b/a;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/dolphin/browser/bookmark/o;->d:Lcom/dolphin/browser/bookmark/n;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/b/a;->a(Lcom/dolphin/browser/bookmark/n;)V

    .line 134
    return-object v0

    .line 129
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/b/c;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/bookmark/b/c;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method protected a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 77
    if-eqz p1, :cond_3

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 81
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 82
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 83
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 84
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 85
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_1

    const/4 v8, 0x1

    .line 86
    :goto_1
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    const/4 v9, 0x1

    .line 87
    :goto_2
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 89
    new-instance v0, Lcom/dolphin/browser/bookmark/a/a;

    invoke-direct/range {v0 .. v11}, Lcom/dolphin/browser/bookmark/a/a;-><init>(JLjava/lang/String;Ljava/lang/String;[BJZZJ)V

    .line 92
    const-string v1, "touch_icon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 94
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 95
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/bookmark/a/a;->b([B)V

    .line 98
    :cond_0
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 85
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 86
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 102
    :cond_3
    return-object v12
.end method

.method protected a(Landroid/view/View;Lcom/dolphin/browser/bookmark/a/a;)V
    .locals 1

    .prologue
    .line 139
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/b/c;

    if-eqz v0, :cond_1

    .line 140
    check-cast p1, Lcom/dolphin/browser/bookmark/b/c;

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmark/o;->a(Lcom/dolphin/browser/bookmark/b/c;Lcom/dolphin/browser/bookmark/a/a;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    instance-of v0, p1, Lcom/dolphin/browser/bookmark/b/i;

    if-eqz v0, :cond_0

    .line 142
    check-cast p1, Lcom/dolphin/browser/bookmark/b/i;

    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/bookmark/o;->a(Lcom/dolphin/browser/bookmark/b/i;Lcom/dolphin/browser/bookmark/a/a;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 207
    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/dolphin/browser/bookmark/o;->e:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 213
    if-nez v1, :cond_0

    .line 219
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    .line 222
    :goto_0
    return-object v6

    .line 216
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 219
    :goto_1
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    move-object v6, v0

    .line 222
    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 216
    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v6}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_2
.end method

.method public d()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 255
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/o;->e:J

    return-wide v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/o;->e:J

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/bookmark/o;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 186
    invoke-super {p0}, Lcom/dolphin/browser/bookmark/j;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 190
    :cond_1
    invoke-super {p0, p1}, Lcom/dolphin/browser/bookmark/j;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/dolphin/browser/bookmark/j;->b(I)Lcom/dolphin/browser/bookmark/a/a;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/bookmark/o;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmark/a/a;)Lcom/dolphin/browser/bookmark/b/a;

    move-result-object v1

    .line 118
    invoke-virtual {p0, v1, v0}, Lcom/dolphin/browser/bookmark/o;->a(Landroid/view/View;Lcom/dolphin/browser/bookmark/a/a;)V

    .line 119
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->g()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/bookmark/b/a;->c(Z)V

    .line 121
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x2

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 277
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/br;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->b()Ljava/util/List;

    move-result-object v3

    .line 293
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    .line 297
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 298
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 299
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 300
    new-instance v4, Lcom/dolphin/browser/bookmark/br;

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->c()Z

    move-result v0

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/dolphin/browser/bookmark/br;-><init>(JLjava/lang/String;Z)V

    .line 302
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 304
    goto :goto_0
.end method

.method protected q()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/o;->e:J

    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/o;->o()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dolphin/browser/bookmark/o;->a(JZ)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/o;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 64
    if-eqz v0, :cond_0

    .line 66
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected t()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    return-object v0
.end method
