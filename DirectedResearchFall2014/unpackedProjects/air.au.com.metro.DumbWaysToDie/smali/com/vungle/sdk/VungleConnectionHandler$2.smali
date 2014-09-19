.class final Lcom/vungle/sdk/VungleConnectionHandler$2;
.super Ljava/util/TimerTask;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/VungleConnectionHandler;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/VungleConnectionHandler;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleConnectionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/vungle/sdk/VungleConnectionHandler$2;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$2;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-static {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->d(Lcom/vungle/sdk/VungleConnectionHandler;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 557
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$2;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/vungle/sdk/VungleConnectionHandler;->a(Lcom/vungle/sdk/VungleConnectionHandler;I)I

    .line 563
    :goto_0
    :pswitch_0
    return-void

    .line 546
    :pswitch_1
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$2;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/sdk/VungleConnectionHandler;->a(Lcom/vungle/sdk/VungleConnectionHandler;Z)Z

    .line 547
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$2;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 554
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/vungle/sdk/VungleConnectionHandler$2;->a:Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
