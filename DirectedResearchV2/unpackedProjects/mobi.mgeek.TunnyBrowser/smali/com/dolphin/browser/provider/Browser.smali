.class public Lcom/dolphin/browser/provider/Browser;
.super Ljava/lang/Object;
.source "Browser.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final ACTION_CHILD_ACTIVITY:Ljava/lang/String; = "com.dolphin.browser.action.CHILD_ACTIVITY"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ACTION_EDIT_BOOKMARK:Ljava/lang/String; = "com.dolphin.browser.action.EDIT_BOOKMARK"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ACTION_SHOW_TABS:Ljava/lang/String; = "com.dolphin.browser.action.SHOW_TABS"
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

.field public static final COMBINED_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final CONTENT_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DEFAULT_BOOKMARKS_ORDER:Ljava/lang/String; = "is_folder DESC, _order DESC, title COLLATE UNICODE ASC"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DEFAULT_FOLDERS_ORDER:Ljava/lang/String; = "title COLLATE UNICODE ASC"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final DOLPHIN_BOOKMARKS_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final EXTRA_ACTIVITY_ID:Ljava/lang/String; = "activity_id"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.android.browser.application_id"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final EXTRA_CHILD_INTENT:Ljava/lang/String; = "child_intent"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final EXTRA_NEW_TAB:Ljava/lang/String; = "new_tab"
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FOLDERS_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARKY_PROJECTION_IS_FOLDER_INDEX:I = 0x7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION:[Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_CREATED_INDEX:I = 0x5
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_DATE_INDEX:I = 0x4
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_DELETED_INDEX:I = 0x8
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_FAVICON_INDEX:I = 0x9
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_ID_INDEX:I = 0x0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_ORDER_INDEX:I = 0x6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_PARENT_INDEX:I = 0x3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_THUMBNAIL_INDEX:I = 0xa
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_TITLE_INDEX:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_TOUCH_ICON_INDEX:I = 0xb
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final FULL_BOOKMARK_PROJECTION_URL_INDEX:I = 0x2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final HISTORY_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final IMAGES_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final OTHER_BOOKMARKS_ID:I = 0x1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final OTHER_DEVICES_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final RECENT_TABS_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final REORDER_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final ROOT_FOLDER_ID:I
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SAVED_PAGES_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SPEED_DIAL_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final SYSTEM_SUGESSTION_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final TABS_URI:Landroid/net/Uri;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field

.field public static final a:Landroid/net/Uri;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field private static i:Lcom/dolphin/browser/provider/l;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static m:Z

.field private static final n:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "folder"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "created"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_order"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_folder"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "favicon"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "thumbnail"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "touch_icon"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/provider/Browser;->FULL_BOOKMARK_PROJECTION:[Ljava/lang/String;

    .line 328
    new-instance v0, Lcom/dolphin/browser/provider/l;

    invoke-direct {v0}, Lcom/dolphin/browser/provider/l;-><init>()V

    sput-object v0, Lcom/dolphin/browser/provider/Browser;->i:Lcom/dolphin/browser/provider/l;

    .line 333
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getBrowserAuthority()Ljava/lang/String;

    move-result-object v0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->CONTENT_URI:Landroid/net/Uri;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bookmarks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bookmarks/folders"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "reorder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->REORDER_URI:Landroid/net/Uri;

    .line 343
    const-string v1, "content://com.mgeek.android.DolphinBrowser.Browser/bookmarks"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->DOLPHIN_BOOKMARKS_URI:Landroid/net/Uri;

    .line 346
    const-string v1, "content://browser/search_suggest_query"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->SYSTEM_SUGESSTION_URI:Landroid/net/Uri;

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "history"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "most_visited"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->IMAGES_URI:Landroid/net/Uri;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "searches"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->h:Landroid/net/Uri;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/combined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->COMBINED_URI:Landroid/net/Uri;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/speed_dial"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->SPEED_DIAL_URI:Landroid/net/Uri;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved_pages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->SAVED_PAGES_URI:Landroid/net/Uri;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "other_devices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->OTHER_DEVICES_URI:Landroid/net/Uri;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tabs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->TABS_URI:Landroid/net/Uri;

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "security_cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->b:Landroid/net/Uri;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "security_white_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->c:Landroid/net/Uri;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "addon_update_table"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->d:Landroid/net/Uri;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "common_white_list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->e:Landroid/net/Uri;

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "top_sites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->f:Landroid/net/Uri;

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "site_color"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/dolphin/browser/provider/Browser;->g:Landroid/net/Uri;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recent_tabs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    .line 1726
    const-string v0, "(?i)((?:http|https|file|dolphingame):\\/\\/|(?:inline|data|about|content|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/provider/Browser;->j:Ljava/util/regex/Pattern;

    .line 1733
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "www.youtube.com/watch"

    aput-object v1, v0, v3

    const-string v1, "www.youtube.com/v/"

    aput-object v1, v0, v4

    const-string v1, "m.youtube.com/watch"

    aput-object v1, v0, v5

    const-string v1, "m.youtube.com/#/watch"

    aput-object v1, v0, v6

    const-string v1, "m.youtube.com/v/"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "m.youtube.com/#/v/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dolphin/browser/provider/Browser;->k:[Ljava/lang/String;

    .line 1742
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "market.android.com/search"

    aput-object v1, v0, v3

    const-string v1, "market.android.com/details"

    aput-object v1, v0, v4

    const-string v1, "www.google.com/m/products/scan"

    aput-object v1, v0, v5

    const-string v1, "play.google.com/store"

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/provider/Browser;->l:[Ljava/lang/String;

    .line 1777
    sput-boolean v3, Lcom/dolphin/browser/provider/Browser;->m:Z

    .line 1979
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "type_visit"

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/provider/Browser;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 463
    const/4 v6, 0x0

    .line 464
    if-nez p0, :cond_0

    .line 473
    :goto_0
    return v6

    .line 468
    :cond_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v3, "is_folder= 0"

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_1

    .line 470
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 471
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    move v6, v0

    .line 473
    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/ContentResolver;JJ)I
    .locals 6

    .prologue
    .line 853
    invoke-static {p0, p3, p4}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 854
    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JJI)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/ContentResolver;JJI)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 819
    if-nez p0, :cond_0

    .line 820
    const/4 v0, -0x1

    .line 841
    :goto_0
    return v0

    .line 823
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 824
    const-string v1, "folder"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    const-string v1, "type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    const-string v1, "_order"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 828
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 829
    if-lez v1, :cond_1

    .line 831
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v1

    .line 832
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 833
    const-string v3, "folder"

    invoke-virtual {v2, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 834
    const-string v3, "_order"

    const-string v4, "_order"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 835
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onMoved(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 836
    :catch_0
    move-exception v0

    .line 837
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 841
    :cond_1
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 11

    .prologue
    const/4 v9, -0x3

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 554
    if-eqz p0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    :cond_0
    const/4 v0, -0x1

    .line 600
    :goto_0
    return v0

    .line 559
    :cond_1
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "folder"

    aput-object v0, v2, v8

    const-string v3, "_id= ?"

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 563
    const-wide/16 v0, 0x0

    .line 564
    if-eqz v2, :cond_2

    .line 565
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 566
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide v6, v0

    .line 568
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 573
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "title=? AND folder=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p3, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_4

    .line 579
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 580
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 581
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    move v0, v9

    .line 570
    goto :goto_0

    .line 583
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 586
    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 587
    const-string v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 589
    if-lez v0, :cond_5

    .line 591
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 592
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 593
    const-string v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v8

    .line 598
    goto/16 :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    move v0, v9

    .line 600
    goto/16 :goto_0

    :cond_6
    move-wide v6, v0

    goto :goto_1
.end method

.method private static a(Landroid/content/ContentResolver;JZ)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 617
    if-nez p0, :cond_0

    .line 618
    const/4 v0, -0x1

    .line 659
    :goto_0
    return v0

    .line 622
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 627
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 629
    :cond_1
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 630
    invoke-static {p0, v1, v2, v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JZ)I

    .line 631
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 635
    :cond_2
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 638
    if-nez p3, :cond_3

    .line 639
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 649
    :goto_1
    if-lez v0, :cond_4

    .line 651
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 653
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v6

    .line 657
    goto :goto_0

    .line 643
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 644
    const-string v1, "deleted"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    const-string v1, "sync_status"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 646
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 654
    :catch_0
    move-exception v0

    .line 655
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 659
    :cond_4
    const/4 v0, -0x3

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 673
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    const-wide/16 v0, -0x1

    .line 705
    :goto_0
    return-wide v0

    .line 677
    :cond_1
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "title=? AND folder=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 682
    if-eqz v2, :cond_3

    .line 683
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 685
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 688
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 690
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 691
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v1, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 693
    const-string v1, "folder"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 694
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_4

    .line 696
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 698
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v2

    .line 699
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onCreated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 700
    :catch_0
    move-exception v2

    .line 701
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 705
    :cond_4
    const-wide/16 v0, -0x3

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 723
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    const-wide/16 v0, -0x1

    .line 756
    :goto_0
    return-wide v0

    .line 727
    :cond_1
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v3, "title=? AND folder=? AND type=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_3

    .line 734
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 735
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 736
    const-wide/16 v0, -0x2

    goto :goto_0

    .line 738
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 740
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 741
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v1, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 743
    const-string v1, "folder"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 744
    const-string v1, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_4

    .line 747
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 749
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v2

    .line 750
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onCreated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v2

    .line 752
    invoke-static {v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 756
    :cond_4
    const-wide/16 v0, -0x3

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZI)Landroid/net/Uri;
    .locals 10

    .prologue
    .line 404
    const-string v0, "Browser"

    const-string v1, "addBookmark url = %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 406
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    :cond_0
    const/4 v0, 0x0

    .line 459
    :cond_1
    :goto_0
    return-object v0

    .line 410
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 411
    if-eqz p5, :cond_5

    move-wide v6, v8

    .line 416
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    .line 417
    const-wide/16 p3, 0x0

    .line 419
    :cond_3
    const-wide/16 v0, 0x3

    cmp-long v0, v0, p3

    if-nez v0, :cond_6

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->SPEED_DIAL_URI:Landroid/net/Uri;

    .line 420
    :goto_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "%s = ? AND %s = ? AND %s = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "url"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "folder"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "type"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 426
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 427
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 429
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 430
    const-string v0, "date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    const-string v0, "_order"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    const-string v0, "title"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 435
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 453
    :goto_3
    if-eqz v2, :cond_4

    .line 454
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 456
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/dolphin/browser/core/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_5
    neg-long v0, v8

    move-wide v6, v0

    goto/16 :goto_1

    .line 419
    :cond_6
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    goto/16 :goto_2

    .line 437
    :cond_7
    const-string v0, "created"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 438
    const-string v0, "date"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 439
    const-string v0, "is_folder"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    const-string v0, "_order"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 441
    const-string v0, "folder"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 442
    const-string v0, "title"

    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v0, "url"

    invoke-virtual {v3, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "type"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    invoke-virtual {p0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 447
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 448
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onCreated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 451
    goto :goto_3

    .line 449
    :catch_0
    move-exception v0

    .line 450
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1711
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;II)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1719
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1715
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1723
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->FOLDERS_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/net/Uri;Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 500
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "sync_id"

    aput-object v0, v2, v6

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 504
    const-string v0, ""

    .line 505
    if-eqz v1, :cond_1

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_1
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 901
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 902
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 904
    :cond_0
    return-object p0
.end method

.method public static final a(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 767
    const-string v0, "folder"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "type"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    const-string v0, "folder"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 769
    invoke-static {p0, v0, v1}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v0

    .line 770
    const-string v1, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    :cond_0
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p3, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 774
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 775
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 776
    const-string v2, "title"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 777
    const-string v2, "title"

    const-string v3, "title"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :cond_1
    const-string v2, "url"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    const-string v2, "url"

    const-string v3, "url"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_2
    const-string v2, "folder"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 783
    const-string v2, "folder"

    const-string v3, "folder"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    return-void

    .line 786
    :catch_0
    move-exception v0

    .line 787
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;II)V
    .locals 8

    .prologue
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1098
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "visits"

    aput-object v0, v2, v6

    const-string v3, "url = ? or url = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v7

    invoke-static {p4}, Lcom/dolphin/browser/util/cn;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1101
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1102
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-le v1, p6, :cond_0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result p6

    .line 1103
    :cond_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1105
    :cond_1
    if-eqz v0, :cond_2

    .line 1106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1108
    :cond_2
    invoke-static {p0, p3, p4, p5, p6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1109
    return-void
.end method

.method private static a(Landroid/content/ContentResolver;Landroid/database/Cursor;I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1358
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v2

    move v0, v1

    .line 1360
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1361
    sget-object v3, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1362
    invoke-virtual {v2}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1363
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/core/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 1365
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1370
    :cond_1
    return-void

    .line 1360
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1242
    new-instance v0, Lcom/dolphin/browser/provider/b;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/provider/b;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    .line 1274
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1152
    new-instance v0, Lcom/dolphin/browser/provider/i;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/provider/i;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    .line 1158
    return-void
.end method

.method static synthetic a(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1161
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->i:Lcom/dolphin/browser/provider/l;

    new-instance v1, Lcom/dolphin/browser/provider/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/provider/j;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/l;->execute(Ljava/lang/Runnable;)V

    .line 1167
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 1113
    new-instance v0, Lcom/dolphin/browser/provider/h;

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/provider/h;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    .line 1148
    return-void
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 980
    :try_start_0
    invoke-static {p3}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 981
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 982
    const-string v2, "favicon"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 983
    invoke-static {p0, p2, v1}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 984
    invoke-static {p0, p1, v1}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 988
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 909
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    new-instance v0, Lcom/dolphin/browser/provider/a;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/dolphin/browser/provider/a;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2

    .prologue
    .line 993
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 994
    const-string v1, "favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 995
    invoke-static {p0, p2, v0}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 996
    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v0

    .line 998
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final a(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1628
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "url"

    aput-object v3, v2, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1631
    if-nez v0, :cond_0

    .line 1652
    :goto_0
    return-void

    .line 1634
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1635
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1649
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1639
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v1

    .line 1641
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1642
    invoke-virtual {v1}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1643
    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 1645
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1646
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1648
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1452
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1469
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1473
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1474
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1477
    :try_start_0
    invoke-static {v0, p3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1481
    :goto_0
    return-void

    .line 1478
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1504
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1505
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    :goto_0
    return-void

    .line 1508
    :cond_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_2

    move v1, v0

    .line 1509
    :cond_2
    new-instance v2, Landroid/content/Intent;

    if-eqz v1, :cond_3

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    :goto_1
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1510
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    .line 1513
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1515
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    if-eqz v1, :cond_5

    .line 1517
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1518
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1519
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1509
    :cond_3
    :try_start_1
    const-string v0, "android.intent.action.SEND"

    goto :goto_1

    .line 1521
    :cond_4
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1526
    :goto_3
    const-string v0, "application/octet-stream"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1528
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1523
    :cond_5
    const-string v1, "android.intent.extra.STREAM"

    new-instance v3, Ljava/io/File;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 1488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1490
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1492
    if-eqz p4, :cond_0

    .line 1493
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1496
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1500
    :goto_0
    return-void

    .line 1497
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 1373
    if-eqz p0, :cond_0

    .line 1375
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    :cond_0
    :goto_0
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1384
    :try_start_0
    new-instance v0, Lcom/dolphin/browser/provider/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/provider/c;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/c;->d([Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    .line 1391
    const-string v0, "Browser"

    const-string v1, "asyncTask run"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_0
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 2129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2137
    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2133
    const-string v1, "deviceid =? "

    .line 2134
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2135
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    sget-object v3, Lcom/dolphin/browser/provider/Browser;->OTHER_DEVICES_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 1780
    sput-boolean p0, Lcom/dolphin/browser/provider/Browser;->m:Z

    .line 1781
    return-void
.end method

.method static synthetic a(ZLandroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    invoke-static/range {p0 .. p6}, Lcom/dolphin/browser/provider/Browser;->b(ZLandroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1790
    const/4 v1, 0x1

    .line 1791
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1809
    :cond_0
    :goto_0
    return v0

    .line 1795
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/provider/Browser;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1798
    sget-boolean v2, Lcom/dolphin/browser/provider/Browser;->m:Z

    if-eqz v2, :cond_2

    .line 1799
    sput-boolean v0, Lcom/dolphin/browser/provider/Browser;->m:Z

    .line 1800
    invoke-static {p1}, Lcom/dolphin/browser/provider/Browser;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1806
    :cond_2
    sget-object v2, Lcom/dolphin/browser/provider/Browser;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1758
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1774
    :cond_0
    :goto_0
    return v2

    .line 1761
    :cond_1
    const-string v3, "http"

    const/4 v5, 0x4

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1762
    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1763
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1765
    add-int/lit8 v5, v0, 0x3

    move v0, v2

    .line 1766
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 1767
    aget-object v6, p1, v0

    .line 1768
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, p0

    move v4, v1

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    .line 1769
    goto :goto_0

    .line 1766
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 888
    if-nez p0, :cond_0

    .line 889
    const/4 v0, 0x0

    .line 894
    :goto_0
    return-object v0

    .line 892
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 893
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 894
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;
    .locals 7
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 398
    invoke-static {p0, p3, p4}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 399
    invoke-static/range {v0 .. v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/ContentResolver;)I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 477
    const/4 v6, 0x0

    .line 478
    if-nez p0, :cond_0

    .line 487
    :goto_0
    return v6

    .line 482
    :cond_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v3, "is_folder= 1"

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_1

    .line 484
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 485
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    move v6, v0

    .line 487
    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 717
    invoke-static {p0, p2, p3}, Lcom/dolphin/browser/provider/Browser;->d(Landroid/content/ContentResolver;J)I

    move-result v0

    .line 718
    invoke-static {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/net/Uri;Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1034
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    :goto_0
    return-void

    .line 1037
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    const-string v1, "url_key"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->IMAGES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1207
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->i:Lcom/dolphin/browser/provider/l;

    new-instance v1, Lcom/dolphin/browser/provider/k;

    invoke-direct {v1, p0, p1, p2}, Lcom/dolphin/browser/provider/k;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/provider/l;->execute(Ljava/lang/Runnable;)V

    .line 1213
    return-void
.end method

.method static synthetic b(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final b(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2109
    new-instance v0, Lcom/dolphin/browser/provider/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/provider/e;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    .line 2116
    return-void
.end method

.method public static final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1484
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1485
    return-void
.end method

.method private static b(ZLandroid/content/ContentResolver;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1172
    if-eqz p0, :cond_2

    const-string v0, "_url"

    move-object v3, v0

    .line 1173
    :goto_0
    if-eqz p0, :cond_3

    move-object v0, p6

    .line 1174
    :goto_1
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->h:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    aput-object v3, v2, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1180
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1181
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1182
    const-string v4, "date"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1183
    const-string v1, "_title"

    invoke-virtual {v3, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->h:Landroid/net/Uri;

    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1198
    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    .line 1199
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1201
    :cond_1
    return-void

    .line 1172
    :cond_2
    const-string v0, "search"

    move-object v3, v0

    goto :goto_0

    :cond_3
    move-object v0, p2

    .line 1173
    goto :goto_1

    .line 1187
    :cond_4
    if-nez p0, :cond_0

    .line 1188
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1189
    const-string v4, "search"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v4, "_category"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    const-string v4, "search_engine_name"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    const-string v4, "_title"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v4, "_url"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string v4, "date"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1195
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->h:Landroid/net/Uri;

    invoke-virtual {p1, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1750
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->k:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final b(Landroid/content/ContentResolver;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1433
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v6

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "folder"

    aput-object v0, v2, v8

    const-string v0, "%s = ? AND %s = 0"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "url"

    aput-object v4, v3, v6

    const-string v4, "is_folder"

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v5, "date DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1440
    const/4 v0, 0x0

    .line 1441
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1442
    new-array v0, v9, [Ljava/lang/String;

    .line 1443
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    .line 1444
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v7

    .line 1445
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 1447
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1448
    return-object v0
.end method

.method public static c(Landroid/content/ContentResolver;J)I
    .locals 1

    .prologue
    .line 606
    if-nez p0, :cond_0

    .line 607
    const/4 v0, -0x1

    .line 613
    :goto_0
    return v0

    .line 610
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    .line 611
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 613
    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JZ)I

    move-result v0

    goto :goto_0

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final c(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1967
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    :goto_0
    return-void

    .line 1970
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1971
    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1972
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1974
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->OTHER_DEVICES_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1976
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->TABS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    .line 1869
    .line 1872
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "visits"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "total_visit"

    aput-object v3, v2, v0

    const-string v3, "url = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1876
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    .line 1879
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1880
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1881
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v1

    .line 1882
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1883
    const-string v8, "visits"

    const/4 v9, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1884
    const-string v8, "total_visit"

    const/4 v9, 0x2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1885
    const-string v8, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1886
    const-string v4, "title"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    sget-object v4, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v4, v0, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1908
    :goto_0
    if-eqz v3, :cond_1

    .line 1909
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1913
    :cond_1
    :goto_1
    cmp-long v0, v1, v6

    if-eqz v0, :cond_2

    .line 1915
    :try_start_3
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->j()Lcom/dolphin/browser/extensions/IHistoryExtension;

    move-result-object v0

    .line 1917
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/extensions/IHistoryExtension;->onVisited(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1922
    :cond_2
    :goto_2
    return-void

    .line 1890
    :cond_3
    :try_start_4
    invoke-static {p0}, Lcom/dolphin/browser/provider/Browser;->truncateHistory(Landroid/content/ContentResolver;)V

    .line 1891
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1892
    const-string v1, "visits"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1893
    const-string v1, "total_visit"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1894
    const-string v1, "date"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1895
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    const-string v1, "created"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1898
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1901
    if-eqz v0, :cond_5

    .line 1902
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v1

    goto :goto_0

    .line 1905
    :catch_0
    move-exception v0

    move-wide v1, v6

    move-object v3, v8

    .line 1906
    :goto_3
    :try_start_5
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1908
    if-eqz v3, :cond_1

    .line 1909
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1908
    :catchall_0
    move-exception v0

    move-object v3, v8

    :goto_4
    if-eqz v3, :cond_4

    .line 1909
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 1918
    :catch_1
    move-exception v0

    .line 1919
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1908
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1905
    :catch_2
    move-exception v0

    move-wide v1, v6

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :cond_5
    move-wide v1, v6

    goto :goto_0
.end method

.method private static final c(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 944
    :try_start_0
    invoke-static {p3}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 945
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 946
    const-string v2, "touch_icon"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 947
    invoke-static {p0, p2, v1}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 948
    invoke-static {p0, p1, v1}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    return-void

    .line 949
    :catch_0
    move-exception v0

    .line 950
    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final c(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2122
    :try_start_0
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2126
    :goto_0
    return-void

    .line 2123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1702
    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const-string v3, "%s = ? AND %s = ?"

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "url"

    aput-object v5, v4, v1

    const-string v5, "folder"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1707
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1702
    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1754
    sget-object v0, Lcom/dolphin/browser/provider/Browser;->l:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final canClearHistory(Landroid/content/ContentResolver;)Z
    .locals 8
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1579
    .line 1581
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1584
    if-nez v1, :cond_2

    .line 1592
    if-eqz v1, :cond_0

    .line 1594
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move v0, v6

    .line 1597
    :cond_1
    :goto_1
    return v0

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1587
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 1592
    if-eqz v1, :cond_1

    .line 1594
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1595
    :catch_1
    move-exception v1

    .line 1596
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1589
    :catch_2
    move-exception v0

    move-object v0, v7

    .line 1592
    :goto_2
    if-eqz v0, :cond_3

    .line 1594
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_3
    :goto_3
    move v0, v6

    .line 1597
    goto :goto_1

    .line 1595
    :catch_3
    move-exception v0

    .line 1596
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1592
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_4

    .line 1594
    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1597
    :cond_4
    :goto_5
    throw v0

    .line 1595
    :catch_4
    move-exception v1

    .line 1596
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1592
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_4

    .line 1589
    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method

.method public static final clearHistory(Landroid/content/ContentResolver;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1610
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/dolphin/browser/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1611
    return-void
.end method

.method public static d(Landroid/content/ContentResolver;J)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 803
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "type"

    aput-object v0, v2, v6

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 808
    if-eqz v1, :cond_1

    .line 809
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 812
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 814
    :goto_1
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public static d(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2064
    new-instance v0, Lcom/dolphin/browser/provider/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/dolphin/browser/provider/d;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    .line 2071
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2049
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 2050
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2051
    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2052
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2053
    const-string v2, "new_tab"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2054
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2055
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2059
    :goto_0
    return-void

    .line 2056
    :catch_0
    move-exception v0

    .line 2057
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static deleteBookmark(Landroid/content/ContentResolver;J)Z
    .locals 6
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 520
    if-nez p0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 524
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->b(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 535
    :goto_1
    if-lez v2, :cond_0

    .line 537
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->i()Lcom/dolphin/browser/extensions/IBookmarkExtension;

    move-result-object v0

    .line 538
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/dolphin/browser/extensions/IBookmarkExtension;->onRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v1

    .line 542
    goto :goto_0

    .line 529
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 530
    const-string v3, "deleted"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    const-string v3, "sync_status"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    sget-object v3, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 539
    :catch_0
    move-exception v0

    .line 540
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static final deleteFromHistory(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "url = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1691
    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1693
    invoke-static {p0, v0}, Lcom/dolphin/browser/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1694
    return-void
.end method

.method public static final deleteHistoryTimeFrame(Landroid/content/ContentResolver;JJ)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const-wide/16 v1, -0x1

    .line 1666
    const-string v0, "date"

    .line 1667
    cmp-long v0, v1, p1

    if-nez v0, :cond_1

    .line 1668
    cmp-long v0, v1, p3

    if-nez v0, :cond_0

    .line 1669
    invoke-static {p0}, Lcom/dolphin/browser/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 1680
    :goto_0
    return-void

    .line 1672
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1679
    :goto_1
    invoke-static {p0, v0}, Lcom/dolphin/browser/provider/Browser;->deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0

    .line 1673
    :cond_1
    cmp-long v0, v1, p3

    if-nez v0, :cond_2

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1676
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "date >= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static final deleteHistoryWhere(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1623
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1624
    return-void
.end method

.method static synthetic e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/dolphin/browser/provider/Browser;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2075
    .line 2077
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "title"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "date"

    aput-object v3, v2, v0

    const-string v3, "url = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2082
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    .line 2085
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2086
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2087
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2088
    const-string v4, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2089
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    sget-object v2, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2102
    :goto_0
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    .line 2104
    :goto_1
    return-void

    .line 2093
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2094
    const-string v4, "date"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2095
    const-string v2, "url"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    sget-object v2, Lcom/dolphin/browser/provider/Browser;->RECENT_TABS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2099
    :catch_0
    move-exception v0

    .line 2100
    :goto_2
    :try_start_3
    const-string v2, "Browser.addRecentTab error: %s"

    invoke-static {v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2102
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    invoke-static {v1}, Lcom/dolphin/browser/util/IOUtilities;->b(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2099
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method private static f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 926
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    :goto_0
    return-object v0

    .line 933
    :cond_0
    const v1, 0xea60

    :try_start_0
    const-string v2, "favicon"

    invoke-static {p0, v1, v2}, Lcom/dolphin/browser/util/at;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 934
    :catch_0
    move-exception v1

    .line 935
    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final getVisitedHistory(Landroid/content/ContentResolver;)[Ljava/lang/String;
    .locals 8
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1542
    .line 1544
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "url"

    aput-object v1, v2, v0

    .line 1547
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1548
    if-nez v1, :cond_1

    .line 1549
    const/4 v0, 0x0

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1561
    if-eqz v1, :cond_0

    .line 1563
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1566
    :cond_0
    :goto_0
    return-object v0

    .line 1564
    :catch_0
    move-exception v1

    .line 1565
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1551
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v7

    .line 1553
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1554
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1555
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1561
    :cond_2
    if-eqz v1, :cond_0

    .line 1563
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 1564
    :catch_1
    move-exception v1

    .line 1565
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1558
    :catch_2
    move-exception v0

    move-object v1, v6

    .line 1559
    :goto_2
    const/4 v0, 0x0

    :try_start_5
    new-array v0, v0, [Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1561
    if-eqz v1, :cond_0

    .line 1563
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 1564
    :catch_3
    move-exception v1

    .line 1565
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1561
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_3

    .line 1563
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1566
    :cond_3
    :goto_4
    throw v0

    .line 1564
    :catch_4
    move-exception v1

    .line 1565
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1561
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1558
    :catch_5
    move-exception v0

    goto :goto_2
.end method

.method public static final isBookmark(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 8
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1416
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v7

    const-string v0, "%s = ? AND %s = 0"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "url"

    aput-object v4, v3, v7

    const-string v4, "is_folder"

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1423
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    .line 1426
    :goto_0
    if-eqz v1, :cond_0

    .line 1427
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1429
    :cond_0
    return v0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public static final saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1408
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1410
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1412
    return-void
.end method

.method public static startActivityTabInBrowser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dolphin.browser.action.CHILD_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1815
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/Configuration;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1816
    const-string v1, "child_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1817
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1818
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1820
    :cond_0
    const-string v1, "activity_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1821
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 1822
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1825
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1826
    return-void
.end method

.method public static final truncateHistory(Landroid/content/ContentResolver;)V
    .locals 8
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1287
    .line 1290
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "date"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "date asc"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1294
    :try_start_1
    invoke-static {}, Lcom/dolphin/browser/core/WebIconDatabase;->getInstance()Lcom/dolphin/browser/core/WebIconDatabase;

    move-result-object v2

    .line 1295
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v3, 0x190

    if-lt v0, v3, :cond_1

    move v0, v7

    .line 1297
    :goto_0
    const/16 v3, 0xc8

    if-ge v0, v3, :cond_1

    .line 1298
    sget-object v3, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1299
    invoke-virtual {v2}, Lcom/dolphin/browser/core/WebIconDatabase;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1300
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/core/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 1302
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 1310
    :cond_1
    if-eqz v1, :cond_2

    .line 1312
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1319
    :cond_2
    :goto_1
    return-void

    .line 1297
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1307
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 1308
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    const-string v3, "truncateHistory"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1310
    if-eqz v1, :cond_2

    .line 1312
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1313
    :catch_2
    move-exception v0

    .line 1314
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1310
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_3
    if-eqz v1, :cond_4

    .line 1312
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1315
    :cond_4
    :goto_4
    throw v0

    .line 1313
    :catch_3
    move-exception v1

    .line 1314
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1310
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1307
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static final truncateMostVisited(Landroid/content/ContentResolver;)V
    .locals 9
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1330
    .line 1333
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "date"

    aput-object v3, v2, v0

    const-string v3, "pin=? and visits>?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "visits asc, date asc"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 1336
    :try_start_1
    sget-object v1, Lcom/dolphin/browser/provider/Browser;->a:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "url"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "date"

    aput-object v3, v2, v0

    const-string v3, "visits<?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "visits desc, date asc"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1339
    if-eqz v7, :cond_0

    if-eqz v1, :cond_0

    .line 1340
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1341
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1342
    add-int/2addr v2, v0

    const/16 v3, 0xfa

    if-lt v2, v3, :cond_0

    .line 1343
    sget v2, Lcom/dolphin/browser/provider/w;->b:I

    sub-int v2, v0, v2

    .line 1344
    if-lez v2, :cond_1

    move v0, v2

    :goto_0
    rsub-int v0, v0, 0xc8

    .line 1345
    invoke-static {p0, v7, v2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Landroid/database/Cursor;I)V

    .line 1346
    invoke-static {p0, v1, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Landroid/database/Cursor;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1352
    :cond_0
    invoke-static {v7}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/database/Cursor;)V

    .line 1353
    invoke-static {v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/database/Cursor;)V

    .line 1355
    :goto_1
    return-void

    :cond_1
    move v0, v8

    .line 1344
    goto :goto_0

    .line 1349
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 1350
    :goto_2
    const/4 v2, 0x0

    :try_start_3
    const-string v3, "truncateMostVisited"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1352
    invoke-static {v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/database/Cursor;)V

    .line 1353
    invoke-static {v1}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1352
    :catchall_0
    move-exception v0

    move-object v7, v6

    :goto_3
    invoke-static {v7}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/database/Cursor;)V

    .line 1353
    invoke-static {v6}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/database/Cursor;)V

    throw v0

    .line 1352
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v7, v6

    move-object v6, v1

    goto :goto_3

    .line 1349
    :catch_1
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v7

    goto :goto_2
.end method

.method public static updateFaviconAsync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 966
    if-nez p2, :cond_0

    .line 975
    :goto_0
    return-void

    .line 969
    :cond_0
    new-instance v0, Lcom/dolphin/browser/provider/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dolphin/browser/provider/f;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static updateThumbnailAsync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 1014
    if-nez p2, :cond_0

    .line 1031
    :goto_0
    return-void

    .line 1017
    :cond_0
    new-instance v0, Lcom/dolphin/browser/provider/g;

    invoke-direct {v0, p3, p0, p2, p1}, Lcom/dolphin/browser/provider/g;-><init>(Landroid/graphics/Bitmap;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/dolphin/browser/provider/Browser;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
