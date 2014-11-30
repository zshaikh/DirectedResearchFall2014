.class public Ldolphin/util/g;
.super Ljava/lang/Object;
.source "FileUploader.java"


# instance fields
.field private a:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 30
    const-string v1, "http.protocol.version"

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 31
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Ldolphin/util/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v3, 0x2

    new-array v3, v3, [Ldolphin/util/a/d;

    .line 41
    const/4 v4, 0x0

    new-instance v5, Ldolphin/util/a/a;

    const-string v6, "report"

    invoke-direct {v5, v6, p1}, Ldolphin/util/a/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v5, v3, v4

    .line 42
    const/4 v4, 0x1

    new-instance v5, Ldolphin/util/a/g;

    const-string v6, "package"

    invoke-direct {v5, v6, p3}, Ldolphin/util/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 43
    new-instance v4, Ldolphin/util/a/c;

    invoke-direct {v4, v3}, Ldolphin/util/a/c;-><init>([Ldolphin/util/a/d;)V

    .line 44
    invoke-virtual {v2, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 46
    iget-object v3, p0, Ldolphin/util/g;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v4, Ldolphin/util/i;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ldolphin/util/i;-><init>(Ldolphin/util/h;)V

    invoke-virtual {v3, v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-class v2, Ldolphin/util/g;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Ldolphin/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 52
    goto :goto_0
.end method
