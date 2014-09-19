.class public final Lcom/vungle/sdk/ai;
.super Lcom/vungle/sdk/VungleIntentService$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/sdk/am;


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/vungle/sdk/VungleIntentService;->a:Ljava/lang/String;

    sput-object v0, Lcom/vungle/sdk/ai;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/sdk/VungleIntentService;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    const-string v0, "Http"

    invoke-direct {p0, p1, v0}, Lcom/vungle/sdk/VungleIntentService$a;-><init>(Lcom/vungle/sdk/VungleIntentService;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method private b(Lcom/vungle/sdk/ah;)Landroid/os/Message;
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/sdk/ai;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 35
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 23
    const-string v0, "httpRequest"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/ah;

    .line 24
    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/vungle/sdk/ai;->c:Ljava/lang/String;

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    sget-object v1, Lcom/vungle/sdk/ai;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Queuing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Lcom/vungle/sdk/ai;->b:Landroid/os/Handler;

    invoke-direct {p0, v0}, Lcom/vungle/sdk/ai;->b(Lcom/vungle/sdk/ah;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected final a(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/vungle/sdk/ah;

    .line 42
    if-nez v0, :cond_0

    .line 43
    sget-object v0, Lcom/vungle/sdk/ai;->c:Ljava/lang/String;

    .line 53
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lcom/vungle/sdk/ac;->a()Lcom/vungle/sdk/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/sdk/ac;->b()V

    .line 47
    sget-object v1, Lcom/vungle/sdk/ai;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Lcom/vungle/sdk/ag;->a()Lcom/vungle/sdk/ag;

    invoke-static {v0}, Lcom/vungle/sdk/ag;->a(Lcom/vungle/sdk/ah;)Lcom/vungle/sdk/aj;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/vungle/sdk/ai;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Lcom/vungle/sdk/ah;->k()Lcom/vungle/sdk/ak;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p0}, Lcom/vungle/sdk/ak;->b(Lcom/vungle/sdk/ah;Lcom/vungle/sdk/aj;Lcom/vungle/sdk/am;)V

    goto :goto_0
.end method

.method public final a(Lcom/vungle/sdk/ah;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/sdk/ai;->b:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/ai;->b(Lcom/vungle/sdk/ah;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    return-void
.end method

.method public final a(Lcom/vungle/sdk/ah;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/sdk/ai;->b:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/vungle/sdk/ai;->b(Lcom/vungle/sdk/ah;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    return-void
.end method
