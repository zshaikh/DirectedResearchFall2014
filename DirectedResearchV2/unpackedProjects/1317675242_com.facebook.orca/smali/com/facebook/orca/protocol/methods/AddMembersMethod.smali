.class public Lcom/facebook/orca/protocol/methods/AddMembersMethod;
.super Ljava/lang/Object;
.source "AddMembersMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/AddMembersParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a:Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/AddMembersParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 33
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a:Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;

    invoke-virtual {p1}, Lcom/facebook/orca/server/AddMembersParams;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/InviteeProtocolUtils;->a(Ljava/util/List;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 34
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "id"

    invoke-virtual {p1}, Lcom/facebook/orca/server/AddMembersParams;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "to"

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "addMembers"

    const-string v2, "POST"

    const-string v3, "/participants"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->STRING:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/orca/server/AddMembersParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a(Lcom/facebook/orca/server/AddMembersParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/facebook/orca/server/AddMembersParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/AddMembersMethod;->a(Lcom/facebook/orca/server/AddMembersParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/AddMembersParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()V

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method
