.class public Lcom/dolphin/browser/addons/f;
.super Lcom/dolphin/browser/addons/d;
.source "BrowserUtilImpl.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Lcom/dolphin/browser/addons/f;


# instance fields
.field private final d:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/dolphin/browser/addons/u;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/dolphin/browser/addons/u;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/database/ContentObserver;

.field private h:Z

.field private i:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "folder"

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/addons/f;->a:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "url"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "visits"

    aput-object v1, v0, v6

    sput-object v0, Lcom/dolphin/browser/addons/f;->b:[Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/dolphin/browser/addons/f;

    invoke-direct {v0}, Lcom/dolphin/browser/addons/f;-><init>()V

    sput-object v0, Lcom/dolphin/browser/addons/f;->c:Lcom/dolphin/browser/addons/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/dolphin/browser/addons/d;-><init>()V

    .line 67
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/f;->d:Landroid/os/RemoteCallbackList;

    .line 69
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/addons/f;->e:Landroid/os/RemoteCallbackList;

    .line 431
    iput-boolean v2, p0, Lcom/dolphin/browser/addons/f;->f:Z

    .line 432
    new-instance v0, Lcom/dolphin/browser/addons/g;

    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/addons/g;-><init>(Lcom/dolphin/browser/addons/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/f;->g:Landroid/database/ContentObserver;

    .line 467
    iput-boolean v2, p0, Lcom/dolphin/browser/addons/f;->h:Z

    .line 468
    new-instance v0, Lcom/dolphin/browser/addons/h;

    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/addons/h;-><init>(Lcom/dolphin/browser/addons/f;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/dolphin/browser/addons/f;->i:Landroid/database/ContentObserver;

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/addons/f;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/addons/f;->d:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/dolphin/browser/addons/BookmarkTreeNode;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;

    invoke-direct {v0}, Lcom/dolphin/browser/addons/BookmarkTreeNode;-><init>()V

    .line 85
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->a:J

    .line 86
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->b:Ljava/lang/String;

    .line 87
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->c:Ljava/lang/String;

    .line 88
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/addons/BookmarkTreeNode;->d:J

    .line 89
    return-object v0
.end method

.method public static a()Lcom/dolphin/browser/addons/f;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/dolphin/browser/addons/f;->c:Lcom/dolphin/browser/addons/f;

    return-object v0
.end method

.method private b()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/dolphin/browser/addons/f;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/addons/f;->e:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method private static b(Landroid/database/Cursor;)Lcom/dolphin/browser/addons/HistoryInfo;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/dolphin/browser/addons/HistoryInfo;

    invoke-direct {v0}, Lcom/dolphin/browser/addons/HistoryInfo;-><init>()V

    .line 94
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/addons/HistoryInfo;->a:J

    .line 95
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/addons/HistoryInfo;->b:Ljava/lang/String;

    .line 96
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dolphin/browser/addons/HistoryInfo;->c:Ljava/lang/String;

    .line 97
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/dolphin/browser/addons/HistoryInfo;->d:J

    .line 98
    const/4 v1, 0x4

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/dolphin/browser/addons/HistoryInfo;->e:I

    .line 99
    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 459
    iget-boolean v0, p0, Lcom/dolphin/browser/addons/f;->f:Z

    if-nez v0, :cond_0

    .line 460
    iput-boolean v5, p0, Lcom/dolphin/browser/addons/f;->f:Z

    .line 461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 462
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/dolphin/browser/addons/f;->g:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 463
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    :cond_0
    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 495
    iget-boolean v0, p0, Lcom/dolphin/browser/addons/f;->h:Z

    if-nez v0, :cond_0

    .line 496
    iput-boolean v5, p0, Lcom/dolphin/browser/addons/f;->h:Z

    .line 497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 498
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/dolphin/browser/addons/f;->i:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 499
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    :cond_0
    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 4

    .prologue
    .line 203
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.WRITE_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 206
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 210
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    :goto_0
    return-wide v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 212
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public a(Lcom/dolphin/browser/addons/BookmarkTreeNode;)J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 166
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.WRITE_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 169
    :try_start_0
    invoke-virtual {p1}, Lcom/dolphin/browser/addons/BookmarkTreeNode;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->b:Ljava/lang/String;

    iget-wide v2, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->d:J

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 171
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 188
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 190
    :goto_0
    return-wide v0

    .line 188
    :cond_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v0, v6

    goto :goto_0

    .line 177
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->b:Ljava/lang/String;

    iget-wide v3, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->d:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/provider/Browser;->addBookmark(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 179
    if-nez v0, :cond_2

    .line 188
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v0, v6

    goto :goto_0

    .line 182
    :cond_2
    :try_start_2
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    .line 188
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-wide v0, v6

    .line 190
    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public a(J)Lcom/dolphin/browser/addons/BookmarkTreeNode;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 114
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/addons/f;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 123
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    invoke-static {v1}, Lcom/dolphin/browser/addons/f;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/addons/BookmarkTreeNode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    move-object v0, v6

    .line 130
    :goto_0
    if-eqz v1, :cond_0

    .line 132
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 138
    :cond_0
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    :goto_2
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 128
    :goto_3
    :try_start_3
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    if-eqz v1, :cond_1

    .line 132
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 138
    :cond_1
    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v6

    .line 139
    goto :goto_2

    .line 130
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v6, :cond_2

    .line 132
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 138
    :cond_2
    :goto_6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 133
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    .line 130
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_5

    .line 127
    :catch_4
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/addons/BookmarkTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 290
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 291
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/dolphin/browser/addons/f;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 299
    if-eqz v1, :cond_1

    .line 300
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-static {v1}, Lcom/dolphin/browser/addons/f;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/addons/BookmarkTreeNode;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .line 306
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 308
    if-eqz v1, :cond_0

    .line 310
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 315
    :cond_0
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 317
    :goto_3
    return-object v7

    .line 308
    :cond_1
    if-eqz v1, :cond_2

    .line 310
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 315
    :cond_2
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 308
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_3

    .line 310
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 315
    :cond_3
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 311
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_6

    .line 308
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 305
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public a(Lcom/dolphin/browser/addons/DownloadInfo;)V
    .locals 5

    .prologue
    .line 410
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.MANAGE_DOWNLOADS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 413
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 414
    const-string v3, "uri"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v3, "hint"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v3, "mimetype"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v3, "visibility"

    iget v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->f:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    const-string v3, "cookiedata"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "useragent"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, "referer"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v3, "title"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v3, "description"

    iget-object v4, p1, Lcom/dolphin/browser/addons/DownloadInfo;->m:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 425
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public a(Lcom/dolphin/browser/addons/u;)V
    .locals 2

    .prologue
    .line 511
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 512
    if-eqz p1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/dolphin/browser/addons/f;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->c()V

    .line 516
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 328
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.WRITE_HISTORY"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 331
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public b(J)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/addons/BookmarkTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 152
    const-string v0, "folder=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/addons/f;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/dolphin/browser/addons/BookmarkTreeNode;)V
    .locals 6

    .prologue
    .line 262
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.WRITE_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 265
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    const-string v3, "title"

    iget-object v4, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "url"

    iget-object v4, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "folder"

    iget-wide v4, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v3

    iget-wide v4, p1, Lcom/dolphin/browser/addons/BookmarkTreeNode;->a:J

    invoke-static {v3, v4, v5, v0}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;JLandroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 275
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public b(Lcom/dolphin/browser/addons/u;)V
    .locals 2

    .prologue
    .line 527
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 528
    if-eqz p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/dolphin/browser/addons/f;->d:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 531
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.WRITE_HISTORY"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->a(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    :try_start_1
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/addons/HistoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 375
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_HISTORY"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 376
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 380
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/dolphin/browser/addons/f;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 382
    if-eqz v1, :cond_1

    .line 383
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-static {v1}, Lcom/dolphin/browser/addons/f;->b(Landroid/database/Cursor;)Lcom/dolphin/browser/addons/HistoryInfo;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 391
    if-eqz v1, :cond_0

    .line 393
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    :cond_0
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    :goto_3
    return-object v7

    .line 391
    :cond_1
    if-eqz v1, :cond_2

    .line 393
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 398
    :cond_2
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    .line 391
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_3

    .line 393
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 398
    :cond_3
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 394
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_6

    .line 391
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 388
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public c(J)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 223
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.WRITE_BOOKMARKS"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 227
    :try_start_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/addons/f;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 231
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-static {v1}, Lcom/dolphin/browser/addons/f;->a(Landroid/database/Cursor;)Lcom/dolphin/browser/addons/BookmarkTreeNode;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/dolphin/browser/addons/BookmarkTreeNode;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 245
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    :cond_1
    :goto_1
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    :goto_2
    return-void

    .line 237
    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->b()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/dolphin/browser/provider/Browser;->deleteBookmark(Landroid/content/ContentResolver;J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 243
    if-eqz v1, :cond_3

    .line 245
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 250
    :cond_3
    :goto_4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 243
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_5
    if-eqz v1, :cond_4

    .line 245
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 250
    :cond_4
    :goto_6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 246
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    .line 243
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 240
    :catch_4
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method public c(Lcom/dolphin/browser/addons/u;)V
    .locals 2

    .prologue
    .line 541
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_HISTORY"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 542
    if-eqz p1, :cond_0

    .line 543
    iget-object v0, p0, Lcom/dolphin/browser/addons/f;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/addons/f;->d()V

    .line 546
    return-void
.end method

.method public d(Lcom/dolphin/browser/addons/u;)V
    .locals 2

    .prologue
    .line 557
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    const-string v1, "com.dolphin.browser.permission.READ_HISTORY"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->j(Ljava/lang/String;)V

    .line 558
    if-eqz p1, :cond_0

    .line 559
    iget-object v0, p0, Lcom/dolphin/browser/addons/f;->e:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 561
    :cond_0
    return-void
.end method
