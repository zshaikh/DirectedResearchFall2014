.class public Lcom/dolphin/browser/bookmark/p;
.super Ljava/lang/Object;
.source "BookmarkAdapterFactory.java"


# direct methods
.method public static a(Landroid/content/Context;J)Lcom/dolphin/browser/u/a;
    .locals 2

    .prologue
    .line 15
    const-wide/16 v0, -0x9

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/dolphin/browser/bookmark/by;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/by;-><init>(Landroid/content/Context;)V

    .line 18
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/dolphin/browser/bookmark/cq;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/cq;-><init>(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;J)Lcom/dolphin/browser/bookmark/j;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/dolphin/browser/bookmark/cg;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/cg;-><init>(Landroid/content/Context;)V

    .line 53
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-wide/16 v0, -0x3

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lcom/dolphin/browser/bookmark/ch;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/ch;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 28
    :cond_1
    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 29
    new-instance v0, Lcom/dolphin/browser/bookmark/ci;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/ci;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 30
    :cond_2
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 31
    new-instance v0, Lcom/dolphin/browser/bookmark/ce;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/ce;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :cond_3
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 33
    new-instance v0, Lcom/dolphin/browser/bookmark/cd;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/cd;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 34
    :cond_4
    const-wide/16 v0, -0x7

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 35
    new-instance v0, Lcom/dolphin/browser/bookmark/cf;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/cf;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 36
    :cond_5
    const-wide/16 v0, -0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 37
    new-instance v0, Lcom/dolphin/browser/bookmark/co;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/bookmark/co;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_6
    const-wide/16 v0, -0xa

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 39
    new-instance v0, Lcom/dolphin/browser/bookmark/bv;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/bv;-><init>(Landroid/content/Context;J)V

    goto :goto_0

    .line 40
    :cond_7
    const-wide/16 v0, -0xb

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 41
    new-instance v0, Lcom/dolphin/browser/bookmark/ca;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/ca;-><init>(Landroid/content/Context;J)V

    goto :goto_0

    .line 42
    :cond_8
    cmp-long v0, p1, v2

    if-lez v0, :cond_b

    .line 43
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/bookmark/p;->c(Landroid/content/Context;J)I

    move-result v0

    .line 44
    const/4 v1, 0x1

    if-ne v1, v0, :cond_9

    .line 45
    new-instance v0, Lcom/dolphin/browser/bookmark/bu;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/bu;-><init>(Landroid/content/Context;J)V

    goto :goto_0

    .line 46
    :cond_9
    const/4 v1, 0x2

    if-ne v1, v0, :cond_a

    .line 47
    new-instance v0, Lcom/dolphin/browser/bookmark/bz;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/bz;-><init>(Landroid/content/Context;J)V

    goto :goto_0

    .line 49
    :cond_a
    new-instance v0, Lcom/dolphin/browser/bookmark/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/bookmark/o;-><init>(Landroid/content/Context;J)V

    goto :goto_0

    .line 53
    :cond_b
    new-instance v0, Lcom/dolphin/browser/bookmark/bo;

    invoke-direct {v0, p0, v2, v3}, Lcom/dolphin/browser/bookmark/bo;-><init>(Landroid/content/Context;J)V

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;J)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 58
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v6

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 65
    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method
