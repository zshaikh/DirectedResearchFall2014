.class Lcom/c/a/a/a/c;
.super Ljava/lang/Object;
.source "TEvernoteHttpClient.java"

# interfaces
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;


# instance fields
.field final synthetic a:Lcom/c/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/b;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/c/a/a/a/c;->a:Lcom/c/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 2

    .prologue
    .line 191
    const-wide/32 v0, 0x1d4c0

    return-wide v0
.end method
