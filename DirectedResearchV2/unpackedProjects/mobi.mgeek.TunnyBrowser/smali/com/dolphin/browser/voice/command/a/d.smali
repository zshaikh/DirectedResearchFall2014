.class Lcom/dolphin/browser/voice/command/a/d;
.super Ljava/lang/Object;
.source "GoogleRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/voice/command/a/a;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/a/d;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/d;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/a;->d(Lcom/dolphin/browser/voice/command/a/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/d;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/a;->e(Lcom/dolphin/browser/voice/command/a/a;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/d;->a:Lcom/dolphin/browser/voice/command/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/voice/command/a/a;->a(Lcom/dolphin/browser/voice/command/a/a;Z)Z

    .line 181
    const-string v0, "GoogleRecorder"

    const-string v1, "before stopListening"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/d;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/a;->e(Lcom/dolphin/browser/voice/command/a/a;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 183
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/d;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/a;->e(Lcom/dolphin/browser/voice/command/a/a;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 184
    const-string v0, "GoogleRecorder"

    const-string v1, "after stopListening"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    return-void
.end method
