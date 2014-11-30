.class public Lcom/dolphin/browser/update/f;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# static fields
.field private static a:Lcom/dolphin/browser/update/f;


# instance fields
.field private b:Lcom/dolphin/browser/update/a/a;

.field private c:Lcom/dolphin/browser/update/e;

.field private d:Lcom/dolphin/browser/update/h;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/dolphin/browser/update/a/a;->a()Lcom/dolphin/browser/update/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/dolphin/browser/update/f;->b:Lcom/dolphin/browser/update/a/a;

    .line 38
    new-instance v1, Lcom/dolphin/browser/update/e;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/update/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/dolphin/browser/update/f;->c:Lcom/dolphin/browser/update/e;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/update/f;)Lcom/dolphin/browser/update/a/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->b:Lcom/dolphin/browser/update/a/a;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/update/f;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/dolphin/browser/update/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/update/f;->a:Lcom/dolphin/browser/update/f;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/dolphin/browser/update/f;

    invoke-direct {v0}, Lcom/dolphin/browser/update/f;-><init>()V

    sput-object v0, Lcom/dolphin/browser/update/f;->a:Lcom/dolphin/browser/update/f;

    .line 45
    :cond_0
    sget-object v0, Lcom/dolphin/browser/update/f;->a:Lcom/dolphin/browser/update/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    const-string v2, "update"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v0, 0x1

    .line 164
    :cond_0
    return v0
.end method

.method private b(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 178
    const-string v0, "updateinfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    new-instance v1, Lcom/dolphin/browser/update/model/b;

    invoke-direct {v1, v0}, Lcom/dolphin/browser/update/model/b;-><init>(Ljava/util/List;)V

    .line 184
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/update/model/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/dolphin/browser/update/a;

    invoke-direct {v0, p2, v1}, Lcom/dolphin/browser/update/a;-><init>(Landroid/content/Context;Lcom/dolphin/browser/update/model/b;)V

    invoke-virtual {v0}, Lcom/dolphin/browser/update/a;->a()Landroid/app/Dialog;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 188
    const-string v0, "UpdateManager"

    const-string v1, "showUpdateDialog"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->c:Lcom/dolphin/browser/update/e;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/update/e;->a(I)V

    .line 109
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->c:Lcom/dolphin/browser/update/e;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/update/e;->a(J)V

    .line 82
    return-void
.end method

.method public a(Lcom/dolphin/browser/update/g;)V
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/dolphin/browser/update/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/dolphin/browser/update/f;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 56
    const-wide/32 v2, 0xdbba00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->d:Lcom/dolphin/browser/update/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/update/f;->d:Lcom/dolphin/browser/update/h;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/h;->e()Lcom/dolphin/browser/util/p;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/util/p;->c:Lcom/dolphin/browser/util/p;

    if-eq v0, v1, :cond_1

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->d:Lcom/dolphin/browser/update/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/update/h;->b(Z)Z

    .line 63
    :cond_1
    new-instance v0, Lcom/dolphin/browser/update/h;

    invoke-direct {v0, p0, p1}, Lcom/dolphin/browser/update/h;-><init>(Lcom/dolphin/browser/update/f;Lcom/dolphin/browser/update/g;)V

    iput-object v0, p0, Lcom/dolphin/browser/update/f;->d:Lcom/dolphin/browser/update/h;

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->d:Lcom/dolphin/browser/update/h;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/r;->a(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)Lcom/dolphin/browser/util/f;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->c:Lcom/dolphin/browser/update/e;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/update/e;->a(Z)V

    .line 74
    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/dolphin/browser/update/f;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/update/f;->b(Landroid/content/Intent;Landroid/content/Context;)V

    .line 173
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->c:Lcom/dolphin/browser/update/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/e;->c()Z

    move-result v0

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->c:Lcom/dolphin/browser/update/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/e;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 86
    if-nez v1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/update/f;->c:Lcom/dolphin/browser/update/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/update/e;->b()I

    move-result v0

    return v0
.end method
