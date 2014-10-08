.class final Lcom/vungle/sdk/f;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Landroid/webkit/WebView;

.field private c:Lcom/vungle/sdk/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/f;->a:Landroid/widget/FrameLayout;

    .line 38
    new-instance v0, Lcom/vungle/sdk/l;

    invoke-direct {v0, p1}, Lcom/vungle/sdk/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/f;->c:Lcom/vungle/sdk/l;

    .line 39
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/f;->b:Landroid/webkit/WebView;

    .line 41
    iget-object v0, p0, Lcom/vungle/sdk/f;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vungle/sdk/f;->c:Lcom/vungle/sdk/l;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/vungle/sdk/f;->c:Lcom/vungle/sdk/l;

    iget-object v1, p0, Lcom/vungle/sdk/f;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/l;->addView(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/vungle/sdk/f;->c:Lcom/vungle/sdk/l;

    invoke-virtual {v0}, Lcom/vungle/sdk/l;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 45
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 47
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 48
    iget-object v1, p0, Lcom/vungle/sdk/f;->c:Lcom/vungle/sdk/l;

    invoke-virtual {v1, v0}, Lcom/vungle/sdk/l;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    return-void
.end method
