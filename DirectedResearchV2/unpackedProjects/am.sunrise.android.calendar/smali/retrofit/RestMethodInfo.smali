.class final Lretrofit/RestMethodInfo;
.super Ljava/lang/Object;
.source "RestMethodInfo.java"


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field final isObservable:Z

.field final isSynchronous:Z

.field loaded:Z

.field final method:Ljava/lang/reflect/Method;

.field requestHasBody:Z

.field requestMethod:Ljava/lang/String;

.field requestParamNames:[Ljava/lang/String;

.field requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

.field requestQuery:Ljava/lang/String;

.field requestType:Lretrofit/RestMethodInfo$RequestType;

.field requestUrl:Ljava/lang/String;

.field requestUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field responseObjectType:Ljava/lang/reflect/Type;

.field final responseType:Lretrofit/RestMethodInfo$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    .line 59
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v2, p0, Lretrofit/RestMethodInfo;->loaded:Z

    .line 93
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    .line 106
    iput-object p1, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    .line 107
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseResponseType()Lretrofit/RestMethodInfo$ResponseType;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    .line 108
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    .line 109
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lretrofit/RestMethodInfo;->isObservable:Z

    .line 110
    return-void

    :cond_0
    move v0, v2

    .line 108
    goto :goto_0

    :cond_1
    move v1, v2

    .line 109
    goto :goto_1
.end method

.method private static getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 313
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move v1, v2

    .line 314
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 315
    aget-object v0, v3, v1

    .line 316
    instance-of v4, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_0

    .line 317
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v2

    aput-object v0, v3, v1

    .line 314
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 320
    :cond_1
    aget-object v0, v3, v2

    return-object v0
.end method

.method private parseHeaders([Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 238
    array-length v3, p1

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    aget-object v4, p1, v0

    .line 239
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 240
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_1

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header must be in the form \"Name: Value\": \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    new-instance v6, Lretrofit/client/Header;

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_2
    return-object v2
.end method

.method private parseMethodAnnotations()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 123
    iget-object v0, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_a

    aget-object v1, v6, v5

    .line 124
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v8

    .line 125
    const/4 v2, 0x0

    .line 128
    invoke-virtual {v8}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    array-length v10, v9

    move v3, v4

    :goto_1
    if-ge v3, v10, :cond_0

    aget-object v0, v9, v3

    .line 129
    const-class v11, Lretrofit/http/RestMethod;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v12

    if-ne v11, v12, :cond_1

    .line 130
    check-cast v0, Lretrofit/http/RestMethod;

    move-object v2, v0

    .line 135
    :cond_0
    if-eqz v2, :cond_4

    .line 136
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " contains multiple HTTP methods. Found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 146
    :cond_2
    :try_start_0
    const-string v0, "value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v8, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    invoke-direct {p0, v0}, Lretrofit/RestMethodInfo;->parsePath(Ljava/lang/String;)V

    .line 155
    invoke-interface {v2}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    .line 156
    invoke-interface {v2}, Lretrofit/http/RestMethod;->hasBody()Z

    move-result v0

    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    .line 123
    :cond_3
    :goto_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to extract path from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " annotation on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 157
    :cond_4
    const-class v0, Lretrofit/http/Headers;

    if-ne v8, v0, :cond_6

    move-object v0, v1

    .line 158
    check-cast v0, Lretrofit/http/Headers;

    invoke-interface {v0}, Lretrofit/http/Headers;->value()[Ljava/lang/String;

    move-result-object v0

    .line 159
    array-length v1, v0

    if-nez v1, :cond_5

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Headers annotation was empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_5
    invoke-direct {p0, v0}, Lretrofit/RestMethodInfo;->parseHeaders([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    goto :goto_2

    .line 163
    :cond_6
    const-class v0, Lretrofit/http/Multipart;

    if-ne v8, v0, :cond_8

    .line 164
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v0, v1, :cond_7

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only one encoding annotation per method is allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_7
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto/16 :goto_2

    .line 169
    :cond_8
    const-class v0, Lretrofit/http/FormUrlEncoded;

    if-ne v8, v0, :cond_3

    .line 170
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v0, v1, :cond_9

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only one encoding annotation per method is allowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_9
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto/16 :goto_2

    .line 178
    :cond_a
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not annotated with request type (e.g., GET, POST)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_b
    iget-boolean v0, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    if-nez v0, :cond_d

    .line 183
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-ne v0, v1, :cond_c

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multipart can only be specified on HTTP methods with request body (e.g., POST). ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_c
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v1, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-ne v0, v1, :cond_d

    .line 190
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., POST). ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_d
    return-void
.end method

.method private parseParameters()V
    .locals 18

    .prologue
    .line 328
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 330
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v9

    .line 331
    array-length v1, v9

    .line 332
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lretrofit/RestMethodInfo;->isObservable:Z

    if-nez v2, :cond_1a

    .line 333
    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 336
    :goto_0
    new-array v10, v2, [Ljava/lang/String;

    .line 337
    move-object/from16 v0, p0

    iput-object v10, v0, Lretrofit/RestMethodInfo;->requestParamNames:[Ljava/lang/String;

    .line 338
    new-array v11, v2, [Lretrofit/RestMethodInfo$ParamUsage;

    .line 339
    move-object/from16 v0, p0

    iput-object v11, v0, Lretrofit/RestMethodInfo;->requestParamUsage:[Lretrofit/RestMethodInfo$ParamUsage;

    .line 341
    const/4 v5, 0x0

    .line 342
    const/4 v4, 0x0

    .line 343
    const/4 v3, 0x0

    .line 345
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    if-ge v7, v2, :cond_15

    .line 346
    aget-object v12, v8, v7

    .line 347
    aget-object v13, v9, v7

    .line 348
    if-eqz v13, :cond_13

    .line 349
    array-length v14, v13

    const/4 v1, 0x0

    move v6, v1

    :goto_2
    if-ge v6, v14, :cond_13

    aget-object v1, v13, v6

    .line 350
    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v15

    .line 352
    const-class v16, Lretrofit/http/Path;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 353
    check-cast v1, Lretrofit/http/Path;

    invoke-interface {v1}, Lretrofit/http/Path;->value()Ljava/lang/String;

    move-result-object v1

    .line 354
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lretrofit/RestMethodInfo;->validatePathName(Ljava/lang/String;)V

    .line 356
    aput-object v1, v10, v7

    .line 357
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 349
    :goto_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v1

    goto :goto_2

    .line 358
    :cond_0
    const-class v16, Lretrofit/http/EncodedPath;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 359
    check-cast v1, Lretrofit/http/EncodedPath;

    invoke-interface {v1}, Lretrofit/http/EncodedPath;->value()Ljava/lang/String;

    move-result-object v1

    .line 360
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lretrofit/RestMethodInfo;->validatePathName(Ljava/lang/String;)V

    .line 362
    aput-object v1, v10, v7

    .line 363
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_PATH:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 364
    goto :goto_3

    :cond_1
    const-class v16, Lretrofit/http/Query;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 365
    check-cast v1, Lretrofit/http/Query;

    invoke-interface {v1}, Lretrofit/http/Query;->value()Ljava/lang/String;

    move-result-object v1

    .line 367
    aput-object v1, v10, v7

    .line 368
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 369
    goto :goto_3

    :cond_2
    const-class v16, Lretrofit/http/EncodedQuery;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 370
    check-cast v1, Lretrofit/http/EncodedQuery;

    invoke-interface {v1}, Lretrofit/http/EncodedQuery;->value()Ljava/lang/String;

    move-result-object v1

    .line 372
    aput-object v1, v10, v7

    .line 373
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 374
    goto :goto_3

    :cond_3
    const-class v16, Lretrofit/http/QueryMap;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 375
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 376
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@QueryMap parameter type must be Map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_4
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    goto :goto_3

    .line 380
    :cond_5
    const-class v16, Lretrofit/http/EncodedQueryMap;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 381
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 382
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@EncodedQueryMap parameter type must be Map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_6
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->ENCODED_QUERY_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    .line 386
    :cond_7
    const-class v16, Lretrofit/http/Header;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 387
    check-cast v1, Lretrofit/http/Header;

    invoke-interface {v1}, Lretrofit/http/Header;->value()Ljava/lang/String;

    move-result-object v1

    .line 388
    const-class v15, Ljava/lang/String;

    if-eq v12, v15, :cond_8

    .line 389
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@Header parameter type must be String: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    :cond_8
    aput-object v1, v10, v7

    .line 393
    sget-object v1, Lretrofit/RestMethodInfo$ParamUsage;->HEADER:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v1, v11, v7

    move v1, v3

    move v3, v4

    move v4, v5

    .line 394
    goto/16 :goto_3

    :cond_9
    const-class v16, Lretrofit/http/Field;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-eq v5, v15, :cond_a

    .line 396
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@Field parameters can only be used with form encoding."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_a
    check-cast v1, Lretrofit/http/Field;

    invoke-interface {v1}, Lretrofit/http/Field;->value()Ljava/lang/String;

    move-result-object v5

    .line 402
    const/4 v1, 0x1

    .line 403
    aput-object v5, v10, v7

    .line 404
    sget-object v5, Lretrofit/RestMethodInfo$ParamUsage;->FIELD:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v5, v11, v7

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    .line 405
    goto/16 :goto_3

    :cond_b
    const-class v16, Lretrofit/http/FieldMap;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_e

    .line 406
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v5, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-eq v1, v5, :cond_c

    .line 407
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@Field parameters can only be used with form encoding."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_c
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 411
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@FieldMap parameter type must be Map."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 414
    :cond_d
    const/4 v1, 0x1

    .line 415
    sget-object v5, Lretrofit/RestMethodInfo$ParamUsage;->FIELD_MAP:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v5, v11, v7

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    goto/16 :goto_3

    .line 416
    :cond_e
    const-class v16, Lretrofit/http/Part;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 417
    move-object/from16 v0, p0

    iget-object v4, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-eq v4, v15, :cond_f

    .line 418
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@Part parameters can only be used with multipart encoding."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 422
    :cond_f
    check-cast v1, Lretrofit/http/Part;

    invoke-interface {v1}, Lretrofit/http/Part;->value()Ljava/lang/String;

    move-result-object v4

    .line 424
    const/4 v1, 0x1

    .line 425
    aput-object v4, v10, v7

    .line 426
    sget-object v4, Lretrofit/RestMethodInfo$ParamUsage;->PART:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v4, v11, v7

    move v4, v5

    move/from16 v17, v1

    move v1, v3

    move/from16 v3, v17

    .line 427
    goto/16 :goto_3

    :cond_10
    const-class v1, Lretrofit/http/Body;

    if-ne v15, v1, :cond_19

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v1, v15, :cond_11

    .line 429
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 432
    :cond_11
    if-eqz v3, :cond_12

    .line 433
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method annotated with multiple Body method annotations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 437
    :cond_12
    const/4 v1, 0x1

    .line 438
    sget-object v3, Lretrofit/RestMethodInfo$ParamUsage;->BODY:Lretrofit/RestMethodInfo$ParamUsage;

    aput-object v3, v11, v7

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    .line 443
    :cond_13
    aget-object v1, v11, v7

    if-nez v1, :cond_14

    .line 444
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Retrofit annotation found on parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_14
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_1

    .line 449
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v2, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-ne v1, v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    if-nez v1, :cond_16

    if-eqz v3, :cond_16

    .line 450
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Non-body HTTP method cannot contain @Body or @TypedOutput."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v2, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-ne v1, v2, :cond_17

    if-nez v5, :cond_17

    .line 453
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Form-encoded method must contain at least one @Field."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 455
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v2, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-ne v1, v2, :cond_18

    if-nez v4, :cond_18

    .line 456
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Multipart method must contain at least one @Part."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_18
    return-void

    :cond_19
    move v1, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_3

    :cond_1a
    move v2, v1

    goto/16 :goto_0
.end method

.method private parsePath(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 200
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL path \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" on method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must start with \'/\'. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_1
    const/4 v0, 0x0

    .line 213
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 214
    const/4 v1, -0x1

    if-eq v2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_2

    .line 215
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 216
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL query string \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" on method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " may not have replace block."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p1

    .line 229
    :cond_3
    invoke-static {p1}, Lretrofit/RestMethodInfo;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 231
    iput-object v1, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    .line 232
    iput-object v2, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    .line 233
    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestQuery:Ljava/lang/String;

    .line 234
    return-void
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 479
    sget-object v0, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 480
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 481
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 482
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_0
    return-object v1
.end method

.method private parseResponseType()Lretrofit/RestMethodInfo$ResponseType;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    iget-object v0, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 259
    iget-object v0, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 260
    array-length v1, v0

    if-lez v1, :cond_9

    .line 261
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 263
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 264
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 266
    :goto_0
    instance-of v6, v0, Ljava/lang/Class;

    if-eqz v6, :cond_7

    .line 267
    check-cast v0, Ljava/lang/Class;

    .line 271
    :goto_1
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v5, v2, :cond_0

    move v2, v3

    .line 272
    :goto_2
    if-eqz v0, :cond_1

    const-class v6, Lretrofit/Callback;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 275
    :goto_3
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " may only have return type or Callback as last argument, not both."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v4

    .line 271
    goto :goto_2

    :cond_1
    move v0, v4

    .line 272
    goto :goto_3

    .line 280
    :cond_2
    if-nez v2, :cond_3

    if-nez v0, :cond_3

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have either a return type or Callback as last argument."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_3
    if-eqz v2, :cond_5

    .line 287
    sget-boolean v0, Lretrofit/Platform;->HAS_RX_JAVA:Z

    if-eqz v0, :cond_4

    .line 288
    invoke-static {v5}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lretrofit/RestMethodInfo$RxSupport;->isObservable(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    invoke-static {v5, v0}, Lretrofit/RestMethodInfo$RxSupport;->getObservableType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 291
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 292
    sget-object v0, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    .line 302
    :goto_4
    return-object v0

    .line 295
    :cond_4
    iput-object v5, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 296
    sget-object v0, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_4

    .line 299
    :cond_5
    invoke-static {v1}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lretrofit/Callback;

    invoke-static {v1, v0, v2}, Lretrofit/Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 300
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_6

    .line 301
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 302
    sget-object v0, Lretrofit/RestMethodInfo$ResponseType;->VOID:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_4

    .line 305
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last parameter of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be of type Callback<X> or Callback<? super X>. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    move-object v0, v2

    goto/16 :goto_1

    :cond_8
    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_1
.end method

.method private validatePathName(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 461
    sget-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path parameter name is not valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Must match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method URL \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" does not contain {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized init()V
    .locals 1

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseMethodAnnotations()V

    .line 116
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseParameters()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
