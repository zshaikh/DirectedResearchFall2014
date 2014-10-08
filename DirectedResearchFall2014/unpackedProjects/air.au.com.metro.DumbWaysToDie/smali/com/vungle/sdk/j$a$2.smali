.class final Lcom/vungle/sdk/j$a$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/sdk/j$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/sdk/j$a;


# direct methods
.method constructor <init>(Lcom/vungle/sdk/j$a;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .prologue
    .line 384
    iget-object v0, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v3, v0

    .line 385
    iget-object v0, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    int-to-long v5, v0

    .line 387
    iget-object v0, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->b(Lcom/vungle/sdk/j;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 389
    iget-object v0, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->g(Lcom/vungle/sdk/j;)V

    .line 390
    iget-object v0, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->f(Lcom/vungle/sdk/j;)V

    .line 391
    iget-object v0, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    iget-object v0, v0, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v0}, Lcom/vungle/sdk/j;->i(Lcom/vungle/sdk/j;)Lcom/vungle/sdk/j$g;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/sdk/j$a$2;->a:Lcom/vungle/sdk/j$a;

    iget-object v1, v1, Lcom/vungle/sdk/j$a;->a:Lcom/vungle/sdk/j;

    invoke-static {v1}, Lcom/vungle/sdk/j;->h(Lcom/vungle/sdk/j;)J

    move-result-wide v1

    invoke-interface/range {v0 .. v6}, Lcom/vungle/sdk/j$g;->a(JJJ)V

    .line 392
    return-void
.end method
