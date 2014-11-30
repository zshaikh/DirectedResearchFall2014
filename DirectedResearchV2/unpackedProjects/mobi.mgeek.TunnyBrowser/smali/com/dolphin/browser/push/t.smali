.class public Lcom/dolphin/browser/push/t;
.super Ljava/lang/Object;
.source "PushManager.java"


# static fields
.field private static final a:I

.field private static b:Lcom/dolphin/browser/push/t;


# instance fields
.field private c:Lcom/dolphin/browser/push/ag;

.field private d:Lcom/dolphin/browser/push/data/DeviceInfo;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/dolphin/browser/push/i;

.field private k:Lcom/dolphin/browser/DolphinService/Account/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "PushManager"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/dolphin/browser/push/t;->a:I

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/push/t;->b:Lcom/dolphin/browser/push/t;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    .line 147
    new-instance v0, Lcom/dolphin/browser/push/u;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/u;-><init>(Lcom/dolphin/browser/push/t;)V

    iput-object v0, p0, Lcom/dolphin/browser/push/t;->k:Lcom/dolphin/browser/DolphinService/Account/l;

    .line 62
    invoke-static {p1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Landroid/content/Context;)Lcom/dolphin/browser/DolphinService/Account/b;

    .line 63
    invoke-direct {p0}, Lcom/dolphin/browser/push/t;->o()V

    .line 64
    new-instance v0, Lcom/dolphin/browser/push/ag;

    invoke-direct {v0}, Lcom/dolphin/browser/push/ag;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    .line 65
    new-instance v0, Lcom/dolphin/browser/push/i;

    invoke-direct {v0}, Lcom/dolphin/browser/push/i;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/push/t;->j:Lcom/dolphin/browser/push/i;

    .line 66
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/t;->k:Lcom/dolphin/browser/DolphinService/Account/l;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/DolphinService/Account/b;->a(Lcom/dolphin/browser/DolphinService/Account/l;)V

    .line 67
    return-void
.end method

.method public static a()Lcom/dolphin/browser/push/t;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/dolphin/browser/push/t;->b:Lcom/dolphin/browser/push/t;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call init(Context) first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    sget-object v0, Lcom/dolphin/browser/push/t;->b:Lcom/dolphin/browser/push/t;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/dolphin/browser/push/t;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dolphin/browser/push/t;->b:Lcom/dolphin/browser/push/t;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/dolphin/browser/push/t;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/push/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dolphin/browser/push/t;->b:Lcom/dolphin/browser/push/t;

    .line 51
    :cond_0
    sget-object v0, Lcom/dolphin/browser/push/t;->b:Lcom/dolphin/browser/push/t;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/push/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/push/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->j:Lcom/dolphin/browser/push/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/dolphin/browser/push/i;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/dolphin/browser/push/l;)V

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->d()V

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/push/t;->i:Z

    .line 215
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->d()Z

    .line 216
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/push/t;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/dolphin/browser/push/t;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/push/t;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/push/t;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/push/t;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/dolphin/browser/push/t;->o()V

    return-void
.end method

.method static synthetic e(Lcom/dolphin/browser/push/t;)Lcom/dolphin/browser/push/i;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->j:Lcom/dolphin/browser/push/i;

    return-object v0
.end method

.method private o()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/p;->c()Z

    move-result v4

    if-nez v4, :cond_3

    .line 73
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/push/t;->e:Ljava/lang/String;

    .line 78
    :goto_0
    const/4 v0, 0x0

    .line 79
    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v3

    .line 80
    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/dolphin/browser/push/t;->f:Ljava/lang/String;

    .line 82
    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 83
    invoke-virtual {v3}, Lcom/dolphin/browser/DolphinService/Account/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getDolphinPushUrl()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_2
    iput-object v0, p0, Lcom/dolphin/browser/push/t;->h:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/dolphin/browser/push/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/t;->g:Ljava/lang/String;

    .line 96
    new-instance v3, Lcom/dolphin/browser/push/data/DeviceInfo;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/DisplayManager;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v5, p0, Lcom/dolphin/browser/push/t;->g:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v5}, Lcom/dolphin/browser/push/data/DeviceInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/dolphin/browser/push/t;->d:Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    iput-boolean v1, p0, Lcom/dolphin/browser/push/t;->i:Z

    .line 101
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/t;->d:Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/f;->b(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    .line 102
    return-void

    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/t;->e:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_4
    const-string v3, ""

    iput-object v3, p0, Lcom/dolphin/browser/push/t;->f:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v0, v2

    .line 96
    goto :goto_2

    :cond_6
    move v1, v2

    .line 99
    goto :goto_3
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/dolphin/browser/push/l;)V
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->d()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    iget-object v1, p0, Lcom/dolphin/browser/push/t;->j:Lcom/dolphin/browser/push/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/p;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, p2}, Lcom/dolphin/browser/push/i;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/dolphin/browser/push/l;)V

    .line 328
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/push/as;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-string v0, "PushManager"

    const-string v1, "pushTab to %s, title: %s, url: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 271
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/push/f;->d(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/dolphin/browser/push/f;->a(Ljava/lang/String;J)V

    .line 273
    new-instance v0, Lcom/dolphin/browser/push/data/k;

    invoke-direct {v0}, Lcom/dolphin/browser/push/data/k;-><init>()V

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/push/data/k;->a(Ljava/lang/String;)Lcom/dolphin/browser/push/data/k;

    move-result-object v0

    invoke-static {v4, p2, p3}, Lcom/dolphin/browser/push/data/h;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/dolphin/browser/push/data/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/data/k;->a(Lcom/dolphin/browser/push/data/h;)Lcom/dolphin/browser/push/data/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/data/k;->a()Ljava/util/Map;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v1, v0, p4}, Lcom/dolphin/browser/push/ag;->a(Ljava/util/Map;Lcom/dolphin/browser/push/as;)V

    goto :goto_0
.end method

.method b()Lcom/dolphin/browser/push/ag;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    return-object v0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/dolphin/browser/push/t;->i:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 114
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 114
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 3

    .prologue
    .line 118
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 119
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/push/PushService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    const-string v2, "restart"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 128
    return v3
.end method

.method f()Lcom/dolphin/browser/push/data/DeviceInfo;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->d:Lcom/dolphin/browser/push/data/DeviceInfo;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->e:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/dolphin/browser/push/t;->i:Z

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->k()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->j()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->c:Lcom/dolphin/browser/push/ag;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/ag;->i()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/dolphin/browser/push/t;->j:Lcom/dolphin/browser/push/i;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/i;->a()V

    .line 320
    return-void
.end method
