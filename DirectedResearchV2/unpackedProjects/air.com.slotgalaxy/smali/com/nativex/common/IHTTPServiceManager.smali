.class public interface abstract Lcom/nativex/common/IHTTPServiceManager;
.super Ljava/lang/Object;
.source "IHTTPServiceManager.java"


# virtual methods
.method public abstract execute(Lcom/nativex/common/Request;)Lcom/nativex/common/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method
