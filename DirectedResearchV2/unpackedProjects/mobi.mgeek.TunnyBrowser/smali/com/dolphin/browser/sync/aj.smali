.class public Lcom/dolphin/browser/sync/aj;
.super Lcom/dolphin/browser/sync/ai;
.source "SyncConfigManagerImpl.java"


# instance fields
.field private a:Lcom/dolphin/browser/DolphinService/Account/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/dolphin/browser/sync/ai;-><init>()V

    .line 99
    new-instance v0, Lcom/dolphin/browser/sync/ak;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/sync/ak;-><init>(Lcom/dolphin/browser/sync/aj;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/aj;->a:Lcom/dolphin/browser/DolphinService/Account/l;

    return-void
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 66
    :goto_0
    return-object v0

    .line 46
    :sswitch_0
    const-string v0, "all"

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "bookmarks"

    goto :goto_0

    .line 56
    :sswitch_2
    const-string v0, "tabs"

    goto :goto_0

    .line 60
    :sswitch_3
    const-string v0, "history"

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x40 -> :sswitch_1
        0x80 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/aj;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const-string v1, "DBS Sync"

    const-string v2, "trigger"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method

.method public a(IJ)V
    .locals 4

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/aj;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p2

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/dolphin/browser/util/de;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    const-string v1, "DBS Sync"

    const-string v2, "time"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/dolphin/browser/sync/aj;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    if-eqz p2, :cond_1

    .line 82
    const-string v1, "DBS Sync"

    const-string v2, "succeed"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v1, "DBS Sync"

    const-string v2, "fail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(I)Lcom/dolphin/browser/sync/ah;
    .locals 1

    .prologue
    .line 123
    invoke-static {p1}, Lcom/dolphin/browser/sync/a/b;->a(I)Lcom/dolphin/browser/sync/a/a;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/dolphin/browser/DolphinService/f;->a()Lcom/dolphin/browser/DolphinService/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/f;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->g()Z

    move-result v0

    return v0
.end method

.method public d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isPrivateBrowsing()Z

    move-result v0

    return v0
.end method

.method public f()Lcom/dolphin/browser/DolphinService/Account/l;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/sync/aj;->a:Lcom/dolphin/browser/DolphinService/Account/l;

    return-object v0
.end method
