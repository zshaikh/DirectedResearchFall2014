.class final Lcom/vungle/sdk/j$d;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/sdk/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;


# direct methods
.method private constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/sdk/j;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/vungle/sdk/j$d;-><init>(Lcom/vungle/sdk/j;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 419
    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    iget-object v1, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->l(Lcom/vungle/sdk/j;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/vungle/sdk/j;->a(Lcom/vungle/sdk/j;Z)Z

    .line 420
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->l(Lcom/vungle/sdk/j;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "muted"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/vungle/sdk/x;->a(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->m(Lcom/vungle/sdk/j;)V

    .line 425
    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->l(Lcom/vungle/sdk/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 428
    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/sdk/j$g;->a()V

    .line 433
    :goto_2
    return-void

    .line 419
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 420
    :cond_3
    const-string v1, "un-muted"

    goto :goto_1

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/vungle/sdk/j$d;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v0

    invoke-interface {v0}, Lcom/vungle/sdk/j$g;->b()V

    goto :goto_2
.end method
