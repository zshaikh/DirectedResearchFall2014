.class Lcom/dolphin/browser/q/b/ai;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/b/aw;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ai;->a:Lcom/dolphin/browser/q/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 370
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/c/b/c/z;

    if-eqz v0, :cond_0

    .line 371
    check-cast p1, Lcom/c/b/c/z;

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ai;->a:Lcom/dolphin/browser/q/b/ag;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/ag;->b(Lcom/dolphin/browser/q/b/ag;)Lcom/dolphin/browser/q/b/bi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/z;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/bi;->a(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ai;->a:Lcom/dolphin/browser/q/b/ag;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/ag;->b(Lcom/dolphin/browser/q/b/ag;)Lcom/dolphin/browser/q/b/bi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/c/b/c/z;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/b/bi;->b(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ai;->a:Lcom/dolphin/browser/q/b/ag;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/ag;->c(Lcom/dolphin/browser/q/b/ag;)Lcom/dolphin/browser/q/b/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ai;->a:Lcom/dolphin/browser/q/b/ag;

    invoke-static {v0}, Lcom/dolphin/browser/q/b/ag;->c(Lcom/dolphin/browser/q/b/ag;)Lcom/dolphin/browser/q/b/bj;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/q/b/bj;->a()V

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ai;->a:Lcom/dolphin/browser/q/b/ag;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/ag;Z)Z

    .line 380
    return-void
.end method
