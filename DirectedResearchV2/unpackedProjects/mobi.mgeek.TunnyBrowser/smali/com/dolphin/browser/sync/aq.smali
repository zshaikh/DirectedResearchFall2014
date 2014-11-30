.class public Lcom/dolphin/browser/sync/aq;
.super Ljava/lang/Object;
.source "SyncUtil.java"


# static fields
.field private static a:Lcom/dolphin/browser/sync/aq;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/dolphin/browser/sync/aq;->a:Lcom/dolphin/browser/sync/aq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/dolphin/browser/sync/aq;->b:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static declared-synchronized a()Lcom/dolphin/browser/sync/aq;
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/dolphin/browser/sync/aq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dolphin/browser/sync/aq;->a:Lcom/dolphin/browser/sync/aq;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/dolphin/browser/sync/aq;

    invoke-direct {v0}, Lcom/dolphin/browser/sync/aq;-><init>()V

    sput-object v0, Lcom/dolphin/browser/sync/aq;->a:Lcom/dolphin/browser/sync/aq;

    .line 27
    :cond_0
    sget-object v0, Lcom/dolphin/browser/sync/aq;->a:Lcom/dolphin/browser/sync/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    const-string v0, "SyncUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndroidId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dolphin/browser/sync/aq;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/dolphin/browser/sync/aq;->b:Ljava/lang/String;

    .line 56
    :goto_0
    return-object v0

    .line 39
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string v0, ""

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p1}, Lcom/dolphin/browser/sync/aq;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->e()Lcom/dolphin/browser/DolphinService/Account/a;

    move-result-object v2

    .line 47
    const-string v0, ""

    .line 48
    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v2}, Lcom/dolphin/browser/DolphinService/Account/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_2
    const-string v2, "SyncUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setClientID id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", username:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/sync/aq;->b:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/sync/aq;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/sync/aq;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_0

    move v0, v1

    .line 87
    :goto_0
    return v0

    .line 75
    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 77
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 78
    if-nez v3, :cond_1

    move v0, v1

    .line 79
    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 84
    goto :goto_0

    :cond_2
    move v0, v1

    .line 87
    goto :goto_0
.end method

.method public d(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 91
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Checking is auto sync..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v2

    .line 93
    if-eqz p1, :cond_0

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 104
    :cond_1
    :goto_0
    return v0

    .line 97
    :cond_2
    invoke-virtual {v2}, Lcom/dolphin/browser/sync/ai;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/sync/aq;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 101
    goto :goto_0
.end method
