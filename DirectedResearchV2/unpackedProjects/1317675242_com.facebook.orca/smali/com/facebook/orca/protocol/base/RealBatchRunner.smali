.class public Lcom/facebook/orca/protocol/base/RealBatchRunner;
.super Lcom/facebook/orca/protocol/base/BatchRunner;
.source "RealBatchRunner.java"


# instance fields
.field private final a:Lcom/facebook/orca/config/OrcaHttpConfig;

.field private final b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final c:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/auth/FacebookCredentials;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/facebook/orca/config/OrcaHttpConfig;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/google/inject/Provider;Lcom/google/inject/Provider;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/config/OrcaHttpConfig;",
            "Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/auth/FacebookCredentials;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/facebook/orca/protocol/base/BatchRunner;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a:Lcom/facebook/orca/config/OrcaHttpConfig;

    .line 50
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 51
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Lcom/google/inject/Provider;

    .line 52
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->d:Lcom/google/inject/Provider;

    .line 53
    iput-boolean p5, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->e:Z

    .line 54
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 57
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 58
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a()Ljava/util/List;

    move-result-object v3

    .line 59
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 60
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 61
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 62
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v6

    .line 63
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v6

    .line 64
    new-instance v7, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v8, Lorg/codehaus/jackson/node/JsonNodeFactory;->b:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v7, v8}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 65
    const-string v8, "method"

    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v8

    .line 68
    const-string v9, "GET"

    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 69
    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 70
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "?"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 80
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 81
    const-string v9, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->d()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 84
    const-string v9, "depends_on"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v9, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lorg/apache/http/entity/mime/FormBodyPart;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    const-string v0, "attached_files"

    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lorg/apache/http/entity/mime/FormBodyPart;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v0, v9}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lorg/apache/http/entity/mime/FormBodyPart;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    const-string v0, "omit_response_on_success"

    invoke-virtual {v7, v0, v11}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 91
    const-string v0, "relative_url"

    invoke-virtual {v7, v0, v8}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v7}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    .line 93
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 71
    :cond_3
    const-string v9, "POST"

    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 72
    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 73
    const-string v10, "body"

    invoke-virtual {v7, v10, v9}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_4
    const-string v9, "DELETE"

    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 75
    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 76
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "?"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 78
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_6
    new-instance v5, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v5}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->d:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v0

    .line 98
    const-string v6, "access_token"

    new-instance v7, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v7, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 99
    invoke-virtual {v1}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    const-string v1, "RealBatchRunner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Request JSON: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_7
    const-string v1, "batch"

    new-instance v6, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-direct {v6, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v6}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 104
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/FormBodyPart;

    .line 105
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/FormBodyPart;->c()Lorg/apache/james/mime4j/message/Body;

    move-result-object v0

    check-cast v0, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-virtual {v5, v2, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_2

    .line 108
    :cond_8
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a:Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/OrcaHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 109
    iget-boolean v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->e:Z

    if-eqz v0, :cond_9

    .line 110
    const-string v0, "hotprofiler"

    const-string v2, "3"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 111
    const-string v0, "hotprofiler_ajax"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 113
    if-eqz v0, :cond_9

    .line 114
    const-string v2, "phprof_user"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 117
    :cond_9
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 120
    new-instance v1, Lcom/facebook/orca/protocol/base/JsonResponseHandler;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 122
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_a

    .line 123
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Received wrong number of batches in response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v5, v11

    .line 126
    :goto_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->w()I

    move-result v1

    if-ge v5, v1, :cond_c

    .line 127
    invoke-virtual {v0, v5}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    .line 128
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 129
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v7

    .line 130
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/base/ApiRequest;

    .line 132
    new-instance v8, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;

    invoke-direct {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;-><init>()V

    .line 133
    invoke-virtual {v8, v6}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v2

    sget-object v9, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v2, v9, :cond_b

    .line 137
    new-instance v2, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b()I

    move-result v9

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a()Ljava/util/List;

    move-result-object v8

    invoke-static {v6}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v6

    invoke-direct {v2, v9, v8, v6}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lorg/codehaus/jackson/JsonNode;)V

    .line 147
    :goto_4
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v7, v6, v2}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_3

    .line 142
    :cond_b
    new-instance v2, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b()I

    move-result v9

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a()Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v9, v8, v6}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 150
    :cond_c
    return-void
.end method
