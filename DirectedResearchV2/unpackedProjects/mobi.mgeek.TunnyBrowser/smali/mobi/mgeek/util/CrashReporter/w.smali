.class public Lmobi/mgeek/util/CrashReporter/w;
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

    iput-object v1, p0, Lmobi/mgeek/util/CrashReporter/w;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v1, 0x2

    new-array v1, v1, [Lmobi/mgeek/util/a/d;

    .line 41
    const/4 v2, 0x0

    new-instance v3, Lmobi/mgeek/util/a/a;

    const-string v4, "report"

    invoke-direct {v3, v4, p1}, Lmobi/mgeek/util/a/a;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v3, v1, v2

    .line 42
    const/4 v2, 0x1

    new-instance v3, Lmobi/mgeek/util/a/g;

    const-string v4, "package"

    invoke-direct {v3, v4, p3}, Lmobi/mgeek/util/a/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 43
    new-instance v2, Lmobi/mgeek/util/a/c;

    invoke-direct {v2, v1}, Lmobi/mgeek/util/a/c;-><init>([Lmobi/mgeek/util/a/d;)V

    .line 44
    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 46
    iget-object v1, p0, Lmobi/mgeek/util/CrashReporter/w;->a:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lmobi/mgeek/util/CrashReporter/y;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lmobi/mgeek/util/CrashReporter/y;-><init>(Lmobi/mgeek/util/CrashReporter/x;)V

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-class v1, Lmobi/mgeek/util/CrashReporter/w;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
