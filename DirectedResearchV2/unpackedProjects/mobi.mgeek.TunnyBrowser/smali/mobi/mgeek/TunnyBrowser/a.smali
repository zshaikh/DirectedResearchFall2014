.class Lmobi/mgeek/TunnyBrowser/a;
.super Lcom/dolphin/browser/core/WebViewCallback;
.source "AboutActivity.java"


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/AboutActivity;

.field private b:Z


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/AboutActivity;)V
    .locals 1

    .prologue
    .line 112
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/a;->a:Lmobi/mgeek/TunnyBrowser/AboutActivity;

    invoke-direct {p0}, Lcom/dolphin/browser/core/WebViewCallback;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/a;->b:Z

    .line 112
    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 142
    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/a;->b:Z

    .line 145
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/a;->a:Lmobi/mgeek/TunnyBrowser/AboutActivity;

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->b(Lmobi/mgeek/TunnyBrowser/AboutActivity;)V

    .line 147
    return-void
.end method

.method public onPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 135
    const-string v0, "file://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmobi/mgeek/TunnyBrowser/a;->b:Z

    .line 138
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 119
    sget-object v1, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a:Ljava/lang/String;

    const-string v2, "shouldOverrideUrlLoading :%s"

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    const-string v1, "dolphin://jsreq/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {}, Lcom/dolphin/browser/javascript/j;->a()Lcom/dolphin/browser/javascript/j;

    move-result-object v1

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/a;->a:Lmobi/mgeek/TunnyBrowser/AboutActivity;

    invoke-static {v2}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a(Lmobi/mgeek/TunnyBrowser/AboutActivity;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/dolphin/browser/javascript/j;->a(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-boolean v1, p0, Lmobi/mgeek/TunnyBrowser/a;->b:Z

    if-eqz v1, :cond_0

    .line 130
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/a;->a:Lmobi/mgeek/TunnyBrowser/AboutActivity;

    invoke-static {v0, p2}, Lmobi/mgeek/TunnyBrowser/AboutActivity;->a(Lmobi/mgeek/TunnyBrowser/AboutActivity;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
