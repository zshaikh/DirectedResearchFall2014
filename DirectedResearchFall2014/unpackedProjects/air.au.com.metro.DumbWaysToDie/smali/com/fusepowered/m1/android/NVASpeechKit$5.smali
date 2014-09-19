.class Lcom/fusepowered/m1/android/NVASpeechKit$5;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/fusepowered/m1/android/NVASpeechKit$Listener;


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
    .line 345
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioLevelUpdate(D)V
    .locals 1
    .parameter "audioLevel"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/android/NVASpeechKit;->audioLevelChange(D)V

    .line 404
    return-void
.end method

.method public onAudioSampleUpdate(D)V
    .locals 1
    .parameter "averageAudioLevel"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0, p1, p2}, Lcom/fusepowered/m1/android/NVASpeechKit;->backgroundAudioLevel(D)V

    .line 398
    return-void
.end method

.method public onCustomWordsAdded()V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public onCustomWordsDeleted()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public onError()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public onResults()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    iget-object v2, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->getResults()[Lcom/fusepowered/m1/android/NVASpeechKit$Result;

    move-result-object v2

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->resultsToJSON([Lcom/fusepowered/m1/android/NVASpeechKit$Result;)Lorg/json/JSONArray;
    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1000(Lcom/fusepowered/m1/android/NVASpeechKit;[Lcom/fusepowered/m1/android/NVASpeechKit$Result;)Lorg/json/JSONArray;

    move-result-object v0

    .line 376
    .local v0, jsonArray:Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/NVASpeechKit;->recognitionResult(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public onStateChange(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 350
    sget-object v0, Lcom/fusepowered/m1/android/NVASpeechKit$8;->$SwitchMap$com$millennialmedia$android$NVASpeechKit$State:[I

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/NVASpeechKit$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 353
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->voiceStateChangeError()V

    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->voiceStateChangeProcessing()V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->voiceStateChangeReady()V

    goto :goto_0

    .line 362
    :pswitch_3
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->voiceStateChangeRecording()V

    goto :goto_0

    .line 365
    :pswitch_4
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$5;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->voiceStateChangeVocalizing()V

    goto :goto_0

    .line 350
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
