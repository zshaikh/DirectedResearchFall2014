.class public Lcom/dolphin/browser/bookmarks/m;
.super Lcom/dolphin/browser/bookmarks/n;
.source "MiniENBookmarkImporter.java"


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
    .line 29
    const-string v0, "content://com.dolphin.browser.bookmarks/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmarks/m;->d:Landroid/net/Uri;

    .line 30
    const/4 v0, 0x3

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

    sput-object v0, Lcom/dolphin/browser/bookmarks/m;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 49
    const-string v0, "com.dolphin.browser.bookmarks"

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmarks/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    const-string v0, "type = 1"

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/m;->f:Ljava/lang/String;

    .line 42
    const-string v0, "_order ASC"

    iput-object v0, p0, Lcom/dolphin/browser/bookmarks/m;->g:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method protected a(J)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/m;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/bookmarks/m;->d:Landroid/net/Uri;

    sget-object v2, Lcom/dolphin/browser/bookmarks/m;->e:[Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/bookmarks/m;->f:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dolphin/browser/bookmarks/m;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
