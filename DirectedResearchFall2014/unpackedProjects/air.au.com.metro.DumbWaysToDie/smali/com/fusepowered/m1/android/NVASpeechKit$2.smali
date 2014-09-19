.class Lcom/fusepowered/m1/android/NVASpeechKit$2;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;
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
    .line 211
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 215
    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$000(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 218
    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->skCurrentRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$000(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/Recognizer;->getAudioLevel()F

    move-result v2

    float-to-double v2, v2

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->normalize(D)D
    invoke-static {v2, v3}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->access$100(D)D

    move-result-wide v0

    .line 219
    .local v0, normalizedLevel:D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audiolevel changed: level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 222
    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$200(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->update(D)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$300(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$300(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit$Listener;->onAudioLevelUpdate(D)V

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->state:Lcom/fusepowered/m1/android/NVASpeechKit$State;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$400(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$State;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/m1/android/NVASpeechKit$State;->RECORDING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelTracker:Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$200(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;

    move-result-object v2

    iget-boolean v2, v2, Lcom/fusepowered/m1/android/NVASpeechKit$AudioLevelTracker;->isTrackingAudioSample:Z

    if-eqz v2, :cond_2

    .line 231
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speeckKitHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$600(Lcom/fusepowered/m1/android/NVASpeechKit;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/fusepowered/m1/android/NVASpeechKit$2;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelCallback:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$500(Lcom/fusepowered/m1/android/NVASpeechKit;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    .end local v0           #normalizedLevel:D
    :cond_2
    return-void
.end method
