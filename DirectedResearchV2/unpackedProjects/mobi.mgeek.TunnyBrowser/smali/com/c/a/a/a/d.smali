.class Lcom/c/a/a/a/d;
.super Ljava/lang/Object;
.source "TEvernoteHttpClient.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# instance fields
.field final synthetic a:Lcom/c/a/a/a/b;


# direct methods
.method constructor <init>(Lcom/c/a/a/a/b;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/c/a/a/a/d;->a:Lcom/c/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method
