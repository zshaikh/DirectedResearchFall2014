.class public Lcom/fusepowered/m2/m2l/util/HttpClients;
.super Ljava/lang/Object;
.source "HttpClients.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safeShutdown(Lorg/apache/http/client/HttpClient;)V
    .locals 2
    .parameter "httpClient"

    .prologue
    .line 7
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fusepowered/m2/m2l/util/HttpClients$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/util/HttpClients$1;-><init>(Lorg/apache/http/client/HttpClient;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 15
    return-void
.end method
