.class public Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;
.super Lv2/com/playhaven/requests/open/PHOpenRequest;
.source "PHPublisherOpenRequest.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;
    }
.end annotation


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lv2/com/playhaven/requests/open/PHOpenRequest;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->context:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 41
    return-void
.end method


# virtual methods
.method public send()V
    .locals 4

    .prologue
    .line 55
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 57
    .local v0, "config":Lv2/com/playhaven/configuration/PHConfiguration;
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    sget-object v3, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lv2/com/playhaven/configuration/PHConfiguration;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-super {p0, v1}, Lv2/com/playhaven/requests/open/PHOpenRequest;->send(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 1
    .param p1, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 65
    new-instance v0, Lcom/playhaven/src/publishersdk/open/APIRequestDelegateAdapter;

    invoke-direct {v0, p1}, Lcom/playhaven/src/publishersdk/open/APIRequestDelegateAdapter;-><init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest;->setOpenRequestListener(Lv2/com/playhaven/listeners/PHOpenRequestListener;)V

    .line 66
    return-void
.end method

.method public setPrefetchListener(Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;)V
    .locals 1
    .param p1, "delegate"    # Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;

    .prologue
    .line 32
    new-instance v0, Lcom/playhaven/src/publishersdk/open/PrefetchDelegateAdapter;

    invoke-direct {v0, p1}, Lcom/playhaven/src/publishersdk/open/PrefetchDelegateAdapter;-><init>(Lcom/playhaven/src/publishersdk/open/PHPublisherOpenRequest$PrefetchListener;)V

    invoke-super {p0, v0}, Lv2/com/playhaven/requests/open/PHOpenRequest;->setPrefetchListener(Lv2/com/playhaven/listeners/PHPrefetchListener;)V

    .line 33
    return-void
.end method
