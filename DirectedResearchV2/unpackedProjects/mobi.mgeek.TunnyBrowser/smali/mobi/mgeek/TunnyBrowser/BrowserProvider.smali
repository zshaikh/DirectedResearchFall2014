.class public Lmobi/mgeek/TunnyBrowser/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Landroid/content/UriMatcher;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 40
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/cr;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getTunnyBrowserAuthority()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    .line 60
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    .line 61
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    const-string v2, "bookmarks"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    const-string v2, "bookmarks/#"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    const-string v2, "folders"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    const-string v2, "folders/#"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    const-string v2, "all_bookmarks"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    sget-object v1, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a:Ljava/lang/String;

    const-string v2, "reorder"

    const/16 v3, 0x33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string v1, "bookmark"

    const-string v2, "bookmark"

    const-string v3, "1"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "created"

    const-string v2, "created"

    const-string v3, "created"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "date"

    const-string v2, "date"

    const-string v3, "date"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "description"

    const-string v2, "description"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "favicon"

    const-string v2, "favicon"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "folder"

    const-string v2, "folder"

    const-string v3, "folder"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "label"

    const-string v2, "label"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "_order"

    const-string v2, "_order"

    const-string v3, "_order"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "title"

    const-string v2, "title"

    const-string v3, "title"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "touch_icon_url"

    const-string v2, "touch_icon_url"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "url"

    const-string v2, "url"

    const-string v3, "url"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "visits"

    const-string v2, "visits"

    const-string v3, "0"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v1, "_id"

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c:Ljava/util/HashMap;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string v1, "_id"

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v1, "created"

    const-string v2, "created"

    const-string v3, "created"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v1, "date"

    const-string v2, "date"

    const-string v3, "date"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v1, "parent"

    const-string v2, "parent"

    const-string v3, "folder"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "title"

    const-string v2, "title"

    const-string v3, "title"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->d:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    const-string v1, "bookmark"

    const-string v2, "bookmark"

    const-string v3, "0"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "created"

    const-string v2, "created"

    const-string v3, "created"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "date"

    const-string v2, "date"

    const-string v3, "date"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "description"

    const-string v2, "description"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "favicon"

    const-string v2, "favicon"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "folder"

    const-string v2, "folder"

    const-string v3, "0"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "label"

    const-string v2, "label"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "_order"

    const-string v2, "_order"

    const-string v3, "0"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "title"

    const-string v2, "title"

    const-string v3, "title"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "touch_icon"

    const-string v2, "touch_icon"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "touch_icon_url"

    const-string v2, "touch_icon_url"

    const-string v3, "NULL"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "url"

    const-string v2, "url"

    const-string v3, "url"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "visits"

    const-string v2, "visits"

    const-string v3, "visits"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "_id"

    const-string v2, "_id"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->e:Ljava/util/HashMap;

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->b:Ljava/lang/String;

    .line 155
    const-string v0, "UPDATE %s SET %s=%s+1 WHERE %s>? AND %s<? AND %s=?"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bookmarks"

    aput-object v2, v1, v4

    const-string v2, "_order"

    aput-object v2, v1, v7

    const-string v2, "_order"

    aput-object v2, v1, v5

    const-string v2, "_order"

    aput-object v2, v1, v6

    const-string v2, "_order"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "folder"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->g:Ljava/lang/String;

    .line 160
    const-string v0, "UPDATE %s SET %s=%s-1 WHERE %s>? AND %s<=? AND %s=?"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "bookmarks"

    aput-object v2, v1, v4

    const-string v2, "_order"

    aput-object v2, v1, v7

    const-string v2, "_order"

    aput-object v2, v1, v5

    const-string v2, "_order"

    aput-object v2, v1, v6

    const-string v2, "_order"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "folder"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 614
    const-string v0, "label"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 615
    const-string v0, "_order"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 616
    const-string v0, "description"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "history"

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 621
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I
    .locals 12

    .prologue
    .line 530
    const-string v0, "bookmark_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 531
    const-string v0, "from_order"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 532
    const-string v0, "to_order"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 533
    const-string v0, "bookmark_folder"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 534
    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    .line 536
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 537
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->g:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-virtual {p1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 540
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 546
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 547
    const-string v3, "_order"

    const-wide/16 v7, 0x1

    add-long v4, v5, v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    const-string v3, "bookmarks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmgeek/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 551
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmgeek/provider/Browser;->notifyBookmarksChanged(Landroid/content/Context;)V

    .line 552
    const/4 v0, 0x1

    .line 573
    :goto_1
    return v0

    .line 541
    :catch_0
    move-exception v0

    .line 542
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 553
    :cond_0
    cmp-long v0, v5, v3

    if-lez v0, :cond_1

    .line 555
    :try_start_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 556
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->h:Ljava/lang/String;

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v10

    const/4 v3, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v3, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-virtual {p1, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 563
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 565
    :goto_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 566
    const-string v3, "_order"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 567
    const-string v3, "bookmarks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 569
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmgeek/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 570
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmgeek/provider/Browser;->notifyBookmarksChanged(Landroid/content/Context;)V

    .line 571
    const/4 v0, 0x1

    goto :goto_1

    .line 560
    :catch_1
    move-exception v0

    .line 561
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 563
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 573
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 689
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 690
    const-string v1, "url_key NOT IN (SELECT url FROM bookmarks WHERE url IS NOT NULL) AND url_key NOT IN (SELECT url FROM history WHERE url IS NOT NULL)"

    .line 691
    const-string v2, "images"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method private a(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 676
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 678
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 680
    :cond_0
    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 686
    :cond_0
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    .line 589
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 590
    const-string v1, "favicon"

    invoke-direct {p0, v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 591
    const-string v1, "thumbnail"

    invoke-direct {p0, v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 592
    const-string v1, "touch_icon"

    invoke-direct {p0, v0, p2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "url"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const-string v1, "images"

    const-string v2, "url_key=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "url"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 599
    :cond_0
    return-void
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 643
    const-string v0, "bookmark"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 644
    const-string v0, "description"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 645
    const-string v0, "favicon"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 646
    const-string v0, "label"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 647
    const-string v0, "thumbnail"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 648
    const-string v0, "touch_icon"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 649
    const-string v0, "touch_icon_url"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 650
    const-string v0, "visits"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 651
    const-string v0, "_order"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 653
    const-string v0, "bookmarks"

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 602
    const-string v0, "label"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 603
    const-string v0, "_order"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 604
    const-string v0, "description"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    const-string v0, "history"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 609
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 661
    .line 662
    const-string v0, "bookmark"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const-string v0, "bookmark"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 664
    const-string v1, "bookmark"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 665
    if-nez v0, :cond_0

    .line 666
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 671
    :goto_0
    return v0

    .line 670
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 625
    const-string v0, "bookmark"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 626
    const-string v0, "description"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 627
    const-string v0, "favicon"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 628
    const-string v0, "label"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 629
    const-string v0, "thumbnail"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 630
    const-string v0, "touch_icon"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 631
    const-string v0, "touch_icon_url"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 632
    const-string v0, "visits"

    invoke-direct {p0, p2, v0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 633
    const-string v0, "_order"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 634
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "bookmarks"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 638
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 366
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 368
    sparse-switch v0, :sswitch_data_0

    .line 426
    const-string v0, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown delete URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 430
    :goto_0
    if-lez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 434
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmgeek/provider/Browser;->notifyBookmarksChanged(Landroid/content/Context;)V

    .line 439
    :cond_0
    return v0

    .line 370
    :sswitch_0
    const-string v0, "_id=?"

    invoke-static {p2, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 371
    new-array v0, v2, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 380
    :sswitch_1
    if-eqz p2, :cond_1

    .line 381
    const-string v0, "bookmark"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 383
    :cond_1
    if-ltz v3, :cond_2

    .line 384
    const-string v0, "bookmark"

    const-string v1, "1"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    const-string v1, "bookmarks"

    invoke-virtual {v4, v1, v0, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 387
    const-string v1, "bookmark"

    const-string v3, "0"

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    const-string v3, "history"

    invoke-virtual {v4, v3, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 394
    :goto_1
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a()V

    move v1, v2

    .line 395
    goto :goto_0

    .line 391
    :cond_2
    const-string v0, "bookmarks"

    invoke-virtual {v4, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 398
    :sswitch_2
    const-string v0, "bookmarks._id=?"

    invoke-static {p2, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p3, v5}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    .line 406
    :goto_2
    if-eqz v0, :cond_3

    .line 407
    const-string v3, "parent"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 409
    :cond_3
    if-ltz v3, :cond_4

    .line 410
    const-string v3, "parent"

    const-string v5, "folder"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_4
    const-string v3, "bookmarks.is_folder=?"

    invoke-static {v0, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    new-array v2, v2, [Ljava/lang/String;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p3, v2}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 418
    const-string v3, "bookmarks"

    invoke-virtual {v4, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 420
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a()V

    goto/16 :goto_0

    :sswitch_3
    move-object v0, p2

    goto :goto_2

    .line 368
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_3
        0xa -> :sswitch_0
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 279
    sparse-switch v0, :sswitch_data_0

    .line 296
    const-string v0, "Constants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 281
    :sswitch_0
    const-string v0, "vnd.android.cursor.dir/tunnybookmark"

    goto :goto_0

    .line 284
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/tunnybookmark"

    goto :goto_0

    .line 287
    :sswitch_2
    const-string v0, "vnd.android.cursor.dir/tunnyfolders"

    goto :goto_0

    .line 290
    :sswitch_3
    const-string v0, "vnd.android.cursor.item/tunnyfolders"

    goto :goto_0

    .line 293
    :sswitch_4
    const-string v0, "vnd.android.cursor.dir/tunnyallbookmarks"

    goto :goto_0

    .line 279
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xa -> :sswitch_1
        0xc -> :sswitch_3
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 304
    .line 305
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 307
    sget-object v4, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 309
    packed-switch v4, :pswitch_data_0

    .line 343
    :pswitch_0
    const-string v0, "Constants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown insert URI "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 358
    :goto_0
    return-object v0

    .line 315
    :pswitch_1
    const-string v4, "is_folder"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v4, "bookmark"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    const-string v4, "bookmark"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 318
    const-string v5, "bookmark"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 319
    if-nez v4, :cond_1

    .line 320
    invoke-direct {p0, v3, p2}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->b(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v6, v3

    move v3, v1

    move-wide v0, v6

    .line 347
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_3

    .line 348
    const-string v0, "Constants"

    const-string v1, "error occured when insert data into database"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 349
    goto :goto_0

    :cond_0
    move v0, v1

    .line 326
    :cond_1
    invoke-direct {p0, v3, p2}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v6, v3

    move v3, v0

    move-wide v0, v6

    .line 327
    goto :goto_1

    .line 330
    :pswitch_2
    const-string v4, "parent"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    const-string v4, "parent"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 332
    const-string v5, "folder"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 333
    const-string v4, "parent"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 335
    :cond_2
    const-string v4, "is_folder"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v0, "bookmarks"

    invoke-virtual {v3, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v6, v3

    move v3, v1

    move-wide v0, v6

    .line 338
    goto :goto_1

    .line 352
    :cond_3
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 354
    if-eqz v3, :cond_4

    .line 355
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lmgeek/provider/Browser;->notifyBookmarksChanged(Landroid/content/Context;)V

    .line 358
    :cond_4
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 173
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/provider/q;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 174
    const/4 v8, 0x0

    .line 175
    sget-object v0, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 176
    sparse-switch v0, :sswitch_data_0

    .line 267
    const-string v0, "Constants"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown query URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_0
    if-eqz v8, :cond_0

    .line 271
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 273
    :cond_0
    return-object v8

    .line 179
    :sswitch_0
    const-string v0, "_id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 189
    :goto_1
    const/4 v0, -0x1

    .line 191
    if-eqz p3, :cond_1

    .line 192
    const-string v0, "bookmark"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 194
    :cond_1
    if-ltz v0, :cond_2

    .line 195
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 196
    const-string v2, "bookmark"

    const-string v3, "1"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    const-string v3, "visits"

    const-string v5, "0"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string v3, "bookmarks"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 199
    sget-object v3, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 200
    const-string v3, "deleted=0 AND is_folder=0"

    invoke-static {v2, v3}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 203
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 204
    const-string v2, "history"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 205
    sget-object v2, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 206
    const-string v2, "bookmark"

    const-string v3, "0"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 207
    const/4 v8, 0x0

    .line 209
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    :goto_2
    new-instance v8, Lcom/dolphin/browser/provider/t;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-direct {v8, v1}, Lcom/dolphin/browser/provider/t;-><init>([Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "BrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query failed: selection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    goto :goto_2

    .line 218
    :cond_2
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 219
    sget-object v2, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 220
    const-string v2, "bookmarks"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 221
    const-string v2, "is_folder=0"

    invoke-static {p3, v2}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v7, p5

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_3
    move-object v8, v0

    .line 230
    goto/16 :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 226
    const-string v1, "BrowserProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    goto :goto_3

    .line 233
    :sswitch_1
    const-string v0, "_id=?"

    invoke-static {p3, v0}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 234
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p4, v0}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 241
    :goto_4
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 242
    const-string v2, "bookmarks"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 243
    sget-object v2, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 244
    const/4 v2, -0x1

    .line 245
    if-eqz p3, :cond_3

    .line 246
    const-string v2, "BrowserProvider"

    invoke-static {v2, p3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v2, "parent"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 249
    :cond_3
    if-ltz v2, :cond_4

    .line 250
    const-string v2, "parent"

    const-string v3, "folder"

    invoke-virtual {p3, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 252
    :cond_4
    const-string v2, "deleted=0 AND is_folder=1"

    invoke-static {p3, v2}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    .line 258
    :sswitch_2
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 259
    sget-object v2, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 260
    const-string v2, "bookmarks LEFT OUTER JOIN images ON bookmarks.url = images.url_key"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 261
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "is_folder ASC, _order DESC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_0

    :sswitch_3
    move-object v4, p4

    goto :goto_4

    :sswitch_4
    move-object v4, p4

    goto/16 :goto_1

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0xa -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 444
    invoke-static {}, Lcom/dolphin/browser/provider/q;->a()Lcom/dolphin/browser/provider/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/provider/q;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 448
    sget-object v4, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->f:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 452
    sparse-switch v4, :sswitch_data_0

    .line 512
    const-string v0, "Constants"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown update URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 516
    :goto_0
    if-lez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 520
    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmgeek/provider/Browser;->notifyBookmarksChanged(Landroid/content/Context;)V

    .line 525
    :cond_0
    :goto_1
    return v0

    .line 454
    :sswitch_0
    const-string v4, "_id=?"

    invoke-static {p3, v4}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 455
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p4, v4}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 463
    :sswitch_1
    invoke-direct {p0, v3, p2}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 466
    if-eqz p3, :cond_1

    .line 467
    const-string v0, "bookmark"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 469
    :cond_1
    if-ltz v0, :cond_2

    .line 470
    const-string v0, "bookmark"

    const-string v1, "1"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    invoke-direct {p0, v3, p2, v0, p4}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 472
    const-string v1, "bookmark"

    const-string v4, "0"

    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-direct {p0, v3, p2, v1, p4}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :goto_2
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a()V

    move v1, v2

    .line 478
    goto :goto_0

    .line 475
    :cond_2
    invoke-direct {p0, v3, p2, p3, p4}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->c(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 481
    :sswitch_2
    const-string v4, "bookmarks._id=?"

    invoke-static {p3, v4}, Lcom/dolphin/browser/provider/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 482
    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p4, v4}, Lcom/dolphin/browser/provider/r;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    .line 488
    :sswitch_3
    const-string v4, "parent"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 489
    const-string v4, "parent"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 490
    const-string v5, "folder"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string v4, "parent"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 494
    :cond_3
    if-eqz p3, :cond_4

    .line 495
    const-string v0, "parent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 497
    :cond_4
    if-ltz v0, :cond_5

    .line 498
    const-string v0, "parent"

    const-string v4, "folder"

    invoke-virtual {p3, v0, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 500
    :cond_5
    const-string v0, "is_folder"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v0, "bookmarks"

    invoke-virtual {v3, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 503
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a()V

    goto/16 :goto_0

    .line 507
    :sswitch_4
    invoke-direct {p0, v3, p1}, Lmobi/mgeek/TunnyBrowser/BrowserProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I

    move-result v0

    goto/16 :goto_1

    .line 452
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_3
        0xa -> :sswitch_0
        0xc -> :sswitch_2
        0x33 -> :sswitch_4
    .end sparse-switch
.end method
