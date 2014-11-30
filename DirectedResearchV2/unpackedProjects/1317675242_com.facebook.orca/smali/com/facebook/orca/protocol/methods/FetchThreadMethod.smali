.class public Lcom/facebook/orca/protocol/methods/FetchThreadMethod;
.super Ljava/lang/Object;
.source "FetchThreadMethod.java"

# interfaces
.implements Lcom/facebook/orca/protocol/base/ApiMethod;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/protocol/base/ApiMethod",
        "<",
        "Lcom/facebook/orca/server/FetchThreadParams;",
        "Lcom/facebook/orca/server/FetchThreadResult;",
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
    iput-object p1, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    .line 35
    return-void
.end method

.method private b(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 66
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->e(Lcom/facebook/orca/server/FetchThreadParams;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 75
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 76
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v2, "thread_id=\'%1$s\' AND timestamp > %2$d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->g()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->e(Lcom/facebook/orca/server/FetchThreadParams;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 92
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "single_recipient=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp DESC"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const-string v2, "thread_id IN (SELECT thread_id FROM #threads)"

    const-string v3, "timestamp DESC"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->e(Lcom/facebook/orca/server/FetchThreadParams;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/methods/FqlMultiQueryHelper;->a()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e(Lcom/facebook/orca/server/FetchThreadParams;)I
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 7

    .prologue
    .line 39
    const-string v3, "method/fql.multiquery"

    .line 40
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 41
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "format"

    const-string v2, "json"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->d(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_0
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    const-string v1, "fetchThread"

    const-string v2, "GET"

    sget-object v5, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V

    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->g()J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->b(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "queries"

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->c(Lcom/facebook/orca/server/FetchThreadParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/FetchThreadParams;

    invoke-virtual {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadResult;
    .locals 10

    .prologue
    .line 114
    invoke-virtual {p2}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 115
    new-instance v1, Lcom/facebook/orca/protocol/methods/FqlResultHelper;

    invoke-direct {v1, v0}, Lcom/facebook/orca/protocol/methods/FqlResultHelper;-><init>(Lorg/codehaus/jackson/JsonNode;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;ZI)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;

    move-result-object v4

    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;)Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "couldn\'t find canonical user"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v5, v0

    .line 130
    :goto_0
    iget-object v0, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "couldn\'t find thread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    .line 162
    :goto_1
    return-object v0

    .line 143
    :cond_2
    iget-object v0, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    .line 144
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid api response - multiple threads in fetchThread"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_3
    iget-object v0, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->a:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/threads/ThreadSummary;

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a:Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->e(Lcom/facebook/orca/server/FetchThreadParams;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;->a(Lcom/facebook/orca/protocol/methods/FqlResultHelper;I)Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->g()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gez v1, :cond_4

    iget v1, v0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;->b:I

    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->e(Lcom/facebook/orca/server/FetchThreadParams;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_4

    const/4 v1, 0x1

    .line 159
    :goto_2
    new-instance v3, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$MessagesResult;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v3, v6, v0, v1}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 162
    new-instance v0, Lcom/facebook/orca/server/FetchThreadResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    iget-object v4, v4, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper$ThreadsResult;->c:Lcom/google/common/collect/ImmutableList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/server/FetchThreadResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threads/MessagesCollection;Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/users/User;J)V

    goto :goto_1

    .line 155
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    move-object v5, v0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Lcom/facebook/orca/server/FetchThreadParams;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;->a(Lcom/facebook/orca/server/FetchThreadParams;Lcom/facebook/orca/protocol/base/ApiResponse;)Lcom/facebook/orca/server/FetchThreadResult;

    move-result-object v0

    return-object v0
.end method
