.class public Lcom/dolphin/browser/javascript/DolphinJsApi;
.super Ljava/lang/Object;
.source "DolphinJsApi.java"


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepAll;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ADD_WEB_APP_EXCEED_LIMIT:I = -0x1

.field private static final ADD_WEB_APP_SUCCESS:I = 0x1

.field public static final JS_INTERFACE_NAME:Ljava/lang/String; = "dolphin"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJsApiManager:Lcom/dolphin/browser/javascript/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mContext:Landroid/content/Context;

    .line 35
    invoke-static {}, Lcom/dolphin/browser/javascript/k;->a()Lcom/dolphin/browser/javascript/k;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    .line 36
    return-void
.end method


# virtual methods
.method public addToHome(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/javascript/k;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1, p1, p2, p3}, Lcom/dolphin/browser/ui/launcher/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    const/4 v0, -0x1

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "dolphin home"

    const-string v1, "addtohome"

    const-string v2, "store"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/javascript/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/util/BrowserUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/javascript/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const-string v0, ""

    .line 103
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/Configuration;->getInstance()Lcom/dolphin/browser/core/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/Configuration;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isHomeAdded(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 65
    iget-object v1, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    invoke-virtual {v1}, Lcom/dolphin/browser/javascript/k;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/f/e/b;->a()Lcom/dolphin/browser/f/e/b;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/ui/launcher/g;->d(Ljava/lang/String;)Lcom/dolphin/browser/launcher/cl;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPreviewInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/javascript/DolphinJsApi;->mJsApiManager:Lcom/dolphin/browser/javascript/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/javascript/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v6

    .line 92
    if-eqz v6, :cond_0

    .line 93
    new-instance v0, Lcom/dolphin/browser/core/bh;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/core/bh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/dolphin/browser/core/ITab;->setWebAppPreviewInfo(Lcom/dolphin/browser/core/bh;)V

    goto :goto_0
.end method

.method public showNativeAddPage()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/dolphin/browser/javascript/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/javascript/a;-><init>(Lcom/dolphin/browser/javascript/DolphinJsApi;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method
