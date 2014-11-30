.class public Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;
.super Ljava/lang/Object;
.source "SetThreadImageMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/ModifyThreadParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/MediaAttachmentFactory;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 32
    return-void
.end method

.method private b(Lcom/facebook/orca/server/ModifyThreadParams;)Lorg/apache/http/entity/mime/FormBodyPart;
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/server/ModifyThreadParams;->e()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to attach image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->e()Lcom/facebook/orca/protocol/base/ContentBody;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to attach image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    new-instance v1, Lorg/apache/http/entity/mime/FormBodyPart;

    const-string v2, "image"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/entity/mime/FormBodyPart;-><init>(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/ModifyThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 7

    .prologue
    .line 36
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 37
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tid"

    invoke-virtual {p1}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/server/ModifyThreadParams;->e()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->b(Lcom/facebook/orca/server/ModifyThreadParams;)Lorg/apache/http/entity/mime/FormBodyPart;

    move-result-object v0

    move-object v6, v0

    .line 47
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "setThreadImage"

    const-string v2, "POST"

    const-string v3, "method/messaging.setthreadimage"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lorg/apache/http/entity/mime/FormBodyPart;)V

    return-object v0

    .line 44
    :cond_0
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "delete"

    const-string v3, "1"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/orca/server/ModifyThreadParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a(Lcom/facebook/orca/server/ModifyThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/facebook/orca/server/ModifyThreadParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;->a(Lcom/facebook/orca/server/ModifyThreadParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/ModifyThreadParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()V

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
