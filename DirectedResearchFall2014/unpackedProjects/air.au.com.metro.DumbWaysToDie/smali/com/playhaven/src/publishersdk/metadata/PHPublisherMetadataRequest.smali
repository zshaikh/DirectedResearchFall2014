.class public Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;
.super Lv2/com/playhaven/requests/badge/PHBadgeRequest;
.source "PHPublisherMetadataRequest.java"

# interfaces
.implements Lcom/playhaven/src/common/PHAPIRequest;


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
.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "delegate"
    .parameter "placement"

    .prologue
    .line 26
    invoke-direct {p0, p1, p3}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;

    invoke-direct {v0, p2}, Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;-><init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-super {p0, v0}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->setMetadataListener(Lv2/com/playhaven/listeners/PHBadgeRequestListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "placement"

    .prologue
    .line 20
    invoke-direct {p0, p2}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;-><init>(Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->context:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method


# virtual methods
.method public send()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lv2/com/playhaven/configuration/PHConfiguration;

    invoke-direct {v0}, Lv2/com/playhaven/configuration/PHConfiguration;-><init>()V

    .line 36
    .local v0, config:Lv2/com/playhaven/configuration/PHConfiguration;
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v2, Lcom/playhaven/src/common/PHConfig;->token:Ljava/lang/String;

    sget-object v3, Lcom/playhaven/src/common/PHConfig;->secret:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lv2/com/playhaven/configuration/PHConfiguration;->setCredentials(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-super {p0, v1}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->send(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 43
    new-instance v0, Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;

    invoke-direct {v0, p1}, Lcom/playhaven/src/publishersdk/metadata/MetadataDelegateAdapter;-><init>(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    invoke-super {p0, v0}, Lv2/com/playhaven/requests/badge/PHBadgeRequest;->setMetadataListener(Lv2/com/playhaven/listeners/PHBadgeRequestListener;)V

    .line 44
    return-void
.end method
