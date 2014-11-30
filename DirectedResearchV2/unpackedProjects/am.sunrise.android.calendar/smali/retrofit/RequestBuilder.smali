.class final Lretrofit/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"

# interfaces
.implements Lretrofit/RequestInterceptor$RequestFacade;


# instance fields
.field private apiUrl:Ljava/lang/String;

.field private body:Lretrofit/mime/TypedOutput;

.field private final converter:Lretrofit/converter/Converter;

.field private final formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final isObservable:Z

.field private final isSynchronous:Z

.field private final multipartBody:Lretrofit/mime/MultipartTypedOutput;

.field private final paramNames:[Ljava/lang/String;

.field private final paramUsages:[Lretrofit/RestMethodInfo$ParamUsage;

.field private queryParams:Ljava/lang/StringBuilder;

.field private relativeUrl:Ljava/lang/String;

.field private final requestMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lretrofit/converter/Converter;Lretrofit/RestMethodInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    .line 55
    iget-object v0, p2, Lretrofit/RestMethodInfo;->requestParamNames:[Ljava/lang/String;

    iput-object v0, p0, Lretrofit/RequestBuilder;->paramNames:[Ljava/lang/String;

    .line 56
    iget-object v0, p2, Lretrofit/RestMethodInfo;->requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

    iput-object v0, p0, Lretrofit/RequestBuilder;->paramUsages:[Lretrofit/RestMethodInfo$ParamUsage;

    .line 57
    iget-object v0, p2, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    iput-object v0, p0, Lretrofit/RequestBuilder;->requestMethod:Ljava/lang/String;

    .line 58
    iget-boolean v0, p2, Lretrofit/RestMethodInfo;->isSynchronous:Z

    iput-boolean v0, p0, Lretrofit/RequestBuilder;->isSynchronous:Z

    .line 59
    iget-boolean v0, p2, Lretrofit/RestMethodInfo;->isObservable:Z

    iput-boolean v0, p0, Lretrofit/RequestBuilder;->isObservable:Z

    .line 61
    iget-object v0, p2, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 65
    :cond_0
    iget-object v0, p2, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    iput-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 67
    iget-object v0, p2, Lretrofit/RestMethodInfo;->requestQuery:Ljava/lang/String;

    .line 68
    if-eqz v0, :cond_1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    sget-object v0, Lretrofit/RequestBuilder$1;->$SwitchMap$retrofit$RestMethodInfo$RequestType:[I

    iget-object v1, p2, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    invoke-virtual {v1}, Lretrofit/RestMethodInfo$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown request type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :pswitch_0
    new-instance v0, Lretrofit/mime/FormUrlEncodedTypedOutput;

    invoke-direct {v0}, Lretrofit/mime/FormUrlEncodedTypedOutput;-><init>()V

    iput-object v0, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 75
    iput-object v3, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    .line 76
    iget-object v0, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    iput-object v0, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    .line 91
    :goto_0
    return-void

    .line 79
    :pswitch_1
    iput-object v3, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 80
    new-instance v0, Lretrofit/mime/MultipartTypedOutput;

    invoke-direct {v0}, Lretrofit/mime/MultipartTypedOutput;-><init>()V

    iput-object v0, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    .line 81
    iget-object v0, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    iput-object v0, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto :goto_0

    .line 84
    :pswitch_2
    iput-object v3, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    .line 85
    iput-object v3, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Path replacement name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    if-nez p2, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path replacement \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" value must not be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    if-eqz p3, :cond_2

    .line 126
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    const-string v1, "+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_2
    iget-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert path parameter \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" value to UTF-8:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Query param name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    if-nez p2, :cond_1

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query param \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" value must not be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    if-eqz p3, :cond_2

    .line 158
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 160
    :cond_2
    iget-object v0, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 161
    if-nez v0, :cond_4

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    move-object v1, v0

    .line 165
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/16 v0, 0x26

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    return-void

    .line 165
    :cond_3
    const/16 v0, 0x3f

    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert query parameter \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" value to UTF-8: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method public addEncodedQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 147
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Header name must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 102
    if-nez v0, :cond_1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    .line 105
    :cond_1
    new-instance v1, Lretrofit/client/Header;

    invoke-direct {v1, p1, p2}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method build()Lretrofit/client/Request;
    .locals 5

    .prologue
    .line 297
    iget-object v0, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    invoke-virtual {v0}, Lretrofit/mime/MultipartTypedOutput;->getPartCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart requests must contain at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_0
    iget-object v0, p0, Lretrofit/RequestBuilder;->apiUrl:Ljava/lang/String;

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 308
    :cond_1
    iget-object v0, p0, Lretrofit/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v0, p0, Lretrofit/RequestBuilder;->queryParams:Ljava/lang/StringBuilder;

    .line 311
    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 315
    :cond_2
    new-instance v0, Lretrofit/client/Request;

    iget-object v2, p0, Lretrofit/RequestBuilder;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lretrofit/RequestBuilder;->headers:Ljava/util/List;

    iget-object v4, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    invoke-direct {v0, v2, v1, v3, v4}, Lretrofit/client/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lretrofit/mime/TypedOutput;)V

    return-object v0
.end method

.method setApiUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lretrofit/RequestBuilder;->apiUrl:Ljava/lang/String;

    .line 95
    return-void
.end method

.method setArguments([Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 294
    :cond_0
    return-void

    .line 177
    :cond_1
    array-length v0, p1

    .line 178
    iget-boolean v1, p0, Lretrofit/RequestBuilder;->isSynchronous:Z

    if-nez v1, :cond_15

    iget-boolean v1, p0, Lretrofit/RequestBuilder;->isObservable:Z

    if-nez v1, :cond_15

    .line 179
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    move v6, v4

    .line 181
    :goto_1
    if-ge v6, v1, :cond_0

    .line 182
    iget-object v0, p0, Lretrofit/RequestBuilder;->paramNames:[Ljava/lang/String;

    aget-object v7, v0, v6

    .line 183
    aget-object v0, p1, v6

    .line 184
    iget-object v2, p0, Lretrofit/RequestBuilder;->paramUsages:[Lretrofit/RestMethodInfo$ParamUsage;

    aget-object v2, v2, v6

    .line 185
    sget-object v5, Lretrofit/RequestBuilder$1;->$SwitchMap$retrofit$RestMethodInfo$ParamUsage:[I

    invoke-virtual {v2}, Lretrofit/RestMethodInfo$ParamUsage;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown parameter usage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :pswitch_0
    if-nez v0, :cond_2

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path parameter \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" value must not be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lretrofit/RequestBuilder;->addPathParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_3
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 194
    :pswitch_1
    if-nez v0, :cond_4

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path parameter \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" value must not be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lretrofit/RequestBuilder;->addEncodedPathParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 202
    :pswitch_2
    if-eqz v0, :cond_3

    .line 203
    sget-object v5, Lretrofit/RestMethodInfo$ParamUsage;->QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    if-ne v2, v5, :cond_6

    move v2, v3

    .line 204
    :goto_3
    instance-of v5, v0, Ljava/lang/Iterable;

    if-eqz v5, :cond_7

    .line 205
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 206
    if-eqz v5, :cond_5

    .line 207
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7, v5, v2}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    :cond_6
    move v2, v4

    .line 203
    goto :goto_3

    .line 210
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 211
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v8

    move v5, v4

    :goto_5
    if-ge v5, v8, :cond_3

    .line 212
    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 213
    if-eqz v9, :cond_8

    .line 214
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, v9, v2}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 211
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 218
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v7, v0, v2}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2

    .line 224
    :pswitch_3
    if-eqz v0, :cond_3

    .line 225
    sget-object v5, Lretrofit/RestMethodInfo$ParamUsage;->QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    if-ne v2, v5, :cond_b

    move v2, v3

    .line 226
    :goto_6
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 228
    if-eqz v7, :cond_a

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v0, v7, v2}, Lretrofit/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_b
    move v2, v4

    .line 225
    goto :goto_6

    .line 235
    :pswitch_4
    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lretrofit/RequestBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 240
    :pswitch_5
    if-eqz v0, :cond_3

    .line 241
    instance-of v2, v0, Ljava/lang/Iterable;

    if-eqz v2, :cond_d

    .line 242
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_c

    .line 244
    iget-object v5, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v7, v2}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 247
    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 248
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    move v2, v4

    :goto_9
    if-ge v2, v5, :cond_3

    .line 249
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 250
    if-eqz v8, :cond_e

    .line 251
    iget-object v9, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 255
    :cond_f
    iget-object v2, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 260
    :pswitch_6
    if-eqz v0, :cond_3

    .line 261
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 263
    if-eqz v5, :cond_10

    .line 264
    iget-object v7, p0, Lretrofit/RequestBuilder;->formBody:Lretrofit/mime/FormUrlEncodedTypedOutput;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Lretrofit/mime/FormUrlEncodedTypedOutput;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 270
    :pswitch_7
    if-eqz v0, :cond_3

    .line 271
    instance-of v2, v0, Lretrofit/mime/TypedOutput;

    if-eqz v2, :cond_11

    .line 272
    iget-object v2, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    check-cast v0, Lretrofit/mime/TypedOutput;

    invoke-virtual {v2, v7, v0}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_2

    .line 273
    :cond_11
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 274
    iget-object v2, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    new-instance v5, Lretrofit/mime/TypedString;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Lretrofit/mime/TypedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v5}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_2

    .line 276
    :cond_12
    iget-object v2, p0, Lretrofit/RequestBuilder;->multipartBody:Lretrofit/mime/MultipartTypedOutput;

    iget-object v5, p0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    invoke-interface {v5, v0}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lretrofit/mime/MultipartTypedOutput;->addPart(Ljava/lang/String;Lretrofit/mime/TypedOutput;)V

    goto/16 :goto_2

    .line 281
    :pswitch_8
    if-nez v0, :cond_13

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Body parameter value must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_13
    instance-of v2, v0, Lretrofit/mime/TypedOutput;

    if-eqz v2, :cond_14

    .line 285
    check-cast v0, Lretrofit/mime/TypedOutput;

    iput-object v0, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto/16 :goto_2

    .line 287
    :cond_14
    iget-object v2, p0, Lretrofit/RequestBuilder;->converter:Lretrofit/converter/Converter;

    invoke-interface {v2, v0}, Lretrofit/converter/Converter;->toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RequestBuilder;->body:Lretrofit/mime/TypedOutput;

    goto/16 :goto_2

    :cond_15
    move v1, v0

    goto/16 :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
