.class Ldolphin/webkit/lf;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# instance fields
.field final synthetic a:Ldolphin/webkit/ld;


# direct methods
.method private constructor <init>(Ldolphin/webkit/ld;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Ldolphin/webkit/lf;->a:Ldolphin/webkit/ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldolphin/webkit/ld;Ldolphin/webkit/le;)V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0, p1}, Ldolphin/webkit/lf;-><init>(Ldolphin/webkit/ld;)V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 2

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    iget-object v0, p0, Ldolphin/webkit/lf;->a:Ldolphin/webkit/ld;

    invoke-static {v0}, Ldolphin/webkit/ld;->a(Ldolphin/webkit/ld;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->L()V

    .line 126
    iget-object v0, p0, Ldolphin/webkit/lf;->a:Ldolphin/webkit/ld;

    invoke-static {v0}, Ldolphin/webkit/ld;->b(Ldolphin/webkit/ld;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Ldolphin/webkit/lf;->a:Ldolphin/webkit/ld;

    invoke-virtual {v0}, Ldolphin/webkit/ld;->c()V

    .line 129
    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 1

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Ldolphin/webkit/lf;->a:Ldolphin/webkit/ld;

    invoke-static {v0}, Ldolphin/webkit/ld;->a(Ldolphin/webkit/ld;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->zoomIn()Z

    .line 137
    :goto_0
    iget-object v0, p0, Ldolphin/webkit/lf;->a:Ldolphin/webkit/ld;

    invoke-virtual {v0}, Ldolphin/webkit/ld;->c()V

    .line 138
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/lf;->a:Ldolphin/webkit/ld;

    invoke-static {v0}, Ldolphin/webkit/ld;->a(Ldolphin/webkit/ld;)Ldolphin/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->zoomOut()Z

    goto :goto_0
.end method
