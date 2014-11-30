.class Lcom/fusepowered/m1/android/BridgeMMInlineVideo$4;
.super Ljava/lang/Object;
.source "BridgeMMInlineVideo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMInlineVideo;->adjustVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$4;->this$0:Lcom/fusepowered/m1/android/BridgeMMInlineVideo;

    iput-object p2, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$4;->val$parameters:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 5

    .prologue
    .line 91
    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$4;->this$0:Lcom/fusepowered/m1/android/BridgeMMInlineVideo;

    iget-object v3, v3, Lcom/fusepowered/m1/android/BridgeMMInlineVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fusepowered/m1/android/MMWebView;

    .line 92
    .local v2, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v2, :cond_0

    .line 94
    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->getMMLayout()Lcom/fusepowered/m1/android/MMLayout;

    move-result-object v0

    .line 97
    .local v0, "mmLayout":Lcom/fusepowered/m1/android/MMLayout;
    new-instance v1, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;

    iget-object v3, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$4;->val$parameters:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/MMWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;-><init>(Ljava/util/HashMap;Landroid/content/Context;)V

    .line 98
    .local v1, "params":Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;
    invoke-virtual {v0, v1}, Lcom/fusepowered/m1/android/MMLayout;->adjustVideo(Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v3

    .line 104
    .end local v0    # "mmLayout":Lcom/fusepowered/m1/android/MMLayout;
    .end local v1    # "params":Lcom/fusepowered/m1/android/InlineVideoView$InlineParams;
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
    .line 87
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$4;->call()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
