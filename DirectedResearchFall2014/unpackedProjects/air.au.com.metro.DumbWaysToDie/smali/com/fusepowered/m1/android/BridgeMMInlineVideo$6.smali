.class Lcom/fusepowered/m1/android/BridgeMMInlineVideo$6;
.super Ljava/lang/Object;
.source "BridgeMMInlineVideo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMInlineVideo;->pauseVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMInlineVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$6;->this$0:Lcom/fusepowered/m1/android/BridgeMMInlineVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 3

    .prologue
    .line 139
    iget-object v2, p0, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$6;->this$0:Lcom/fusepowered/m1/android/BridgeMMInlineVideo;

    iget-object v2, v2, Lcom/fusepowered/m1/android/BridgeMMInlineVideo;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 140
    .local v1, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->getMMLayout()Lcom/fusepowered/m1/android/MMLayout;

    move-result-object v0

    .line 144
    .local v0, mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMLayout;->pauseVideo()V

    .line 147
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

    .line 150
    .end local v0           #mmLayout:Lcom/fusepowered/m1/android/MMLayout;
    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithError()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v2

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
    .line 135
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMInlineVideo$6;->call()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
