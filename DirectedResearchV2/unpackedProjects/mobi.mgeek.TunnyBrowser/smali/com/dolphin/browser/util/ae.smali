.class public Lcom/dolphin/browser/util/ae;
.super Ljava/lang/Object;
.source "BelugaTracker.java"


# static fields
.field private static a:I

.field private static b:Z

.field private static c:Lcom/dolphin/browser/util/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, -0x1

    sput v0, Lcom/dolphin/browser/util/ae;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/a/b;

    invoke-direct {v0, p2, p4}, Lcom/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lcom/a/a;->a(Lcom/a/b;)V

    .line 28
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/a/a;->b(Z)V

    .line 29
    invoke-static {p3}, Lcom/a/a;->a(I)V

    .line 31
    :try_start_0
    const-string v0, "beluga_debug_key"

    invoke-static {p1, v0}, Lcom/dolphin/browser/util/IOUtilities;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 32
    invoke-static {v0}, Lcom/a/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    invoke-static {p1, p5}, Lcom/a/a;->a(Landroid/content/Context;I)V

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/util/ae;
    .locals 10

    .prologue
    .line 40
    const-class v9, Lcom/dolphin/browser/util/ae;

    monitor-enter v9

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/util/ae;->c:Lcom/dolphin/browser/util/ae;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/dolphin/browser/util/ae;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/core/Configuration;->getBelugaAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dolphin/browser/core/Configuration;->getBelugaServerHostType()I

    move-result v3

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dolphin/browser/core/BrowserSettings;->getChannelName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/dolphin/browser/core/Configuration;->getBelugaSendTrackInterval()I

    move-result v5

    invoke-static {}, Lcom/dolphin/browser/util/ae;->d()I

    move-result v6

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/dolphin/browser/core/BrowserSettings;->n()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/dolphin/browser/core/BrowserSettings;->o()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/dolphin/browser/util/ae;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/util/ae;->c:Lcom/dolphin/browser/util/ae;

    .line 48
    :cond_0
    sget-object v0, Lcom/dolphin/browser/util/ae;->c:Lcom/dolphin/browser/util/ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static a(I)V
    .locals 0

    .prologue
    .line 61
    sput p0, Lcom/dolphin/browser/util/ae;->a:I

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/dolphin/browser/util/ae;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/ae;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/dolphin/browser/util/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-static {}, Lcom/dolphin/browser/util/ae;->a()Lcom/dolphin/browser/util/ae;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/ae;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/util/af;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/util/af;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/util/ae;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/ae;->c(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/dolphin/browser/util/ae;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/ae;->a()Lcom/dolphin/browser/util/ae;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/ae;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/dolphin/browser/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 120
    invoke-static {}, Lcom/dolphin/browser/util/ae;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/ae;->a()Lcom/dolphin/browser/util/ae;

    move-result-object v0

    sget-object v5, Lcom/dolphin/browser/util/ah;->b:Lcom/dolphin/browser/util/ah;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/util/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/ah;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/ah;)V
    .locals 7

    .prologue
    .line 84
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/util/ae;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/ah;Z)V

    .line 85
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/ah;Z)V
    .locals 7

    .prologue
    .line 137
    invoke-static {}, Lcom/dolphin/browser/util/ae;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/util/ae;->a()Lcom/dolphin/browser/util/ae;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/dolphin/browser/util/ae;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/ah;Z)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 185
    invoke-static {}, Lcom/dolphin/browser/util/ae;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/util/ae;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/dolphin/browser/util/ae;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    invoke-static {}, Lcom/dolphin/browser/util/ae;->a()Lcom/dolphin/browser/util/ae;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/dolphin/browser/util/ae;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-static {}, Lcom/dolphin/browser/util/df;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/util/ag;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/util/ag;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/util/ae;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/dolphin/browser/util/ae;->d(Landroid/content/Context;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/a/a;->d()Lcom/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a;->a(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/dolphin/browser/util/ah;Z)V
    .locals 5

    .prologue
    .line 89
    sget-object v0, Lcom/dolphin/browser/util/ah;->a:Lcom/dolphin/browser/util/ah;

    if-eq p5, v0, :cond_0

    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->isNormalDataTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    :cond_0
    if-eqz p6, :cond_1

    .line 91
    invoke-static {p3}, Lcom/dolphin/browser/util/cn;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 93
    :cond_1
    const-string v0, "belugatest"

    const-string v1, "category: %s, action: %s, label: %s, value: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/a/a;->d()Lcom/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    :cond_2
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/dolphin/browser/util/ae;->c:Lcom/dolphin/browser/util/ae;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dolphin/browser/util/ae;->b:Z

    .line 77
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/a/a;->d()Lcom/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a;->c(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method private static d()I
    .locals 2

    .prologue
    .line 65
    sget v0, Lcom/dolphin/browser/util/ae;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->j()I

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/dolphin/browser/util/ae;->a:I

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/a/a;->d()Lcom/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a;->d(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method private static e()Z
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/BrowserSettings;->d()Z

    move-result v0

    return v0
.end method

.method private static f()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/dolphin/browser/util/ae;->b:Z

    return v0
.end method
