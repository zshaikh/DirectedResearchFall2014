.class public Lcom/dolphin/browser/bookmarks/p;
.super Lcom/dolphin/browser/bookmarks/h;
.source "TunnyBookmarkImporter.java"


# static fields
.field private static final d:Landroid/net/Uri;

.field private static e:[Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const-string v0, "content://dolphinbrowserhd/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmarks/p;->d:Landroid/net/Uri;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_folder"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmarks/p;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    const-string v0, "dolphinbrowserhd"

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmarks/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const-string v0, "folder = ?"

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/p;->f:Ljava/lang/String;

    .line 46
    const-string v0, "is_folder DESC, _order DESC"

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/p;->g:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected a(J)Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 67
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 68
    const-wide/16 p1, 0x0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/p;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/bookmarks/p;->d:Landroid/net/Uri;

    sget-object v2, Lcom/dolphin/browser/bookmarks/p;->e:[Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/bookmarks/p;->f:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/dolphin/browser/bookmarks/p;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
