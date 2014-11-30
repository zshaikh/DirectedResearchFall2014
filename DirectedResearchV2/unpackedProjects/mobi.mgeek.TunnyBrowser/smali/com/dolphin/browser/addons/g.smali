.class Lcom/dolphin/browser/addons/g;
.super Landroid/database/ContentObserver;
.source "BrowserUtilImpl.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/f;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/dolphin/browser/addons/g;->a:Lcom/dolphin/browser/addons/f;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/dolphin/browser/addons/g;->a:Lcom/dolphin/browser/addons/f;

    invoke-static {v0}, Lcom/dolphin/browser/addons/f;->a(Lcom/dolphin/browser/addons/f;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 442
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 443
    :goto_0
    if-lez v0, :cond_0

    .line 444
    add-int/lit8 v1, v0, -0x1

    .line 446
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/u;

    invoke-interface {v0}, Lcom/dolphin/browser/addons/u;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 451
    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    move v0, v1

    .line 451
    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 454
    return-void
.end method
