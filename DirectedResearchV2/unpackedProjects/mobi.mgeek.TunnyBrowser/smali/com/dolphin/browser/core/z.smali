.class final Lcom/dolphin/browser/core/z;
.super Ljava/lang/Object;
.source "NetworkBoost.java"

# interfaces
.implements Ljava/util/Observer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/core/u;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/dolphin/browser/core/z;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/dolphin/browser/core/BrowserSettings;->getInstance()Lcom/dolphin/browser/core/BrowserSettings;

    move-result-object v0

    .line 65
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/t;->d()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lcom/dolphin/browser/core/t;->d()Lcom/dolphin/browser/core/INetworkPredictor;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/core/INetworkPredictor;->updateSettings()V

    .line 68
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/core/t;->e()Lcom/dolphin/browser/core/IResourceHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-static {}, Lcom/dolphin/browser/core/t;->e()Lcom/dolphin/browser/core/IResourceHandler;

    move-result-object v1

    invoke-interface {v1}, Lcom/dolphin/browser/core/IResourceHandler;->updateSettings()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/dolphin/browser/core/t;->a(Lcom/dolphin/browser/core/IBrowserSettings;)V

    .line 75
    return-void

    .line 72
    :catch_0
    move-exception v1

    goto :goto_0

    .line 71
    :catch_1
    move-exception v1

    goto :goto_0
.end method
