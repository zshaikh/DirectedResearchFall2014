.class Lcom/fusepowered/m1/android/NVASpeechKit$6;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/NVASpeechKit;->createVocalizerListener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
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
    .line 800
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$6;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakingBegin(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "vocalizer"
    .parameter "text"
    .parameter "context"

    .prologue
    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vocalization begins. text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$6;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->VOCALIZING:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1100(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    .line 806
    return-void
.end method

.method public onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V
    .locals 2
    .parameter "vocalizer"
    .parameter "text"
    .parameter "error"
    .parameter "context"

    .prologue
    .line 811
    const-string v0, "Vocalization has ended."

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 812
    if-eqz p3, :cond_0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vocalizer error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$6;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->handleSpeechError(Lcom/nuance/nmdp/speechkit/SpeechError;)V
    invoke-static {v0, p3}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1200(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/SpeechError;)V

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$6;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$State;->READY:Lcom/fusepowered/m1/android/NVASpeechKit$State;

    #calls: Lcom/fusepowered/m1/android/NVASpeechKit;->setState(Lcom/fusepowered/m1/android/NVASpeechKit$State;)V
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$1100(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/fusepowered/m1/android/NVASpeechKit$State;)V

    goto :goto_0
.end method
