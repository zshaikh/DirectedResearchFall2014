.class public Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;
.super Lcom/dolphin/browser/bookmarks/n;
.source "TucuxiBookmarkImporter.java"


# static fields
.field private static final d:Landroid/net/Uri;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "content://com.mgeek.android.DolphinBrowser.Browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;->d:Landroid/net/Uri;

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visits"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bookmark"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "label"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/bookmarks/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected a(J)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;->d:Landroid/net/Uri;

    sget-object v2, Lcom/dolphin/browser/bookmarks/TucuxiBookmarkImporter;->e:[Ljava/lang/String;

    const-string v3, "bookmark == 1"

    const/4 v4, 0x0

    const-string v5, "date ASC,visits ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
