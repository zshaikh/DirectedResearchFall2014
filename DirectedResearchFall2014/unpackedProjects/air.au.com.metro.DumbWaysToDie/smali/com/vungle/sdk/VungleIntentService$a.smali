.class public abstract Lcom/vungle/sdk/VungleIntentService$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/VungleIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field protected final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/vungle/sdk/VungleIntentService;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VungleIntentService["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/sdk/VungleIntentService$a;->a:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Starting "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/sdk/VungleIntentService$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/vungle/sdk/VungleIntentService$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 124
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 125
    new-instance v0, Lcom/vungle/sdk/VungleIntentService$a$1;

    move-object v1, p0

    move-object v3, p1

    move-object v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vungle/sdk/VungleIntentService$a$1;-><init>(Lcom/vungle/sdk/VungleIntentService$a;Landroid/os/Looper;Lcom/vungle/sdk/VungleIntentService;Landroid/os/Looper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vungle/sdk/VungleIntentService$a;->b:Landroid/os/Handler;

    .line 152
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
.end method

.method protected abstract a(Landroid/os/Message;)V
.end method
