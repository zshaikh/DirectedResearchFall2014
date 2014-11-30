.class public final Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;
.super Landroid/webkit/WebViewClient;


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Z

.field private final r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;Ljava/lang/String;)V
    .locals 1
    .param p1, "adapter"    # Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;
    .param p2, "passbackUrl"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->A:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->B:Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "Passback received"

    invoke-direct {p0, p1}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const-string v0, "passback"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Passback received"

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdNotReceivedUpdate()V

    move v0, v5

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/URI;

    iget-object v2, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->A:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Passback received"

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->sendAdNotReceivedUpdate()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->s(Ljava/lang/String;)V

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->s(Ljava/lang/String;)V

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadResource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->u(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->u(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->r:Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;

    invoke-virtual {v0}, Lcom/google/ads/mediation/jsadapter/JavascriptAdapter;->startCheckingForAd()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->B:Z

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->u(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/google/ads/mediation/jsadapter/BannerWebViewClient;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "shouldOverrideUrlLoading: received passback url"

    invoke-static {v0}, Lcom/google/android/gms/internal/ct;->r(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
