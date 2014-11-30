.class Lcom/fusepowered/m1/android/BridgeMMCachedVideo$5;
.super Ljava/lang/Object;
.source "BridgeMMCachedVideo.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->restartVideo(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
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
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMCachedVideo;

.field final synthetic val$vpa:Lcom/fusepowered/m1/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMCachedVideo;Lcom/fusepowered/m1/android/VideoPlayerActivity;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$5;->this$0:Lcom/fusepowered/m1/android/BridgeMMCachedVideo;

    iput-object p2, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$5;->val$vpa:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/fusepowered/m1/android/MMJSResponse;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$5;->val$vpa:Lcom/fusepowered/m1/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/VideoPlayerActivity;->restartVideo()V

    .line 284
    invoke-static {}, Lcom/fusepowered/m1/android/MMJSResponse;->responseWithSuccess()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$5;->call()Lcom/fusepowered/m1/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method
