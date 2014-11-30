.class Ldolphin/webkit/w;
.super Ldolphin/webkit/SslErrorHandler;
.source "BrowserFrame.java"


# instance fields
.field final synthetic a:Ldolphin/net/http/SslError;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ldolphin/webkit/BrowserFrame;


# direct methods
.method constructor <init>(Ldolphin/webkit/BrowserFrame;Ldolphin/net/http/SslError;II)V
    .locals 0

    .prologue
    .line 1323
    iput-object p1, p0, Ldolphin/webkit/w;->d:Ldolphin/webkit/BrowserFrame;

    iput-object p2, p0, Ldolphin/webkit/w;->a:Ldolphin/net/http/SslError;

    iput p3, p0, Ldolphin/webkit/w;->b:I

    iput p4, p0, Ldolphin/webkit/w;->c:I

    invoke-direct {p0}, Ldolphin/webkit/SslErrorHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1335
    new-instance v0, Ldolphin/webkit/y;

    invoke-direct {v0, p0}, Ldolphin/webkit/y;-><init>(Ldolphin/webkit/w;)V

    invoke-virtual {p0, v0}, Ldolphin/webkit/w;->post(Ljava/lang/Runnable;)Z

    .line 1340
    return-void
.end method

.method public proceed()V
    .locals 2

    .prologue
    .line 1326
    invoke-static {}, Ldolphin/webkit/gt;->a()Ldolphin/webkit/gt;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/w;->a:Ldolphin/net/http/SslError;

    invoke-virtual {v0, v1}, Ldolphin/webkit/gt;->a(Ldolphin/net/http/SslError;)V

    .line 1327
    new-instance v0, Ldolphin/webkit/x;

    invoke-direct {v0, p0}, Ldolphin/webkit/x;-><init>(Ldolphin/webkit/w;)V

    invoke-virtual {p0, v0}, Ldolphin/webkit/w;->post(Ljava/lang/Runnable;)Z

    .line 1332
    return-void
.end method
