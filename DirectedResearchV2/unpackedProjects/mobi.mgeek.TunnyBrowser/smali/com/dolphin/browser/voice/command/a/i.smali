.class Lcom/dolphin/browser/voice/command/a/i;
.super Landroid/os/Handler;
.source "IRecorderImpl.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/voice/command/a/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/voice/command/a/h;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    .line 98
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    iput v0, v1, Lcom/dolphin/browser/voice/command/a/h;->b:I

    .line 99
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    iget v1, v1, Lcom/dolphin/browser/voice/command/a/h;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    iget v1, v1, Lcom/dolphin/browser/voice/command/a/h;->b:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    iget v1, v1, Lcom/dolphin/browser/voice/command/a/h;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    const/4 v2, 0x1

    iput v2, v1, Lcom/dolphin/browser/voice/command/a/h;->b:I

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    iget-object v1, v1, Lcom/dolphin/browser/voice/command/a/h;->c:Lcom/dolphin/browser/voice/command/a/g;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/dolphin/browser/voice/command/a/i;->a:Lcom/dolphin/browser/voice/command/a/h;

    iget-object v1, v1, Lcom/dolphin/browser/voice/command/a/h;->c:Lcom/dolphin/browser/voice/command/a/g;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/voice/command/a/g;->a(I)V

    .line 105
    :cond_2
    return-void
.end method
