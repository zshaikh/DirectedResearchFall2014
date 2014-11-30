.class Lam/sunrise/android/calendar/ui/utils/g;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/utils/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/utils/f;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/utils/g;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/g;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/utils/f;->d(Lam/sunrise/android/calendar/ui/utils/f;)V

    .line 84
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/g;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/utils/f;->c(Lam/sunrise/android/calendar/ui/utils/f;)V

    .line 79
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/g;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/utils/f;->a(Lam/sunrise/android/calendar/ui/utils/f;)Lam/sunrise/android/calendar/ui/utils/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/g;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/utils/f;->a(Lam/sunrise/android/calendar/ui/utils/f;)Lam/sunrise/android/calendar/ui/utils/h;

    move-result-object v0

    invoke-interface {v0, p2}, Lam/sunrise/android/calendar/ui/utils/h;->a_(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/g;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/utils/f;->b(Lam/sunrise/android/calendar/ui/utils/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/utils/g;->a:Lam/sunrise/android/calendar/ui/utils/f;

    invoke-static {v0, p2}, Lam/sunrise/android/calendar/ui/utils/f;->a(Lam/sunrise/android/calendar/ui/utils/f;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
