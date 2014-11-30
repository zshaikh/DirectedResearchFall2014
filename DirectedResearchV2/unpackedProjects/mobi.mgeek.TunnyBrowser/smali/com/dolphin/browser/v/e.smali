.class public final Lcom/dolphin/browser/v/e;
.super Ljava/lang/Object;
.source "UsdTrackUtil.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z

.field private static c:Lcom/dolphin/browser/util/cg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dolphin/browser/v/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/dolphin/browser/v/e;->a()V

    .line 74
    sget-object v0, Lcom/dolphin/browser/v/e;->c:Lcom/dolphin/browser/util/cg;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/dolphin/browser/v/e;->c:Lcom/dolphin/browser/util/cg;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/util/cg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final a()V
    .locals 4

    .prologue
    .line 28
    sget-object v1, Lcom/dolphin/browser/v/e;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-boolean v0, Lcom/dolphin/browser/v/e;->b:Z

    if-eqz v0, :cond_0

    .line 30
    monitor-exit v1

    .line 40
    :goto_0
    return-void

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :try_start_1
    new-instance v0, Lcom/dolphin/browser/util/cg;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    const-string v2, "builtin/service.dolphin-browser.com.pub"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/util/cg;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/v/e;->c:Lcom/dolphin/browser/util/cg;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/v/e;->b:Z

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static final a(IIIIII)Z
    .locals 8

    .prologue
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 93
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->roll(IZ)V

    .line 94
    const/16 v5, 0x17

    const/16 v6, 0x3b

    const/16 v7, 0x3b

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 95
    const/16 v2, 0xe

    const/16 v3, 0x3e7

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 6

    .prologue
    .line 104
    const/16 v0, 0x7de

    const/4 v1, 0x4

    const/16 v2, 0x14

    const/16 v3, 0x7de

    const/4 v4, 0x4

    const/16 v5, 0x1a

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/v/e;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method
