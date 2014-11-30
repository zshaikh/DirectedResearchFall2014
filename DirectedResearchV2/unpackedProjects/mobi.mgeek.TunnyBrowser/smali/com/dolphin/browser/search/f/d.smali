.class public Lcom/dolphin/browser/search/f/d;
.super Landroid/os/AsyncTask;
.source "HomepageUpgradeTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 18
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/dolphin/browser/search/c/c;->a()Lcom/dolphin/browser/search/c/c;

    move-result-object v1

    const-string v2, "home_page"

    invoke-virtual {v1, v0, v2}, Lcom/dolphin/browser/search/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/search/f/h;->a()Lcom/dolphin/browser/search/f/h;

    move-result-object v0

    const-string v1, "home_page"

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/search/f/h;->b(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/search/f/d;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
