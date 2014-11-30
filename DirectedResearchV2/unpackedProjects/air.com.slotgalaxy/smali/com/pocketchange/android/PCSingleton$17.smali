.class Lcom/pocketchange/android/PCSingleton$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pocketchange/android/PCSingleton;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/pocketchange/android/PCSingleton;


# direct methods
.method constructor <init>(Lcom/pocketchange/android/PCSingleton;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/pocketchange/android/PCSingleton$17;->c:Lcom/pocketchange/android/PCSingleton;

    iput-object p2, p0, Lcom/pocketchange/android/PCSingleton$17;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/pocketchange/android/PCSingleton$17;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 717
    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$17;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 718
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 719
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 720
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 721
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 722
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 723
    new-instance v1, Lcom/pocketchange/android/PCSingleton$7$1;

    invoke-direct {v1, p0}, Lcom/pocketchange/android/PCSingleton$7$1;-><init>(Lcom/pocketchange/android/PCSingleton$17;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 729
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$17;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    iget-object v1, p0, Lcom/pocketchange/android/PCSingleton$17;->c:Lcom/pocketchange/android/PCSingleton;

    invoke-virtual {v1, v0, v3, v3}, Lcom/pocketchange/android/PCSingleton;->recordException(Ljava/lang/Throwable;ZZ)V

    goto :goto_0
.end method
