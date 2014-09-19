.class Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;
.super Ljava/lang/Object;
.source "BridgeMMSpeechkit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->release()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    monitor-enter v0

    .line 379
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    #getter for: Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->access$000(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 381
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    #getter for: Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->access$000(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->cancelRecording()V

    .line 382
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    #getter for: Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    invoke-static {v1}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->access$000(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;)Lcom/fusepowered/m1/android/NVASpeechKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->release()V

    .line 383
    iget-object v1, p0, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;

    const/4 v2, 0x0

    #setter for: Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->_speechKit:Lcom/fusepowered/m1/android/NVASpeechKit;
    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;->access$002(Lcom/fusepowered/m1/android/BridgeMMSpeechkit$SpeechKitHolder;Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit;

    .line 385
    :cond_0
    monitor-exit v0

    .line 386
    return-void

    .line 385
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
