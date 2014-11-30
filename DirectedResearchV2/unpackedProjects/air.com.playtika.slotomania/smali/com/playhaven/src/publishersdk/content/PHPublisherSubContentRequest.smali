.class public Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;
.super Lcom/playhaven/src/common/PHAPIRequest;
.source "PHPublisherSubContentRequest.java"


# instance fields
.field public callback:Ljava/lang/String;

.field public source:Lcom/playhaven/src/publishersdk/content/PHContentView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/playhaven/src/common/PHAPIRequest$Delegate;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/playhaven/src/common/PHAPIRequest;-><init>(Landroid/content/Context;Lcom/playhaven/src/common/PHAPIRequest$Delegate;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->fullUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->baseURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->fullUrl:Ljava/lang/String;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->fullUrl:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->baseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/playhaven/src/publishersdk/content/PHPublisherSubContentRequest;->baseURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 35
    invoke-super {p0}, Lcom/playhaven/src/common/PHAPIRequest;->send()V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "No URL set for PHPublisherSubContentRequest"

    invoke-static {v0}, Lcom/playhaven/src/utils/PHStringUtil;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
