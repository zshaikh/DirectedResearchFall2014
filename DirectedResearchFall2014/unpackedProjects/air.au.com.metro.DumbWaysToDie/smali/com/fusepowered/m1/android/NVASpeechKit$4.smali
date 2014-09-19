.class Lcom/fusepowered/m1/android/NVASpeechKit$4;
.super Ljava/lang/Object;
.source "NVASpeechKit.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;


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
    .line 256
    iput-object p1, p0, Lcom/fusepowered/m1/android/NVASpeechKit$4;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifyListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$4;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$300(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$4;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$800(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$4;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommandType:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$900(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;->Add:Lcom/fusepowered/m1/android/NVASpeechKit$CustomWordsOp;

    if-ne v0, v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$4;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$300(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$Listener;->onCustomWordsAdded()V

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$4;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    const/4 v1, 0x0

    #setter for: Lcom/fusepowered/m1/android/NVASpeechKit;->pendingDataUploadCommand:Lcom/nuance/nmdp/speechkit/DataUploadCommand;
    invoke-static {v0, v1}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$802(Lcom/fusepowered/m1/android/NVASpeechKit;Lcom/nuance/nmdp/speechkit/DataUploadCommand;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;

    .line 289
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m1/android/NVASpeechKit$4;->this$0:Lcom/fusepowered/m1/android/NVASpeechKit;

    #getter for: Lcom/fusepowered/m1/android/NVASpeechKit;->speechKitListener:Lcom/fusepowered/m1/android/NVASpeechKit$Listener;
    invoke-static {v0}, Lcom/fusepowered/m1/android/NVASpeechKit;->access$300(Lcom/fusepowered/m1/android/NVASpeechKit;)Lcom/fusepowered/m1/android/NVASpeechKit$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m1/android/NVASpeechKit$Listener;->onCustomWordsDeleted()V

    goto :goto_0
.end method


# virtual methods
.method public onError(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 2
    .parameter "command"
    .parameter "error"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataUploadCommand listener error. command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorDetail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->e(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit$4;->notifyListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V

    .line 270
    return-void
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/DataUploadCommand;Lcom/nuance/nmdp/speechkit/DataUploadResult;)V
    .locals 2
    .parameter "command"
    .parameter "results"

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataUploadCommand listener successful command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isVocRegenerated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/DataUploadResult;->isVocRegenerated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " results:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/NVASpeechKit$4;->notifyListener(Lcom/nuance/nmdp/speechkit/DataUploadCommand;)V

    .line 262
    return-void
.end method
