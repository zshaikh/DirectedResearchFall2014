.class public Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;
.super Ljava/lang/Object;
.source "FetchMoreThreadsMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/FetchMoreThreadsParams;",
        "Lcom/facebook/orca/server/FetchMoreThreadsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    .line 34
    return-void
.end method

.method private b(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 76
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 77
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v2, "folder=\'inbox\' AND archived=0 AND timestamp <= %1$d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 84
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 39
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;->b(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchThreads"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;->a(Lcom/facebook/orca/server/FetchMoreThreadsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/FetchMoreThreadsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchMoreThreadsResult;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()I

    move-result v0

    .line 56
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v2, v1, v4, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;ZI)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;

    move-result-object v3

    .line 61
    iget v0, v3, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->d:I

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchMoreThreadsParams;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    .line 64
    :goto_0
    new-instance v2, Lcom/facebook/orca/threads/ThreadsCollection;

    iget-object v1, v3, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v1, v0}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 68
    new-instance v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    iget-object v3, v3, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/FetchMoreThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;J)V

    return-object v0

    :cond_0
    move v0, v4

    .line 61
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;->a(Lcom/facebook/orca/server/FetchMoreThreadsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchMoreThreadsResult;

    move-result-object v0

    return-object v0
.end method
