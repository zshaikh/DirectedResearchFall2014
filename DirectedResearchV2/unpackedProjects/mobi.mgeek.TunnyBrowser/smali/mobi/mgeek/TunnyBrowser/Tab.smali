.class public Lmobi/mgeek/TunnyBrowser/Tab;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/dolphin/browser/core/ITab;",
            "Lmobi/mgeek/TunnyBrowser/Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/dolphin/browser/core/ITab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lmobi/mgeek/TunnyBrowser/Tab;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/dolphin/browser/core/ITab;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    .line 32
    return-void
.end method

.method public static a(Lcom/dolphin/browser/core/ITab;)Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lmobi/mgeek/TunnyBrowser/Tab;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lmobi/mgeek/TunnyBrowser/Tab;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/Tab;-><init>(Lcom/dolphin/browser/core/ITab;)V

    .line 23
    sget-object v1, Lmobi/mgeek/TunnyBrowser/Tab;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :goto_0
    return-object v0

    .line 26
    :cond_0
    sget-object v0, Lmobi/mgeek/TunnyBrowser/Tab;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmobi/mgeek/TunnyBrowser/Tab;

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    return-object v0
.end method

.method public clearHistory()V
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->clearHistory()V

    .line 159
    return-void
.end method

.method public closeOnExit()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->closeOnExit()Z

    move-result v0

    return v0
.end method

.method public dismissSubWindow()V
    .locals 0
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 43
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildTabs()Ljava/util/Vector;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lmobi/mgeek/TunnyBrowser/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getParentTab()Lmobi/mgeek/TunnyBrowser/Tab;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubWebView()Landroid/webkit/MyWebView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTopWindow()Landroid/webkit/MyWebView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-static {v0}, Landroid/webkit/MyWebView;->get(Lcom/dolphin/browser/core/IWebView;)Landroid/webkit/MyWebView;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/MyWebView;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/Tab;->getTopWindow()Landroid/webkit/MyWebView;

    move-result-object v0

    return-object v0
.end method

.method public inLoad()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->inLoad()Z

    move-result v0

    return v0
.end method

.method public isInForeground()Z
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/Tab;->b:Lcom/dolphin/browser/core/ITab;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->isInForeground()Z

    move-result v0

    return v0
.end method
