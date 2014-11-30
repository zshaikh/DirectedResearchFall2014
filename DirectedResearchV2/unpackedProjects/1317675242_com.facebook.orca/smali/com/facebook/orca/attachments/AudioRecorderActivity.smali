.class public Lcom/facebook/orca/attachments/AudioRecorderActivity;
.super Lcom/facebook/orca/activity/OrcaActivity;
.source "AudioRecorderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/media/MediaRecorder;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/activity/OrcaActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Z

    .line 63
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->b:Landroid/widget/Button;

    const-string v1, "Use"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Z

    .line 70
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 71
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 76
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 78
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setResult(ILandroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->finish()V

    .line 80
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->a(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setContentView(I)V

    .line 30
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/facebook/orca/activity/OrcaActivity;->b(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->b:Landroid/widget/Button;

    .line 37
    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->c:Landroid/widget/Button;

    .line 40
    :try_start_0
    const-string v0, "orca-audio"

    const-string v1, ".mp4"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->f:Ljava/lang/String;

    .line 43
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    .line 44
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 45
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 47
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->d:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    iput-boolean v2, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Z

    .line 56
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {p0, v2}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setResult(I)V

    .line 51
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 85
    iget-boolean v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->e:Z

    if-nez v0, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->b()V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->c()V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/attachments/AudioRecorderActivity;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->setResult(I)V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/AudioRecorderActivity;->finish()V

    goto :goto_0
.end method
