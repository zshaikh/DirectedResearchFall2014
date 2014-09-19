.class final Lcom/vungle/sdk/e;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/e;->a:Landroid/widget/FrameLayout;

    .line 15
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/sdk/e;->b:Landroid/webkit/WebView;

    .line 17
    iget-object v0, p0, Lcom/vungle/sdk/e;->a:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vungle/sdk/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 19
    iget-object v0, p0, Lcom/vungle/sdk/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 20
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 21
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 22
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 23
    iget-object v1, p0, Lcom/vungle/sdk/e;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    return-void
.end method
