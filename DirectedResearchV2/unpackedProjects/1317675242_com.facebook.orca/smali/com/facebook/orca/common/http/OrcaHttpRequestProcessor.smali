.class public Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;
.super Ljava/lang/Object;
.source "OrcaHttpRequestProcessor.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static final c:Ljava/util/logging/Logger;


# instance fields
.field private final d:Lcom/facebook/orca/common/http/OrcaHttpClient;

.field private final e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "orca:OrcaHttpRequestProcessor"

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a:Ljava/lang/String;

    .line 30
    const-string v0, "OrcaHttpRequestProcessor"

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    .line 32
    const-class v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/common/http/OrcaHttpClient;Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    invoke-interface {p2, p3}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 214
    return-object v0

    .line 184
    :catch_0
    move-exception p0

    .line 185
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 188
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 196
    :cond_0
    :goto_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error"

    invoke-static {v0, v1, p0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 189
    :catch_1
    move-exception v0

    .line 192
    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->c:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Error consuming content after an exception."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 201
    :cond_1
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RuntimeException"

    invoke-static {v0, v1, p0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 203
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 206
    :cond_2
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IOException"

    invoke-static {v0, v1, p0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    check-cast p0, Ljava/io/IOException;

    throw p0

    .line 211
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Throwable"

    invoke-static {v0, v1, p0}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 137
    invoke-static {p1}, Lcom/facebook/orca/common/http/ProtocolExceptions;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-interface {v0}, Lcom/facebook/orca/common/http/OrcaHttpClient;->a()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 140
    :cond_0
    invoke-static {p1}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;)V

    .line 141
    const-class v0, Ljava/io/IOException;

    invoke-static {p1, v0}, Lcom/google/common/base/Throwables;->propagateIfPossible(Ljava/lang/Throwable;Ljava/lang/Class;)V

    .line 142
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;
    .locals 4

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 222
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    new-instance v0, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 229
    :cond_0
    return-object v0
.end method

.method private a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V
    .locals 1
    .param p3    # Lorg/apache/http/HttpResponse;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 160
    .line 161
    if-eqz p3, :cond_0

    .line 162
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    .line 166
    :cond_0
    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 88
    if-nez p3, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 94
    const/4 v2, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v0, p2}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpRequest;)V

    .line 100
    iget-object v3, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-direct {p0, p2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpHost;

    move-result-object v7

    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v3, v7, p2, v0}, Lcom/facebook/orca/common/http/OrcaHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 101
    :try_start_1
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lorg/apache/http/HttpResponse;)V

    .line 102
    invoke-direct {p0, p1, p3, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v7

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v0, v3, v7}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    .line 107
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 113
    :cond_1
    const/4 v2, 0x1

    .line 119
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v5

    move-object v0, p0

    move-object v1, p1

    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 122
    return-object v7

    .line 115
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 117
    :goto_0
    :try_start_2
    invoke-direct {p0, v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :catchall_0
    move-exception v4

    move-object v7, v4

    move-object v4, v0

    :goto_1
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v5

    move-object v0, p0

    move-object v1, p1

    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 122
    throw v7

    .line 119
    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v3, v4

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v7, v0

    goto :goto_1

    .line 115
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    const/4 v2, 0x0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v5

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    invoke-virtual {v3, p2}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpRequest;)V

    .line 60
    iget-object v3, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->d:Lcom/facebook/orca/common/http/OrcaHttpClient;

    invoke-interface {v3, p2}, Lcom/facebook/orca/common/http/OrcaHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 61
    :try_start_1
    iget-object v6, p0, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->e:Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/facebook/orca/common/http/OrcaHttpDebugProcessorHook;->a(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 63
    const/4 v2, 0x1

    .line 69
    invoke-virtual {v5}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 72
    return-object v3

    .line 65
    :catch_0
    move-exception v3

    .line 67
    :goto_0
    :try_start_2
    invoke-direct {p0, v3}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :catchall_0
    move-exception v6

    move-object v7, v6

    move-object v8, v3

    move-object v3, v4

    move-object v4, v8

    :goto_1
    invoke-virtual {v5}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;ZLorg/apache/http/HttpResponse;Ljava/lang/Throwable;J)V

    .line 72
    throw v7

    .line 69
    :catchall_1
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    goto :goto_1

    :catchall_2
    move-exception v6

    move-object v7, v6

    goto :goto_1

    .line 65
    :catch_1
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_0
.end method
