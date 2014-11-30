.class public Lcom/dolphin/browser/voice/command/a/a;
.super Lcom/dolphin/browser/voice/command/a/h;
.source "GoogleRecorder.java"


# instance fields
.field a:Landroid/os/Handler;

.field private f:Landroid/speech/SpeechRecognizer;

.field private g:F

.field private volatile h:Z

.field private final i:I

.field private j:F

.field private k:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/dolphin/browser/voice/command/a/h;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/voice/command/a/a;->h:Z

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/dolphin/browser/voice/command/a/a;->i:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/voice/command/a/a;->j:F

    .line 169
    new-instance v0, Lcom/dolphin/browser/voice/command/a/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/voice/command/a/c;-><init>(Lcom/dolphin/browser/voice/command/a/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->a:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/dolphin/browser/voice/command/a/d;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/voice/command/a/d;-><init>(Lcom/dolphin/browser/voice/command/a/a;)V

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->k:Ljava/lang/Runnable;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/a/a;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dolphin/browser/voice/command/a/a;->j:F

    return v0
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/a/a;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/dolphin/browser/voice/command/a/a;->j:F

    return p1
.end method

.method static synthetic a(Lcom/dolphin/browser/voice/command/a/a;Z)Z
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/dolphin/browser/voice/command/a/a;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/voice/command/a/a;)F
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/dolphin/browser/voice/command/a/a;->g:F

    return v0
.end method

.method static synthetic b(Lcom/dolphin/browser/voice/command/a/a;F)F
    .locals 0

    .prologue
    .line 22
    iput p1, p0, Lcom/dolphin/browser/voice/command/a/a;->g:F

    return p1
.end method

.method static synthetic c(Lcom/dolphin/browser/voice/command/a/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/a/a;->g()V

    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/voice/command/a/a;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/dolphin/browser/voice/command/a/a;->h:Z

    return v0
.end method

.method static synthetic e(Lcom/dolphin/browser/voice/command/a/a;)Landroid/speech/SpeechRecognizer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/dolphin/browser/voice/command/a/a;->i:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/dolphin/browser/voice/command/a/a;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "GoogleRecorder"

    const-string v1, "stopRecord"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/voice/command/a/a;->h:Z

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 198
    iget v0, p0, Lcom/dolphin/browser/voice/command/a/a;->i:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "GoogleRecorder"

    const-string v1, "countDown"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/voice/command/a/a;->h:Z

    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/a;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 42
    sget-object v0, Lcom/dolphin/browser/voice/command/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/dolphin/browser/voice/command/a/a;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/dolphin/browser/voice/command/a/a;->d()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string v1, "android.speech.extra.LANGUAGE"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/a/a;->h()V

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "GoogleRecorder"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 70
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    new-instance v1, Lcom/dolphin/browser/voice/command/a/b;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/voice/command/a/b;-><init>(Lcom/dolphin/browser/voice/command/a/a;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lcom/dolphin/browser/voice/command/a/h;->b()V

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/dolphin/browser/voice/command/a/a;->g()V

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->f:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 152
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/a/a;->d:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/voice/command/b/d;->a(Landroid/content/Context;I)V

    .line 162
    return-void
.end method

.method public d()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/dolphin/browser/voice/command/b/d;->a()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
