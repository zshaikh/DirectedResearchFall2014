.class public Lcom/facebook/orca/protocol/base/SingleMethodRunner;
.super Ljava/lang/Object;
.source "SingleMethodRunner.java"


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

.field private final f:Lcom/facebook/orca/app/OrcaAppType;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/config/OrcaHttpConfig;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Lcom/google/inject/Provider;Lcom/google/inject/Provider;ZLcom/facebook/orca/app/OrcaAppType;)V
    .locals 0
    .param p5    # Z
        .annotation runtime Lcom/facebook/orca/annotations/PhpProfiling;
        .end annotation
    .end param
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
            ">;Z",
            "Lcom/facebook/orca/app/OrcaAppType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a:Lcom/facebook/orca/config/OrcaHttpConfig;

    .line 57
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 58
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/google/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Lcom/google/inject/Provider;

    .line 60
    iput-boolean p5, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Z

    .line 61
    iput-object p6, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->f:Lcom/facebook/orca/app/OrcaAppType;

    .line 62
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "api_key"

    iget-object v2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->f:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v2}, Lcom/facebook/orca/app/OrcaAppType;->getApiKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;-><init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 186
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->f:Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {v0}, Lcom/facebook/orca/app/OrcaAppType;->getAppSecret()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/SecureHashUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "sig"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method private b(Lcom/facebook/orca/protocol/base/ApiRequest;)Lorg/apache/http/entity/mime/MultipartEntity;
    .locals 7

    .prologue
    .line 141
    new-instance v1, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 143
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v2

    .line 144
    const-string v0, "method/auth.login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 145
    const-string v0, "method/auth.getSessionForApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 147
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    .line 148
    const-string v4, "access_token"

    new-instance v5, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 152
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    const-string v4, "method/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "method"

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 160
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Ljava/util/List;)V

    .line 163
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/NameValuePair;

    .line 164
    invoke-interface {p0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {p0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1

    .line 155
    :cond_3
    const-string v2, "DELETE"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "method"

    const-string v5, "DELETE"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lorg/apache/http/entity/mime/FormBodyPart;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_5

    .line 168
    invoke-virtual {v0}, Lorg/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/http/entity/mime/FormBodyPart;->c()Lorg/apache/james/mime4j/message/Body;

    move-result-object p0

    check-cast p0, Lorg/apache/http/entity/mime/content/ContentBody;

    invoke-virtual {v1, v2, p0}, Lorg/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 170
    :cond_5
    return-object v1
.end method


# virtual methods
.method a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "method"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a:Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v1}, Lcom/facebook/orca/config/OrcaHttpConfig;->a()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 90
    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    iget-boolean v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "hotprofiler"

    const-string v2, "3"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    const-string v0, "hotprofiler_ajax"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 95
    if-eqz v0, :cond_0

    .line 96
    const-string v2, "phprof_user"

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    :cond_0
    const-string v0, "GET"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    const-string v2, "access_token"

    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {v0}, Lcom/facebook/orca/auth/FacebookCredentials;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 105
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a:Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v1}, Lcom/facebook/orca/config/OrcaHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v1

    goto :goto_0

    .line 107
    :cond_2
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 118
    :goto_2
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v1, v2, :cond_6

    .line 119
    new-instance v1, Lcom/facebook/orca/protocol/base/JsonResponseHandler;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;-><init>()V

    .line 120
    iget-object v2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/codehaus/jackson/JsonNode;

    .line 122
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;->a()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lorg/codehaus/jackson/JsonNode;)V

    move-object v0, v1

    .line 132
    :goto_3
    return-object v0

    .line 109
    :cond_3
    const-string v0, "POST"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "DELETE"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    :cond_4
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b(Lcom/facebook/orca/protocol/base/ApiRequest;)Lorg/apache/http/entity/mime/MultipartEntity;

    move-result-object v0

    .line 111
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v0, v2

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_6
    new-instance v1, Lcom/facebook/orca/protocol/base/StringResponseHandler;

    invoke-direct {v1}, Lcom/facebook/orca/protocol/base/StringResponseHandler;-><init>()V

    .line 129
    iget-object v2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 131
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/StringResponseHandler;->a()Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 132
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3
.end method

.method public a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PARAMS:",
            "Ljava/lang/Object;",
            "RESU",
            "LT:Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/orca/protocol/base/ApiMethod",
            "<TPARAMS;TRESU",
            "LT;",
            ">;TPARAMS;)TRESU",
            "LT;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-interface {p1, p2}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    .line 78
    invoke-virtual {p0, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;

    move-result-object v0

    .line 79
    invoke-interface {p1, p2, v0}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
