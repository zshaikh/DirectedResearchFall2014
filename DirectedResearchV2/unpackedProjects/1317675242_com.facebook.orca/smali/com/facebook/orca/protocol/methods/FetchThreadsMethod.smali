.class public Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;
.super Ljava/lang/Object;
.source "FetchThreadsMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/FetchThreadsParams;",
        "Lcom/facebook/orca/server/FetchThreadsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    .line 35
    return-void
.end method

.method private b(Lcom/facebook/orca/server/FetchThreadsParams;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 55
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    .line 58
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v2, "folder=\'inbox\' AND archived=0"

    const-string v3, "timestamp DESC"

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsParams;->c()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 64
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/orca/server/FetchThreadsParams;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;)V

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder=\'inbox\' AND action_id > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsParams;->b()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    const/16 v4, 0x64

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 79
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/FetchThreadsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 6

    .prologue
    .line 39
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 40
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadsParams;->b()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->b(Lcom/facebook/orca/server/FetchThreadsParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchThreads"

    const-string v2, "GET"

    const-string v3, "method/fql.multiquery"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->c(Lcom/facebook/orca/server/FetchThreadsParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/FetchThreadsParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a(Lcom/facebook/orca/server/FetchThreadsParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/FetchThreadsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadsResult;
    .locals 15

    .prologue
    .line 85
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadsParams;->b()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v7, v0

    .line 89
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadsParams;->c()I

    move-result v0

    .line 90
    iget-object v2, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v2, v1, v7, v0}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;ZI)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;

    move-result-object v10

    .line 95
    if-nez v7, :cond_1

    iget v0, v10, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->d:I

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadsParams;->c()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    .line 99
    :goto_1
    new-instance v2, Lcom/facebook/orca/threads/ThreadsCollection;

    iget-object v3, v10, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v3, v0}, Lcom/facebook/orca/threads/ThreadsCollection;-><init>(Lcom/google/common/collect/ImmutableList;Z)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->b(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/threads/FolderCounts;

    move-result-object v5

    .line 104
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->c(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v6

    .line 107
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    iget-object v3, v10, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v4, v10, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->b:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/orca/server/FetchThreadsParams;->b()J

    move-result-wide v11

    iget-wide v13, v10, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->e:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-direct/range {v0 .. v11}, Lcom/facebook/orca/server/FetchThreadsResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadsCollection;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/threads/FolderCounts;Lcom/facebook/orca/notify/NotificationSetting;ZJJ)V

    return-object v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0

    .line 95
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/FetchThreadsParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchThreadsMethod;->a(Lcom/facebook/orca/server/FetchThreadsParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadsResult;

    move-result-object v0

    return-object v0
.end method
