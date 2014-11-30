.class public Lcom/dolphin/browser/bookmark/bu;
.super Lcom/dolphin/browser/bookmark/o;
.source "ChromeExtensionAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/bookmark/o;-><init>(Landroid/content/Context;J)V

    .line 15
    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public f()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0xa

    const/4 v3, 0x0

    .line 28
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/bu;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/dolphin/browser/bookmark/bu;->e:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "folder"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 32
    if-nez v2, :cond_0

    .line 42
    :goto_0
    return-wide v6

    .line 36
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 38
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v0

    if-nez v3, :cond_1

    move-wide v0, v6

    .line 41
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide v6, v0

    .line 42
    goto :goto_0

    :cond_2
    move-wide v0, v6

    .line 36
    goto :goto_1
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method
