.class Ldolphin/net/websockets/b;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldolphin/net/websockets/WebSocketClient;


# direct methods
.method constructor <init>(Ldolphin/net/websockets/WebSocketClient;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Ldolphin/net/websockets/b;->a:Ldolphin/net/websockets/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 293
    :try_start_0
    iget-object v0, p0, Ldolphin/net/websockets/b;->a:Ldolphin/net/websockets/WebSocketClient;

    invoke-static {v0}, Ldolphin/net/websockets/WebSocketClient;->a(Ldolphin/net/websockets/WebSocketClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    goto :goto_0
.end method
