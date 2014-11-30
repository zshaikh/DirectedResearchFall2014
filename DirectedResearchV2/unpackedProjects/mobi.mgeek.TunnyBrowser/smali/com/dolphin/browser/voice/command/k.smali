.class Lcom/dolphin/browser/voice/command/k;
.super Landroid/os/Handler;
.source "VoiceActionManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/voice/command/j;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/k;->a:Lcom/dolphin/browser/voice/command/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/dolphin/browser/voice/command/i;

    .line 335
    instance-of v1, v0, Lcom/dolphin/browser/voice/command/b;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/k;->a:Lcom/dolphin/browser/voice/command/j;

    invoke-static {v1}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/j;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error aciton with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/dolphin/browser/voice/command/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/b;->o_()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    :goto_0
    return-void

    .line 337
    :cond_0
    if-nez v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/k;->a:Lcom/dolphin/browser/voice/command/j;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/j;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "action is null!"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/voice/command/i;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/k;->a:Lcom/dolphin/browser/voice/command/j;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/j;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "success!"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/voice/command/k;->a:Lcom/dolphin/browser/voice/command/j;

    invoke-static {v0}, Lcom/dolphin/browser/voice/command/j;->a(Lcom/dolphin/browser/voice/command/j;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "not supported!"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/df;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
