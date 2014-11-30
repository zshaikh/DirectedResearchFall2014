.class public Lcom/dolphin/browser/bookmark/bt;
.super Ljava/lang/Object;
.source "BookmarkUtil.java"


# static fields
.field private static b:Lcom/dolphin/browser/bookmark/bt;


# instance fields
.field private a:Ljava/util/Calendar;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/bookmark/bt;->a:Ljava/util/Calendar;

    .line 37
    return-void
.end method

.method public static a()Lcom/dolphin/browser/bookmark/bt;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/dolphin/browser/bookmark/bt;->b:Lcom/dolphin/browser/bookmark/bt;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/dolphin/browser/bookmark/bt;

    invoke-direct {v0}, Lcom/dolphin/browser/bookmark/bt;-><init>()V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/dolphin/browser/bookmark/bt;->b:Lcom/dolphin/browser/bookmark/bt;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0}, Lcom/dolphin/browser/bookmark/bt;->b(Landroid/content/Context;)Lcom/dolphin/browser/bookmark/b/j;

    move-result-object v0

    .line 120
    invoke-static {v0, p1}, Lcom/dolphin/browser/bookmark/bt;->a(Lcom/dolphin/browser/bookmark/b/j;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method private static a(Lcom/dolphin/browser/bookmark/b/j;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/bookmark/b/j;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    if-nez p0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 132
    :goto_0
    return-object v0

    .line 131
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-static {v0, p0, p1}, Lcom/dolphin/browser/bookmark/bt;->a(Ljava/util/List;Lcom/dolphin/browser/bookmark/b/j;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Lcom/dolphin/browser/bookmark/b/j;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;",
            "Lcom/dolphin/browser/bookmark/b/j;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/b/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Lcom/dolphin/browser/bookmark/bt;->b(Lcom/dolphin/browser/bookmark/b/j;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    return-object p0

    .line 143
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/b/j;->f()Ljava/util/List;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_0

    .line 149
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 150
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/b/j;

    .line 151
    invoke-static {p0, v0, p2}, Lcom/dolphin/browser/bookmark/bt;->a(Ljava/util/List;Lcom/dolphin/browser/bookmark/b/j;Ljava/util/List;)Ljava/util/List;

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/dolphin/browser/bookmark/b/j;)V
    .locals 8

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x1

    .line 198
    invoke-static {}, Lcom/dolphin/browser/bookmarks/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    new-instance v0, Lcom/dolphin/browser/bookmark/b/j;

    const-wide/16 v1, -0xa

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e00e5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/bookmark/b/j;-><init>(JJLjava/lang/String;II)V

    .line 205
    invoke-static {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->b(Landroid/content/Context;Lcom/dolphin/browser/bookmark/b/j;)I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/j;->a(Lcom/dolphin/browser/bookmark/b/j;)V

    .line 209
    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/b/j;

    const-wide/16 v1, -0xb

    sget-object v5, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v5, 0x7f0e0278

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/bookmark/b/j;-><init>(JJLjava/lang/String;II)V

    .line 215
    invoke-static {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->b(Landroid/content/Context;Lcom/dolphin/browser/bookmark/b/j;)I

    move-result v1

    if-lez v1, :cond_1

    .line 216
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/j;->a(Lcom/dolphin/browser/bookmark/b/j;)V

    .line 219
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    const/16 v0, 0xb

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 65
    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 66
    const/16 v0, 0xd

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 67
    const/16 v0, 0xe

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 68
    return-void
.end method

.method public static a(I)Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 96
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v1, v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 101
    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    .line 107
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 109
    :goto_1
    return v0

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Lcom/dolphin/browser/bookmark/b/j;)I
    .locals 13

    .prologue
    .line 222
    const/4 v6, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/b/j;->a()J

    move-result-wide v0

    .line 225
    const-wide/16 v2, -0xa

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0xb

    cmp-long v2, v0, v2

    if-nez v2, :cond_3

    .line 227
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v8, v0

    .line 230
    :goto_0
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/b/j;->d()I

    move-result v11

    .line 231
    invoke-virtual {p1}, Lcom/dolphin/browser/bookmark/b/j;->e()I

    move-result v7

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "title COLLATE UNICODE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 238
    if-eqz v12, :cond_1

    move v10, v6

    .line 239
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 241
    const/4 v0, 0x1

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 242
    new-instance v0, Lcom/dolphin/browser/bookmark/b/j;

    add-int/lit8 v6, v11, 0x1

    move-wide v3, v8

    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/bookmark/b/j;-><init>(JJLjava/lang/String;II)V

    .line 244
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/bookmark/b/j;->a(Lcom/dolphin/browser/bookmark/b/j;)V

    .line 245
    invoke-static {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->b(Landroid/content/Context;Lcom/dolphin/browser/bookmark/b/j;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v10

    move v10, v0

    .line 246
    goto :goto_1

    :cond_1
    move v10, v6

    .line 249
    :cond_2
    invoke-static {v12}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 251
    return v10

    :cond_3
    move-wide v8, v0

    goto :goto_0
.end method

.method private b(I)J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bt;->a:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->a(Ljava/util/Calendar;)V

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bt;->a:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bt;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static b(Landroid/content/Context;)Lcom/dolphin/browser/bookmark/b/j;
    .locals 8

    .prologue
    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    .line 174
    new-instance v0, Lcom/dolphin/browser/bookmark/b/j;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e00c4

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-wide v3, v1

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/bookmark/b/j;-><init>(JJLjava/lang/String;II)V

    .line 179
    invoke-static {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->a(Landroid/content/Context;Lcom/dolphin/browser/bookmark/b/j;)V

    .line 180
    invoke-static {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->b(Landroid/content/Context;Lcom/dolphin/browser/bookmark/b/j;)I

    .line 182
    return-object v0
.end method

.method private static b(Lcom/dolphin/browser/bookmark/b/j;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/bookmark/b/j;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/bookmark/a/a;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 159
    if-nez p1, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    .line 163
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 164
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/bookmark/a/a;

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/b/j;->a()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/a/a;->a()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 166
    const/4 v2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public b()J
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 44
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 48
    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->b(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()J
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bt;->a:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/bookmark/bt;->a(Ljava/util/Calendar;)V

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bt;->a:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bt;->a:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method
