.class Lcom/fusepowered/m1/android/BridgeMMInlineVideo$1;
.super Ljava/lang/Object;
.source "BridgeMMInlineVideo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMInlineVideo;->insertVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/fusepowered/m1/android/MMJSResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMInlineVideo;

.field final synthetic val$parameters:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMInlineVideo;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMInlineVideo;

    iput-object p2, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$1;->val$parameters:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 5

    .prologue
    .line 22
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMInlineVideo;

    iget-object v3, v3, Lcom/fusepowered/m1/android/BridgeMMInlineVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 23
    .local v1, mmWebView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getMMLayout()Lcom/fusepowered/m1/android/MMLayout;

    move-result-object v0

    .line 26
    .local v0, mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    new-instance v2, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$1;->val$parameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;-><init>(Ljava/util/HashMap;Landroid/content/Context;)V

    .line 27
    .local v2, params:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;
    invoke-virtual {v0, v2}, Lcom/fusepowered/m1/android/MMLayout;->initInlineVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)V

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usingStreaming="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMLayout;->isVideoPlayingStreaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 30
    .end local v0           #mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    .end local v2           #params:Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;
    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$1;->call()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
