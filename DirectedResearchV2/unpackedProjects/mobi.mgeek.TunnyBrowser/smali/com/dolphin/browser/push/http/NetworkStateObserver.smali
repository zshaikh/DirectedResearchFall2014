.class public Lcom/dolphin/browser/push/http/NetworkStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateObserver.java"


# static fields
.field private static a:Lcom/dolphin/browser/util/BaseObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dolphin/browser/util/BaseObservable",
            "<",
            "Lcom/dolphin/browser/push/http/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/dolphin/browser/util/BaseObservable;

    invoke-direct {v0}, Lcom/dolphin/browser/util/BaseObservable;-><init>()V

    sput-object v0, Lcom/dolphin/browser/push/http/NetworkStateObserver;->a:Lcom/dolphin/browser/util/BaseObservable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    return-void
.end method

.method public static a(Lcom/dolphin/browser/push/http/a;)V
    .locals 1

    .prologue
    .line 41
    if-eqz p0, :cond_0

    .line 42
    sget-object v0, Lcom/dolphin/browser/push/http/NetworkStateObserver;->a:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/util/BaseObservable;->addListener(Ljava/lang/Object;)V

    .line 44
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/dolphin/browser/push/http/NetworkStateObserver;->a:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0}, Lcom/dolphin/browser/util/BaseObservable;->getListeners()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/http/a;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/dolphin/browser/push/http/a;->b()V

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v0}, Lcom/dolphin/browser/push/http/a;->a()V

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public static b(Lcom/dolphin/browser/push/http/a;)V
    .locals 1

    .prologue
    .line 52
    if-eqz p0, :cond_0

    .line 53
    sget-object v0, Lcom/dolphin/browser/push/http/NetworkStateObserver;->a:Lcom/dolphin/browser/util/BaseObservable;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/util/BaseObservable;->removeListener(Ljava/lang/Object;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    .line 26
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 28
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 31
    :goto_0
    const-string v3, "NetworkStateObserver"

    const-string v4, "Network status changed: %s."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    invoke-direct {p0, v0}, Lcom/dolphin/browser/push/http/NetworkStateObserver;->a(Z)V

    .line 33
    return-void

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0
.end method
