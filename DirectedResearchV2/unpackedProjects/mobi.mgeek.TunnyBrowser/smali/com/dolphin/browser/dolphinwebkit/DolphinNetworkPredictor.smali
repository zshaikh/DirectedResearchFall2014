.class public Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;
.super Ljava/lang/Object;
.source "DolphinNetworkPredictor.java"

# interfaces
.implements Lcom/dolphin/browser/core/INetworkPredictor;


# annotations
.annotation build Lcom/dolphin/browser/annotation/KeepClass;
.end annotation


# static fields
.field private static final a:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;

.field private static final b:Ldolphin/webkit/Predictor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;

    invoke-direct {v0}, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;-><init>()V

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->a:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;

    .line 15
    invoke-static {}, Ldolphin/webkit/Predictor;->getInstance()Ldolphin/webkit/Predictor;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/dolphin/browser/dolphinwebkit/a;->a()Ldolphin/util/Tracker$Delegate;

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;
    .locals 1
    .annotation build Lcom/dolphin/browser/annotation/Keep;
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->a:Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;

    return-object v0
.end method


# virtual methods
.method public anticipateAddressBar(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0, p1, p2}, Ldolphin/webkit/Predictor;->anticipateAddressBar(Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public cancelPrefetchWebPage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0, p1}, Ldolphin/webkit/Predictor;->cancelPrefetchUrl(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0}, Ldolphin/webkit/Predictor;->hasStarted()Z

    move-result v0

    return v0
.end method

.method public preconnect(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0, p1}, Ldolphin/webkit/Predictor;->preconnect(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public varargs prefetchDNS([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0, p1}, Ldolphin/webkit/Predictor;->prefetchDNS([Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public prefetchWebPage(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0, p1}, Ldolphin/webkit/Predictor;->prefetchUrl(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0}, Ldolphin/webkit/Predictor;->saveData()V

    .line 86
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->isDNSPrefetchEnabled()Z

    move-result v2

    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->isPreconnectEnabled()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/Predictor;->start(ZZ)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0, v3, v3}, Ldolphin/webkit/Predictor;->start(ZZ)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v0}, Ldolphin/webkit/Predictor;->stop()V

    .line 78
    return-void
.end method

.method public updateSettings()V
    .locals 3

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->isDNSPrefetchEnabled()Z

    move-result v1

    .line 96
    invoke-interface {v0}, Lcom/dolphin/browser/core/IBrowserSettings;->isPreconnectEnabled()Z

    move-result v0

    .line 97
    sget-object v2, Lcom/dolphin/browser/dolphinwebkit/DolphinNetworkPredictor;->b:Ldolphin/webkit/Predictor;

    invoke-virtual {v2, v1, v0}, Ldolphin/webkit/Predictor;->update(ZZ)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
