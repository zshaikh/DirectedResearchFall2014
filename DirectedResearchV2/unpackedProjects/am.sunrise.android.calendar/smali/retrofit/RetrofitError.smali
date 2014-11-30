.class public Lretrofit/RetrofitError;
.super Ljava/lang/RuntimeException;
.source "RetrofitError.java"


# instance fields
.field private final converter:Lretrofit/converter/Converter;

.field private final networkError:Z

.field private final response:Lretrofit/client/Response;

.field private final successType:Ljava/lang/reflect/Type;

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;ZLjava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 53
    iput-object p1, p0, Lretrofit/RetrofitError;->url:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    .line 55
    iput-object p3, p0, Lretrofit/RetrofitError;->converter:Lretrofit/converter/Converter;

    .line 56
    iput-object p4, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    .line 57
    iput-boolean p5, p0, Lretrofit/RetrofitError;->networkError:Z

    .line 58
    return-void
.end method

.method public static conversionError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;Lretrofit/converter/ConversionException;)Lretrofit/RetrofitError;
    .locals 7

    .prologue
    .line 32
    new-instance v0, Lretrofit/RetrofitError;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;ZLjava/lang/Throwable;)V

    return-object v0
.end method

.method public static httpError(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;)Lretrofit/RetrofitError;
    .locals 7

    .prologue
    .line 37
    new-instance v0, Lretrofit/RetrofitError;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;ZLjava/lang/Throwable;)V

    return-object v0
.end method

.method public static networkError(Ljava/lang/String;Ljava/io/IOException;)Lretrofit/RetrofitError;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lretrofit/RetrofitError;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;ZLjava/lang/Throwable;)V

    return-object v0
.end method

.method public static unexpectedError(Ljava/lang/String;Ljava/lang/Throwable;)Lretrofit/RetrofitError;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lretrofit/RetrofitError;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lretrofit/RetrofitError;-><init>(Ljava/lang/String;Lretrofit/client/Response;Lretrofit/converter/Converter;Ljava/lang/reflect/Type;ZLjava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lretrofit/RetrofitError;->converter:Lretrofit/converter/Converter;

    iget-object v2, p0, Lretrofit/RetrofitError;->successType:Ljava/lang/reflect/Type;

    invoke-interface {v1, v0, v2}, Lretrofit/converter/Converter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/converter/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBodyAs(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lretrofit/RetrofitError;->converter:Lretrofit/converter/Converter;

    invoke-interface {v1, v0, p1}, Lretrofit/converter/Converter;->fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catch Lretrofit/converter/ConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResponse()Lretrofit/client/Response;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lretrofit/RetrofitError;->response:Lretrofit/client/Response;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lretrofit/RetrofitError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isNetworkError()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lretrofit/RetrofitError;->networkError:Z

    return v0
.end method
