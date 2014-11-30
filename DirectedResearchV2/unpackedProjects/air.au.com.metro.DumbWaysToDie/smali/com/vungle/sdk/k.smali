.class abstract Lcom/vungle/sdk/k;
.super Lcom/vungle/sdk/g;
.source "vungle"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/k$b;,
        Lcom/vungle/sdk/k$a;
    }
.end annotation


# instance fields
.field protected b:Landroid/webkit/WebView;

.field protected c:Landroid/view/View;

.field protected d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/sdk/g$a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 73
    invoke-direct {p0}, Lcom/vungle/sdk/g;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/sdk/k;->d:Ljava/lang/Object;

    .line 75
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".htm"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    new-instance v0, Lcom/vungle/sdk/g$a;

    invoke-direct {v0, p0}, Lcom/vungle/sdk/g$a;-><init>(Lcom/vungle/sdk/g;)V

    throw v0

    .line 78
    :cond_1
    iput-object p3, p0, Lcom/vungle/sdk/k;->d:Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, p1}, Lcom/vungle/sdk/k;->a(Landroid/content/Context;)V

    .line 84
    iget-object v0, p0, Lcom/vungle/sdk/k;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/vungle/sdk/k;->d()Lcom/vungle/sdk/k$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v1, Lcom/vungle/sdk/k$b;

    invoke-direct {v1, p0}, Lcom/vungle/sdk/k$b;-><init>(Lcom/vungle/sdk/k;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 87
    check-cast p1, Landroid/app/Activity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 90
    iget-object v0, p0, Lcom/vungle/sdk/k;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vungle/sdk/k;->c:Landroid/view/View;

    return-object v0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method protected abstract d()Lcom/vungle/sdk/k$a;
.end method

.method protected abstract e()V
.end method
