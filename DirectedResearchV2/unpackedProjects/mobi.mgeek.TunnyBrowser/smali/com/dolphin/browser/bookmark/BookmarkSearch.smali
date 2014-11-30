.class public Lcom/dolphin/browser/bookmark/BookmarkSearch;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "BookmarkSearch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 20
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkSearch;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 24
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    :cond_0
    const-class v1, Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 26
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/bookmark/BookmarkSearch;->startActivity(Landroid/content/Intent;)V

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/bookmark/BookmarkSearch;->finish()V

    .line 30
    return-void
.end method
