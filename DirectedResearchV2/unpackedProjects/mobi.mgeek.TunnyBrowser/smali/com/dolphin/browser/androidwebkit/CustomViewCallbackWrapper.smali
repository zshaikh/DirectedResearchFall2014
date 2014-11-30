.class Lcom/dolphin/browser/androidwebkit/CustomViewCallbackWrapper;
.super Ljava/lang/Object;
.source "CustomViewCallbackWrapper.java"

# interfaces
.implements Lcom/dolphin/browser/core/IWebViewCallback$CustomViewCallback;


# instance fields
.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;


# direct methods
.method public constructor <init>(Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/dolphin/browser/androidwebkit/CustomViewCallbackWrapper;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CustomViewCallbackWrapper;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CustomViewCallbackWrapper;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onCustomViewHidden()V
    .locals 1

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/androidwebkit/CustomViewCallbackWrapper;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-static {v0}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPauseCustomView()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onResumeCustomView()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method
