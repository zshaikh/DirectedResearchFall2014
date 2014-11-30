.class public interface abstract Lcom/dolphin/browser/extensions/IWebViewPageExtension2;
.super Ljava/lang/Object;
.source "IWebViewPageExtension2.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IWebViewPageExtension;


# annotations
.annotation build Lcom/dolphin/browser/annotation/AddonSDK;
.end annotation


# static fields
.field public static final TYPE_NAME:Ljava/lang/String;
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension2;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract destory(Lcom/dolphin/browser/core/IWebView;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract doUpdateVisitedHistory(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Z)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onJsAlert(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onJsConfirm(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsResult;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onJsPrompt(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/core/IJsPromptResult;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onPause(Lcom/dolphin/browser/core/IWebView;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onReceivedError(Lcom/dolphin/browser/core/IWebView;ILjava/lang/String;Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract onResume(Lcom/dolphin/browser/core/IWebView;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract shouldOverrideUrlLoading(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method
