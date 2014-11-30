.class final Lcom/dolphin/browser/test/a/e;
.super Ljava/lang/Object;
.source "MeasurableaClientConnManager.java"

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionRequest;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/test/a/d;

.field private b:Lorg/apache/http/conn/ClientConnectionRequest;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/test/a/d;Lorg/apache/http/conn/ClientConnectionRequest;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/dolphin/browser/test/a/e;->a:Lcom/dolphin/browser/test/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p2, p0, Lcom/dolphin/browser/test/a/e;->b:Lorg/apache/http/conn/ClientConnectionRequest;

    .line 230
    return-void
.end method


# virtual methods
.method public abortRequest()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/test/a/e;->b:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionRequest;->abortRequest()V

    .line 235
    return-void
.end method

.method public getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Lcom/dolphin/browser/test/a/f;

    iget-object v1, p0, Lcom/dolphin/browser/test/a/e;->a:Lcom/dolphin/browser/test/a/d;

    iget-object v2, p0, Lcom/dolphin/browser/test/a/e;->b:Lorg/apache/http/conn/ClientConnectionRequest;

    invoke-interface {v2, p1, p2, p3}, Lorg/apache/http/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/conn/ManagedClientConnection;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/test/a/f;-><init>(Lcom/dolphin/browser/test/a/d;Lorg/apache/http/conn/ManagedClientConnection;)V

    return-object v0
.end method
