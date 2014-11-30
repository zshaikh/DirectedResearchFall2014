.class public Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;
.super Ljava/lang/Object;
.source "SendMessageParameterHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/attachments/MediaAttachmentFactory;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "orca:SendMessageParameterHelper"

    iput-object v0, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    .line 29
    return-void
.end method


# virtual methods
.method a(Lcom/facebook/orca/threads/Message;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    .line 55
    new-instance v1, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v2, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 56
    const-string v2, "latitude"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->a()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 57
    const-string v2, "longitude"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->b()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 58
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "altitude"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->c()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;D)V

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    const-string v2, "accuracy"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->e()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 64
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const-string v2, "heading"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->i()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 67
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->l()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 68
    const-string v2, "speed"

    invoke-virtual {v0}, Lcom/facebook/orca/location/Coordinates;->k()Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 70
    :cond_3
    return-object v1
.end method

.method a(Ljava/util/List;Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/facebook/orca/threads/Message;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "message"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, p2}, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->a(Lcom/facebook/orca/threads/Message;)Lorg/codehaus/jackson/node/ObjectNode;

    move-result-object v0

    .line 39
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "coordinates"

    invoke-virtual {v0}, Lorg/codehaus/jackson/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "offline_threading_id"

    invoke-virtual {p2}, Lcom/facebook/orca/threads/Message;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    if-eqz p3, :cond_3

    .line 48
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "object_attachment"

    invoke-direct {v0, v1, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_3
    return-void
.end method

.method b(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/protocol/base/ContentBody;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->s()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 83
    if-nez v0, :cond_0

    .line 84
    const-string v0, "orca:SendMessageParameterHelper"

    const-string v1, "No attachment found! Returning null..."

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 94
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;->b:Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/attachments/MediaAttachmentFactory;->b(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/attachments/MediaAttachment;

    move-result-object v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    const-string v0, "orca:SendMessageParameterHelper"

    const-string v1, "Unable to create an attachment from given resource"

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 91
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaAttachment;->e()Lcom/facebook/orca/protocol/base/ContentBody;

    move-result-object v0

    goto :goto_0
.end method
