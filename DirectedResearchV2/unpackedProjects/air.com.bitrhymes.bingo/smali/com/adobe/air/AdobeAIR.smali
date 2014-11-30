.class public Lcom/adobe/air/AdobeAIR;
.super Landroid/app/Activity;
.source "AdobeAIR.java"


# static fields
.field private static final DYNAMIC_URL:Ljava/lang/String; = "http://www.adobe.com/airgames/"

.field private static final STATIC_URL:Ljava/lang/String; = "file:///android_res/raw/startga.html"

.field private static sRootServer:Ljava/lang/String;


# instance fields
.field private mOffline:Z

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/AdobeAIR;->sRootServer:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/adobe/air/AdobeAIR;->sRootServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 35
    sput-object p0, Lcom/adobe/air/AdobeAIR;->sRootServer:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/adobe/air/AdobeAIR;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/air/AdobeAIR;Z)Z
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/adobe/air/AdobeAIR$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AdobeAIR$1;-><init>(Lcom/adobe/air/AdobeAIR;)V

    .line 100
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    .line 101
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 103
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 104
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIR;->setContentView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    const-string v1, "http://www.adobe.com/airgames/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    .line 130
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    const-string v1, "http://www.adobe.com/airgames/"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method
