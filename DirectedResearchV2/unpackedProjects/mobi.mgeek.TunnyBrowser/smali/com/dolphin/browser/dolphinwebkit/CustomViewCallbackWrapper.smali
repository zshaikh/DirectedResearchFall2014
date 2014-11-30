.class Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;
.super Ljava/lang/Object;
.source "CustomViewCallbackWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;


# instance fields
.field private final mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Ldolphin/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;->mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;->mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;->mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;->mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Ldolphin/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPauseCustomView()V
    .locals 1

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;->mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Ldolphin/webkit/WebChromeClient$CustomViewCallback;->onPauseCustomView()V

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;->mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Ldolphin/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResumeCustomView()V
    .locals 1

    .prologue
    .line 65
    :try_start_0
    invoke-static {}, Lcom/dolphin/browser/core/DolphinWebkitManager;->a()Lcom/dolphin/browser/core/DolphinWebkitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/core/DolphinWebkitManager;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/dolphinwebkit/CustomViewCallbackWrapper;->mCallback:Ldolphin/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Ldolphin/webkit/WebChromeClient$CustomViewCallback;->onResumeCustomView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
