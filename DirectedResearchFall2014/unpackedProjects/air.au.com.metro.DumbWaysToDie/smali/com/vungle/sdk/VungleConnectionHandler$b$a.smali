.class final Lcom/vungle/sdk/VungleConnectionHandler$b$a;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/VungleConnectionHandler$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/VungleConnectionHandler$b;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/VungleConnectionHandler$b;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a;->a:Lcom/vungle/sdk/VungleConnectionHandler$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/VungleConnectionHandler$b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-direct {p0, p1}, Lcom/vungle/sdk/VungleConnectionHandler$b$a;-><init>(Lcom/vungle/sdk/VungleConnectionHandler$b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a;->a:Lcom/vungle/sdk/VungleConnectionHandler$b;

    iget-object v0, v0, Lcom/vungle/sdk/VungleConnectionHandler$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleConnectionHandler;

    .line 454
    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a;->a:Lcom/vungle/sdk/VungleConnectionHandler$b;

    iget v1, v1, Lcom/vungle/sdk/VungleConnectionHandler$b;->b:I

    packed-switch v1, :pswitch_data_0

    .line 496
    :pswitch_0
    const-string v0, "VungleNetworkTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/sdk/VungleConnectionHandler$b$a;->a:Lcom/vungle/sdk/VungleConnectionHandler$b;

    iget v2, v2, Lcom/vungle/sdk/VungleConnectionHandler$b;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 461
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;

    invoke-direct {v1, p0, v0}, Lcom/vungle/sdk/VungleConnectionHandler$b$a$1;-><init>(Lcom/vungle/sdk/VungleConnectionHandler$b$a;Lcom/vungle/sdk/VungleConnectionHandler;)V

    invoke-static {v0, v1}, Lcom/vungle/sdk/VungleConnectionHandler;->a(Lcom/vungle/sdk/VungleConnectionHandler;Lcom/vungle/sdk/VungleConnectionHandler$a;)V

    goto :goto_0

    .line 484
    :pswitch_2
    invoke-static {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->b(Lcom/vungle/sdk/VungleConnectionHandler;)V

    goto :goto_0

    .line 491
    :pswitch_3
    invoke-static {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->c(Lcom/vungle/sdk/VungleConnectionHandler;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
