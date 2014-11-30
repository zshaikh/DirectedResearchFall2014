.class Lcom/dolphin/browser/voice/command/a/b;
.super Ljava/lang/Object;
.source "GoogleRecorder.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/a/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/voice/command/a/a;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/a/a;->a(I)V

    .line 139
    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/a;->c(Lcom/dolphin/browser/voice/command/a/a;)V

    .line 126
    const-string v0, "Sonar"

    const-string v1, "duration"

    const-string v2, "all"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->recordStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    const-string v0, "Sonar"

    const-string v1, "duration"

    const-string v2, "yuyin"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->recordStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/a/a;->a(I)V

    .line 129
    return-void
.end method

.method public onError(I)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/a;->c(Lcom/dolphin/browser/voice/command/a/a;)V

    .line 115
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x4

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/voice/command/a/a;->b(I)V

    .line 121
    return-void

    .line 118
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/a/a;->a(I)V

    .line 99
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/a/a;->c(Lcom/dolphin/browser/voice/command/a/a;)V

    .line 86
    const-string v0, "Sonar"

    const-string v1, "duration"

    const-string v2, "yuyin"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Normal:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackDuration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 87
    const/4 v0, 0x0

    .line 89
    :try_start_0
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    new-instance v2, Lcom/dolphin/browser/voice/command/h;

    iget-object v3, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-virtual {v3}, Lcom/dolphin/browser/voice/command/a/a;->f()F

    move-result v3

    const/high16 v4, 0x40e00000

    div-float/2addr v3, v4

    invoke-direct {v2, v0, v3}, Lcom/dolphin/browser/voice/command/h;-><init>(Ljava/util/List;F)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/voice/command/a/a;->a(Lcom/dolphin/browser/voice/command/h;)V

    .line 94
    return-void

    .line 90
    :catch_0
    move-exception v1

    .line 91
    invoke-static {v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onRmsChanged(F)V
    .locals 3

    .prologue
    .line 75
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v1}, Lcom/dolphin/browser/voice/command/a/a;->a(Lcom/dolphin/browser/voice/command/a/a;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/voice/command/a/a;->a(Lcom/dolphin/browser/voice/command/a/a;F)F

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v0, p1}, Lcom/dolphin/browser/voice/command/a/a;->b(Lcom/dolphin/browser/voice/command/a/a;F)F

    .line 79
    sget-object v0, Lcom/dolphin/browser/voice/command/a/h;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/b;->a:Lcom/dolphin/browser/voice/command/a/a;

    invoke-static {v1}, Lcom/dolphin/browser/voice/command/a/a;->b(Lcom/dolphin/browser/voice/command/a/a;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40e00000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/voice/command/a/a;->a(F)V

    .line 81
    return-void
.end method
