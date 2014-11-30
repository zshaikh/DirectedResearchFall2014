.class final Lcom/vungle/sdk/VungleAdvert$5;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/VungleAdvert;->onCreate(Landroid/os/Bundle;)V
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

    .prologue
    .line 600
    iput-object p1, p0, Lcom/vungle/sdk/VungleAdvert$5;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$5;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$5;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->d(Lcom/vungle/sdk/VungleAdvert;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$5;->a:Lcom/vungle/sdk/VungleAdvert;

    invoke-static {v0}, Lcom/vungle/sdk/VungleAdvert;->e(Lcom/vungle/sdk/VungleAdvert;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$5;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->d:Lcom/vungle/sdk/g;

    invoke-virtual {v0}, Lcom/vungle/sdk/g;->b()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$5;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->e:Lcom/vungle/sdk/g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/sdk/VungleAdvert$5;->a:Lcom/vungle/sdk/VungleAdvert;

    iget-object v0, v0, Lcom/vungle/sdk/VungleAdvert;->e:Lcom/vungle/sdk/g;

    invoke-virtual {v0}, Lcom/vungle/sdk/g;->c()V

    .line 606
    :cond_1
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 609
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 612
    return-void
.end method
