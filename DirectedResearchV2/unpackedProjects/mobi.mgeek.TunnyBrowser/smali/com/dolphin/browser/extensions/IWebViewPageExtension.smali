.class public interface abstract Lcom/dolphin/browser/extensions/IWebViewPageExtension;
.super Ljava/lang/Object;
.source "IWebViewPageExtension.java"


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
    .line 34
    const-class v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dolphin/browser/extensions/IWebViewPageExtension;->TYPE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract postOnPageFinished(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract postOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract postPageStarted(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract postReceiveTitle(Lcom/dolphin/browser/core/IWebView;Ljava/lang/String;Ljava/lang/String;)V
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method

.method public abstract preOnReceivedHttpAuthRequest(Lcom/dolphin/browser/core/IWebView;Lcom/dolphin/browser/core/IHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation build Lcom/dolphin/browser/annotation/AddonSDK;
    .end annotation
.end method
