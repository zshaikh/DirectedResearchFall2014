.class final Lcom/vungle/sdk/VungleAdvert$6;
.super Ljava/lang/Thread;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/VungleAdvert;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/VungleAdvert;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/VungleAdvert;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert$6;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 657
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vungle/sdk/VungleAdvert$6;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v2}, Lcom/vungle/sdk/VungleAdvert;->f(Lcom/vungle/sdk/VungleAdvert;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 658
    iget-object v2, p0, Lcom/vungle/sdk/VungleAdvert$6;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v2}, Lcom/vungle/sdk/VungleAdvert;->g(Lcom/vungle/sdk/VungleAdvert;)Z

    .line 659
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v2

    .line 660
    if-eqz v2, :cond_0

    .line 661
    iput-wide v0, v2, Lcom/vungle/sdk/x;->b:J

    .line 663
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vungle/sdk/n;->a(Z)V

    .line 664
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$6;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->c:Lcom/vungle/sdk/VungleUtil;

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleUtil;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    const-string v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/sdk/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
