.class public Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadCompleteReceiver.java"


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->b:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 53
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/g;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    sget-object v0, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a:Ljava/util/List;

    .line 56
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/extensions/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/extensions/l;-><init>(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Lcom/dolphin/browser/extensions/k;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    .line 58
    :cond_0
    sget-object v0, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v0, 0x1eb

    const-wide/16 v5, 0x0

    .line 83
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 84
    const-string v1, "uri"

    const-string v3, "url"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "_data"

    const-string v3, "localPath"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    invoke-static {v1}, Lcom/dolphin/browser/downloads/t;->c(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    :goto_0
    const-string v1, "status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v0, "mimetype"

    const-string v1, "mimetype"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "lastmod"

    const-string v1, "time"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v0, "cookiedata"

    const-string v1, "cookie"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "useragent"

    const-string v1, "userAgent"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "referer"

    const-string v1, "referer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v0, "hint"

    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "total_bytes"

    const-string v1, "totalBytes"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v0, "current_bytes"

    const-string v1, "currentBytes"

    invoke-virtual {p1, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v0, "visibility"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v0, "no_action"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/AppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 105
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->f()Lcom/dolphin/browser/extensions/IBrowserExtension;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "localPath"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/dolphin/browser/extensions/IBrowserExtension;->onDownloadEnded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/dolphin/browser/extensions/y;->a()Lcom/dolphin/browser/extensions/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/y;->g()Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/extensions/IDownloadCompleteExtension;->onDownloadEnded(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 110
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->c(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 29
    if-nez p2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const-string v0, "com.dolphin.browser.action.DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;->b:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/extensions/m;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-direct {v1, p0, v2}, Lcom/dolphin/browser/extensions/m;-><init>(Lcom/dolphin/browser/extensions/DownloadCompleteReceiver;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
