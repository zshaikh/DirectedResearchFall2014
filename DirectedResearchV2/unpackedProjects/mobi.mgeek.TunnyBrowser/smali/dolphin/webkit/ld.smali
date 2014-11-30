.class Ldolphin/webkit/ld;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Ldolphin/webkit/lc;


# instance fields
.field private final a:Ldolphin/webkit/ll;

.field private final b:Ldolphin/webkit/WebViewClassic;

.field private c:Landroid/widget/ZoomButtonsController;


# direct methods
.method public constructor <init>(Ldolphin/webkit/ll;Ldolphin/webkit/WebViewClassic;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Ldolphin/webkit/ld;->a:Ldolphin/webkit/ll;

    .line 38
    iput-object p2, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    .line 39
    return-void
.end method

.method static synthetic a(Ldolphin/webkit/ld;)Ldolphin/webkit/WebViewClassic;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    return-object v0
.end method

.method static synthetic b(Ldolphin/webkit/ld;)Landroid/widget/ZoomButtonsController;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method private e()Landroid/widget/ZoomButtonsController;
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/widget/ZoomButtonsController;

    iget-object v1, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->e()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    .line 106
    new-instance v0, Landroid/widget/ZoomButtonsController;

    iget-object v1, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v1}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->view()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    .line 107
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    new-instance v1, Ldolphin/webkit/lf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ldolphin/webkit/lf;-><init>(Ldolphin/webkit/ld;Ldolphin/webkit/le;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 111
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 113
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 117
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 43
    iget-object v0, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 45
    :cond_0
    const-string v0, "mWebView has problems. null or its context not a Activity"

    invoke-static {v0}, Ldolphin/util/Log;->e(Ljava/lang/String;)I

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    invoke-direct {p0}, Ldolphin/webkit/ld;->e()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/ld;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->n()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :try_start_0
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    iget-object v0, p0, Ldolphin/webkit/ld;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->G()Ldolphin/webkit/WebSettingsClassic;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ldolphin/webkit/WebSettingsClassic;->getDoubleTapToastCount()I

    move-result v1

    .line 66
    iget-object v2, p0, Ldolphin/webkit/ld;->a:Ldolphin/webkit/ll;

    invoke-virtual {v2}, Ldolphin/webkit/ll;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 67
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ldolphin/webkit/WebSettingsClassic;->setDoubleTapToastCount(I)V

    .line 68
    iget-object v0, p0, Ldolphin/webkit/ld;->b:Ldolphin/webkit/WebViewClassic;

    invoke-virtual {v0}, Ldolphin/webkit/WebViewClassic;->l()Landroid/content/Context;

    move-result-object v0

    sget v1, Ldolphin/webkit/R$string;->double_tap_toast:I

    invoke-static {v1}, Ldolphin/webkit/WebKitResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 80
    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Ldolphin/webkit/ld;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->o()Z

    move-result v1

    .line 92
    iget-object v0, p0, Ldolphin/webkit/ld;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldolphin/webkit/ld;->a:Ldolphin/webkit/ll;

    invoke-virtual {v0}, Ldolphin/webkit/ll;->w()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 93
    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 95
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 98
    :cond_2
    iget-object v2, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 99
    iget-object v1, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v0}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/webkit/ld;->c:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
