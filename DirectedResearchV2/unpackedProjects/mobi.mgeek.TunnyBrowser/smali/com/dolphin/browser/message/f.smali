.class Lcom/dolphin/browser/message/f;
.super Landroid/content/BroadcastReceiver;
.source "MessagesStore.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/message/e;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/message/e;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/message/f;->a:Lcom/dolphin/browser/message/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 75
    const-string v0, "LOGTAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/message/f;->a:Lcom/dolphin/browser/message/e;

    invoke-virtual {v0}, Lcom/dolphin/browser/message/e;->b()V

    .line 77
    return-void
.end method
