.class public Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherMetadataRequest.java"


# instance fields
.field public placement:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;
    .param p3, "placement"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p3}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->setDelegate(Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placement"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public baseURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "/v3/publisher/content/"

    invoke-super {p0, v0}, Lcom/playhaven/src/common/PHAPIRequest;->createAPIURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdditionalParams()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 32
    .local v0, "params":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 33
    const-string v1, "placement_id"

    iget-object v2, p0, Lcom/playhaven/src/publishersdk/metadata/PHPublisherMetadataRequest;->placement:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_0
    const-string v1, "metadata"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-object v0
.end method
