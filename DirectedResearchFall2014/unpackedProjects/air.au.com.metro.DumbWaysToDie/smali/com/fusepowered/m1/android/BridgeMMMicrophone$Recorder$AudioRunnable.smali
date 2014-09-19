.class Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;
.super Ljava/lang/Object;
.source "BridgeMMMicrophone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRunnable"
.end annotation


# instance fields
.field private _callbackRate:I

.field shouldCancel:Z

.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;I)V
    .locals 0
    .parameter
    .parameter "callbackRate"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->_callbackRate:I

    .line 237
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->shouldCancel:Z

    .line 242
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 247
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    iget-object v1, v1, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->_state:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    sget-object v2, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->RECORDING:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->shouldCancel:Z

    if-nez v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    #getter for: Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->webViewRef:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->access$200(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 250
    .local v0, webView:Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->this$0:Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;

    #calls: Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->getAudioLevel()D
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;->access$300(Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->setmicrophoneAudioLevelChange(D)V

    .line 254
    :cond_0
    iget v1, p0, Lcom/fusepowered/m1/android/BridgeMMMicrophone$Recorder$AudioRunnable;->_callbackRate:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 256
    .end local v0           #webView:Lcom/fusepowered/m1/android/MMWebView;
    :cond_1
    return-void
.end method
