.class final Lcom/vungle/sdk/j$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/j;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/j;)V
    .locals 0
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 573
    iget-object v0, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    .line 574
    iget-object v0, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v5, v0

    .line 576
    iget-object v0, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 578
    iget-object v0, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->g(Lcom/vungle/sdk/j;)V

    .line 579
    iget-object v0, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->f(Lcom/vungle/sdk/j;)V

    .line 580
    iget-object v0, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/j$3;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->h(Lcom/vungle/sdk/j;)J

    move-result-wide v1

    invoke-interface/range {v0 .. v6}, Lcom/vungle/sdk/j$g;->a(JJJ)V

    .line 581
    return-void
.end method
