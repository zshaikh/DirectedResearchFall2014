.class public Lmobi/mgeek/TunnyBrowser/TabControl;
.super Ljava/lang/Object;
.source "TabControl.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/dolphin/browser/core/TabManager;",
            "Lmobi/mgeek/TunnyBrowser/TabControl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/dolphin/browser/core/TabManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/TabControl;->b:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/dolphin/browser/core/TabManager;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    .line 51
    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/TabManager;)Lmobi/mgeek/TunnyBrowser/TabControl;
    .locals 2

    .prologue
    .line 56
    sget-object v0, Lmobi/mgeek/TunnyBrowser/TabControl;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lmobi/mgeek/TunnyBrowser/TabControl;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/TabControl;-><init>(Lcom/dolphin/browser/core/TabManager;)V

    .line 58
    sget-object v1, Lmobi/mgeek/TunnyBrowser/TabControl;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :goto_0
    return-object v0

    .line 61
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/TabControl;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/TabControl;

    goto :goto_0
.end method


# virtual methods
.method public canCreateNewTab()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->canCreateNewTab()Z

    move-result v0

    return v0
.end method

.method public getBrowserActivity()Lmobi/mgeek/TunnyBrowser/BrowserActivity;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserActivity;

    move-result-object v0

    return-object v0
.end method

.method public getClosedTabs()[Lmobi/mgeek/TunnyBrowser/TabControl$TabHistory;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentSubWindow()Landroid/webkit/MyWebView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTab()Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/Tab;->a(Lcom/dolphin/browser/core/ITab;)Lmobi/mgeek/TunnyBrowser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTopWebView()Landroid/webkit/MyWebView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/TabControl;->getCurrentWebView()Landroid/webkit/MyWebView;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebView()Landroid/webkit/MyWebView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/TabControl;->getCurrentTab()Lmobi/mgeek/TunnyBrowser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/Tab;->getTopWindow()Landroid/webkit/MyWebView;

    move-result-object v0

    return-object v0
.end method

.method public getTab(I)Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/core/TabManager;->getTab(I)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/Tab;->a(Lcom/dolphin/browser/core/ITab;)Lmobi/mgeek/TunnyBrowser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public getTabCount()I
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v0

    return v0
.end method

.method public getTabFromId(Ljava/lang/String;)Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabFromView(Landroid/webkit/WebView;)Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 156
    instance-of v0, p1, Landroid/webkit/MyWebView;

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p1}, Lcom/dolphin/browser/core/WebViewFactory;->getIWebViewFromView(Landroid/view/View;)Lcom/dolphin/browser/core/IWebView;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/core/TabManager;->getTabFromWebView(Lcom/dolphin/browser/core/IWebView;)Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-static {v0}, Lmobi/mgeek/TunnyBrowser/Tab;->a(Lcom/dolphin/browser/core/ITab;)Lmobi/mgeek/TunnyBrowser/Tab;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTabIndex(Lmobi/mgeek/TunnyBrowser/Tab;)I
    .locals 2
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/TabControl;->a:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {p1}, Lmobi/mgeek/TunnyBrowser/Tab;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    return v0
.end method
