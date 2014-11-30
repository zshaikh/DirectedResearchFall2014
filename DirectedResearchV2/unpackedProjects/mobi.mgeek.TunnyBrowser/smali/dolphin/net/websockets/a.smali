.class Ldolphin/net/websockets/a;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:Ldolphin/net/websockets/WebSocketClient;


# direct methods
.method constructor <init>(Ldolphin/net/websockets/WebSocketClient;[BI)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Ldolphin/net/websockets/a;->c:Ldolphin/net/websockets/WebSocketClient;

    iput-object p2, p0, Ldolphin/net/websockets/a;->a:[B

    iput p3, p0, Ldolphin/net/websockets/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Ldolphin/net/websockets/a;->c:Ldolphin/net/websockets/WebSocketClient;

    iget-object v1, p0, Ldolphin/net/websockets/a;->a:[B

    iget v2, p0, Ldolphin/net/websockets/a;->b:I

    invoke-static {v0, v1, v2}, Ldolphin/net/websockets/WebSocketClient;->a(Ldolphin/net/websockets/WebSocketClient;[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method
