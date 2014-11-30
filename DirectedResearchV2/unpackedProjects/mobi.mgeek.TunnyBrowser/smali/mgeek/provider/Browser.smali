.class public Lmgeek/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_BOOKMARKS_CHANGED:Ljava/lang/String; = "mobi.mgeek.tunnybrowser.action.bookmarks_changed"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final BOOKMARKS_BAR_ID:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final BOOKMARKS_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DEFAULT_BOOKMARKS_ORDER:Ljava/lang/String; = "_order DESC"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DEFAULT_FOLDERS_ORDER:Ljava/lang/String; = "title COLLATE UNICODE ASC"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FOLDERS_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FOLDER_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FOLDER_PROJECTION_ID_INDEX:I = 0x0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FOLDER_PROJECTION_PARENT_INDEX:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FOLDER_PROJECTION_TITLE_INDEX:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_BOOKMARK_INDEX:I = 0x4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_DATE_INDEX:I = 0x3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_FAVICON_INDEX:I = 0x6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_FOLDER_INDEX:I = 0xa
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_ID_INDEX:I = 0x0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_LABEL_INDEX:I = 0x9
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_ORDER_INDEX:I = 0xb
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_THUMBNAIL_INDEX:I = 0x7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_TITLE_INDEX:I = 0x5
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_TOUCH_ICON_INDEX:I = 0x8
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_URL_INDEX:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_PROJECTION_VISITS_INDEX:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final IS_FOLDER:Ljava/lang/String; = "is_folder"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final OTHER_BOOKMARKS_ID:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ROOT_FOLDER_ID:I = 0x0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SEARCHES_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SEARCHES_PROJECTION_DATE_INDEX:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SEARCHES_PROJECTION_SEARCH_INDEX:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SEARCHES_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SIMPLE_BOOKMARK_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SIMPLE_BOOKMARK_PROJECTION_FAVICON_INDEX:I = 0x3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SIMPLE_BOOKMARK_PROJECTION_FORDER_INDEX:I = 0x4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SIMPLE_BOOKMARK_PROJECTION_ID_INDEX:I = 0x0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SIMPLE_BOOKMARK_PROJECTION_ORDER_INDEX:I = 0x5
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SIMPLE_BOOKMARK_PROJECTION_TITLE_INDEX:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SIMPLE_BOOKMARK_PROJECTION_URL_INDEX:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:[Ljava/lang/String;

.field public static final f:Landroid/net/Uri;

.field public static final g:[Ljava/lang/String;

.field private static final h:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bookmarks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "folders"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->a:Landroid/net/Uri;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "all_bookmarks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->b:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.mgeek.android.DolphinBrowser.Browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->c:Landroid/net/Uri;

    .line 37
    const-string v0, "content://browser/search_suggest_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->d:Landroid/net/Uri;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "label"

    aput-object v2, v0, v1

    sput-object v0, Lmgeek/provider/Browser;->e:[Ljava/lang/String;

    .line 73
    const-string v0, "inline:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->f:Landroid/net/Uri;

    .line 144
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "visits"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "bookmark"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "label"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "folder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_order"

    aput-object v2, v0, v1

    sput-object v0, Lmgeek/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    .line 178
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "favicon"

    aput-object v1, v0, v6

    const-string v1, "folder"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_order"

    aput-object v2, v0, v1

    sput-object v0, Lmgeek/provider/Browser;->SIMPLE_BOOKMARK_PROJECTION:[Ljava/lang/String;

    .line 200
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "parent"

    aput-object v1, v0, v5

    sput-object v0, Lmgeek/provider/Browser;->FOLDER_PROJECTION:[Ljava/lang/String;

    .line 213
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    sput-object v0, Lmgeek/provider/Browser;->g:[Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "searches"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmgeek/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    .line 228
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    sput-object v0, Lmgeek/provider/Browser;->SEARCHES_PROJECTION:[Ljava/lang/String;

    .line 251
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mobi.mgeek.tunnybrowser.action.bookmarks_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmgeek/provider/Browser;->h:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    return-void
.end method

.method public static final addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    return-void
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 319
    invoke-static {p0}, Lcom/dolphin/browser/provider/Browser;->canClearHistory(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 330
    invoke-static {p0}, Lcom/dolphin/browser/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 331
    return-void
.end method

.method public static final clearSearches(Landroid/content/ContentResolver;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 377
    return-void
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 355
    invoke-static {p0, p1}, Lcom/dolphin/browser/provider/Browser;->deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 344
    invoke-static {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/provider/Browser;->deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V

    .line 345
    return-void
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 294
    invoke-static {p0}, Lcom/dolphin/browser/provider/Browser;->getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final isBookmark(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dolphin/browser/provider/Browser;->isBookmark(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final notifyBookmarksChanged(Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 400
    sget-object v0, Lmgeek/provider/Browser;->h:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    return-void
.end method

.method public static final requestAllIcons(Landroid/content/ContentResolver;Ljava/lang/String;Lcom/dolphin/browser/core/WebIconDatabase$IconListener;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    return-void
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 263
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 308
    invoke-static {p0}, Lcom/dolphin/browser/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 309
    return-void
.end method

.method public static final updateVisitedHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 281
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    invoke-static {p0, p1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 284
    :cond_0
    return-void
.end method
