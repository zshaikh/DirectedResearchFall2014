.class Lcom/dolphin/browser/message/b;
.super Ljava/lang/Object;
.source "C2DMService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/message/C2DMService;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/message/C2DMService;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/dolphin/browser/message/b;->a:Lcom/dolphin/browser/message/C2DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/message/b;->a:Lcom/dolphin/browser/message/C2DMService;

    invoke-static {v0}, Lcom/dolphin/browser/message/C2DMService;->b(Lcom/dolphin/browser/message/C2DMService;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/message/b;->a:Lcom/dolphin/browser/message/C2DMService;

    new-instance v1, Lcom/dolphin/browser/message/c;

    iget-object v2, p0, Lcom/dolphin/browser/message/b;->a:Lcom/dolphin/browser/message/C2DMService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/dolphin/browser/message/c;-><init>(Lcom/dolphin/browser/message/C2DMService;Lcom/dolphin/browser/message/b;)V

    invoke-static {v0, v1}, Lcom/dolphin/browser/message/C2DMService;->a(Lcom/dolphin/browser/message/C2DMService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 110
    iget-object v0, p0, Lcom/dolphin/browser/message/b;->a:Lcom/dolphin/browser/message/C2DMService;

    invoke-static {v0}, Lcom/dolphin/browser/message/C2DMService;->b(Lcom/dolphin/browser/message/C2DMService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    :cond_0
    return-void
.end method
