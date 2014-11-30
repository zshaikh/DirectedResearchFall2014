.class Ldolphin/util/i;
.super Ljava/lang/Object;
.source "FileUploader.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/util/h;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ldolphin/util/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpResponse;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 62
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "UPLOAD"

    invoke-static {v1, v0}, Ldolphin/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Ldolphin/util/i;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
