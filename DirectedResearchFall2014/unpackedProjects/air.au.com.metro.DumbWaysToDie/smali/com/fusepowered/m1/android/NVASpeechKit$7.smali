.class Lcom/fusepowered/m1/android/NVASpeechKit$7;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;->createRecognizerListener()Lcom/nuance/nmdp/speechkit/Recognizer$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/NVASpeechKit;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/NVASpeechKit;)V
    .locals 0
    .parameter

    .prologue
    .line 835
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 2
    .parameter "recognizer"
    .parameter "error"

    .prologue
    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Speech Kit Error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " detail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " suggestions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getSuggestion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->cancelAudioLevelCallbacks()V
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1500(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    .line 871
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->handleSpeechError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    invoke-static {v0, p2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1200(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 872
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    const/4 v1, 0x0

    #setter for: Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$002(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)Lcom/nuance/nmdp/speechkit/Recognizer;

    .line 874
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1600(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recognizer.Listener.onError: session id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;
    invoke-static {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1600(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method

.method public onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 4
    .parameter "recognizer"

    .prologue
    .line 839
    const-string v0, "recording begins"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 840
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    .line 841
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$200(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->RECORDING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1100(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->startProgress(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    invoke-static {v0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1300(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/Recognizer;)V

    .line 846
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$200(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$600(Lcom/fusepowered/m1/android/NVASpeechKit;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioSampleCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1400(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$600(Lcom/fusepowered/m1/android/NVASpeechKit;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioSampleCallback:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1400(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 851
    :cond_1
    return-void
.end method

.method public onRecordingDone(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 2
    .parameter "recognizer"

    .prologue
    .line 856
    const-string v0, "recording has ended"

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->cancelAudioLevelCallbacks()V
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1500(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    .line 858
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$200(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->PROCESSING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1100(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1600(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->sk:Lcom/nuance/nmdp/speechkit/SpeechKit;
    invoke-static {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1600(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/SpeechKit;->getSessionId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1702(Lcom/fusepowered/m1/android/NVASpeechKit;Ljava/lang/String;)Ljava/lang/String;

    .line 864
    :cond_1
    return-void
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V
    .locals 2
    .parameter "recognizer"
    .parameter "results"

    .prologue
    .line 883
    const-string v0, "recording results returned."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->cancelAudioLevelCallbacks()V
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1500(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    .line 885
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$200(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v0

    iget-boolean v0, v0, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-nez v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/Recognition;->getDetailedResults()Ljava/util/List;

    move-result-object v1

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->processResults(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1800(Lcom/fusepowered/m1/android/NVASpeechKit;Ljava/util/List;)V

    .line 889
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1700(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recognizer.Listener.onResults: session id ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->nuance_transaction_session_id:Ljava/lang/String;
    invoke-static {v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1700(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->logEvent()V

    .line 901
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    iput-object v1, v0, Lcom/fusepowered/m1/android/NVASpeechKit;->_results:[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    .line 899
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$7;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->notifySpeechResults()V
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$700(Lcom/fusepowered/m1/android/NVASpeechKit;)V

    goto :goto_0
.end method
