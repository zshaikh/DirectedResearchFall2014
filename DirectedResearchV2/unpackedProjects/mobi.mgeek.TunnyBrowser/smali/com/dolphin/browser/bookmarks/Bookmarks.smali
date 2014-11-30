.class public Lcom/dolphin/browser/bookmarks/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/bookmarks/Bookmarks;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLandroid/graphics/Bitmap;Z)V
    .locals 13
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    move/from16 v0, p5

    int-to-long v6, v0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p6

    move/from16 v11, p9

    invoke-static/range {v1 .. v12}, Lcom/dolphin/browser/bookmarks/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[BZZ)V

    .line 52
    return-void
.end method

.method public static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ[BZ)V
    .locals 13
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    move/from16 v0, p5

    int-to-long v6, v0

    const/4 v10, 0x0

    const/4 v12, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p6

    move/from16 v11, p9

    invoke-static/range {v1 .. v12}, Lcom/dolphin/browser/bookmarks/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[BZZ)V

    .line 77
    return-void
.end method

.method public static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[BZZ)V
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 104
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p5

    move/from16 v5, p11

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;

    .line 105
    if-eqz p0, :cond_0

    .line 106
    sget v0, Lcom/dolphin/browser/core/R$string;->added_to_bookmarks:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    :cond_0
    return-void
.end method

.method public static removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .locals 7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 125
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v1, "%s = ? AND %s = ?"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "url"

    aput-object v3, v2, v5

    const-string v3, "folder"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    aput-object p2, v2, v5

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/core/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 133
    :cond_0
    if-eqz p0, :cond_1

    .line 134
    sget v0, Lcom/dolphin/browser/core/R$string;->removed_from_bookmarks:I

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_1
    return-void
.end method

.method public static updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    invoke-static {p0, p1, p2, p3}, Lcom/dolphin/browser/provider/Browser;->updateFaviconAsync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 183
    return-void
.end method

.method public static updateBookmarkFaviconAsync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    invoke-static {p0, p1, p2, p3}, Lcom/dolphin/browser/provider/Browser;->updateFaviconAsync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 167
    return-void
.end method

.method public static urlHasAcceptableScheme(Ljava/lang/String;)Z
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 140
    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 144
    :goto_1
    sget-object v2, Lcom/dolphin/browser/bookmarks/Bookmarks;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 145
    sget-object v2, Lcom/dolphin/browser/bookmarks/Bookmarks;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    const/4 v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
