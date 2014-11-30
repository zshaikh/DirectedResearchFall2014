.class Lmobi/mgeek/TunnyBrowser/cf;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Lcom/dolphin/browser/util/dh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dolphin/browser/util/dh",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmobi/mgeek/TunnyBrowser/BrowserSettings;


# direct methods
.method constructor <init>(Lmobi/mgeek/TunnyBrowser/BrowserSettings;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/cf;->a:Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 613
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0663

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/AppContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 628
    :goto_0
    return-object v0

    .line 617
    :cond_0
    new-instance v1, Landroid/webkit/WebView;

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 618
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 621
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_1
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0

    .line 622
    :catch_0
    move-exception v2

    .line 624
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/cf;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
