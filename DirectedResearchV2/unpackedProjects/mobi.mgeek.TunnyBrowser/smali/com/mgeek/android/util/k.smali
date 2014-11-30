.class public Lcom/mgeek/android/util/k;
.super Lcom/dolphin/browser/util/ax;
.source "GoogleTracker.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/mgeek/android/util/k;


# instance fields
.field private c:Lcom/google/android/apps/analytics/i;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/mgeek/android/util/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mgeek/android/util/k;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/dolphin/browser/util/ax;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/util/k;->d:Z

    .line 22
    iput-boolean v1, p0, Lcom/mgeek/android/util/k;->g:Z

    .line 23
    iput-boolean v1, p0, Lcom/mgeek/android/util/k;->h:Z

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/mgeek/android/util/k;->i:I

    .line 27
    iput-object p1, p0, Lcom/mgeek/android/util/k;->e:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/mgeek/android/util/k;->f:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/mgeek/android/util/k;->i:I

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/mgeek/android/util/k;)Lcom/google/android/apps/analytics/i;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/mgeek/android/util/k;->c:Lcom/google/android/apps/analytics/i;

    return-object v0
.end method

.method public static e()Lcom/mgeek/android/util/k;
    .locals 4

    .prologue
    .line 33
    sget-object v0, Lcom/mgeek/android/util/k;->b:Lcom/mgeek/android/util/k;

    if-nez v0, :cond_0

    .line 34
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/mgeek/android/util/k;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getGoogleTrackerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getTraceInterval()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/mgeek/android/util/k;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v1, Lcom/mgeek/android/util/k;->b:Lcom/mgeek/android/util/k;

    .line 39
    sget-object v0, Lcom/mgeek/android/util/k;->b:Lcom/mgeek/android/util/k;

    invoke-direct {v0}, Lcom/mgeek/android/util/k;->g()V

    .line 42
    :cond_0
    sget-object v0, Lcom/mgeek/android/util/k;->b:Lcom/mgeek/android/util/k;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/mgeek/android/util/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/util/k;->c:Lcom/google/android/apps/analytics/i;

    .line 47
    invoke-direct {p0}, Lcom/mgeek/android/util/k;->h()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/util/k;->g:Z

    .line 49
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/mgeek/android/util/k;->h:Z

    if-nez v0, :cond_0

    .line 54
    :try_start_0
    iget v0, p0, Lcom/mgeek/android/util/k;->i:I

    packed-switch v0, :pswitch_data_0

    .line 65
    iget-object v0, p0, Lcom/mgeek/android/util/k;->c:Lcom/google/android/apps/analytics/i;

    iget-object v1, p0, Lcom/mgeek/android/util/k;->f:Ljava/lang/String;

    iget v2, p0, Lcom/mgeek/android/util/k;->i:I

    iget-object v3, p0, Lcom/mgeek/android/util/k;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;ILandroid/content/Context;)V

    .line 68
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgeek/android/util/k;->h:Z

    .line 73
    :cond_0
    :goto_1
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/mgeek/android/util/k;->c:Lcom/google/android/apps/analytics/i;

    iget-object v1, p0, Lcom/mgeek/android/util/k;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgeek/android/util/k;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    sget-object v1, Lcom/mgeek/android/util/k;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 60
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/mgeek/android/util/k;->c:Lcom/google/android/apps/analytics/i;

    iget-object v1, p0, Lcom/mgeek/android/util/k;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgeek/android/util/k;->e:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/analytics/i;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/util/k;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mgeek/android/util/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mgeek/android/util/k;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mgeek/android/util/k;->d:Z

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/mgeek/android/util/k;->b:Lcom/mgeek/android/util/k;

    invoke-virtual {v0}, Lcom/mgeek/android/util/k;->a()Lcom/dolphin/browser/util/cs;

    move-result-object v6

    new-instance v0, Lcom/mgeek/android/util/l;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mgeek/android/util/l;-><init>(Lcom/mgeek/android/util/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lcom/dolphin/browser/util/cs;->a(Ljava/lang/Runnable;)V

    .line 99
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/mgeek/android/util/k;->h:Z

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/mgeek/android/util/k;->c:Lcom/google/android/apps/analytics/i;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->d()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgeek/android/util/k;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/mgeek/android/util/k;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/mgeek/android/util/k;->g:Z

    return v0
.end method
