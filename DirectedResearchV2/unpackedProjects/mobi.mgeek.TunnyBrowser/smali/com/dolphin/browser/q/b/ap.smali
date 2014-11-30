.class Lcom/dolphin/browser/q/b/ap;
.super Ljava/lang/Object;
.source "EvernoteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/n;

.field final synthetic b:Lcom/dolphin/browser/q/b/at;

.field final synthetic c:Lcom/dolphin/browser/q/b/ag;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/dolphin/browser/q/b/ap;->c:Lcom/dolphin/browser/q/b/ag;

    iput-object p2, p0, Lcom/dolphin/browser/q/b/ap;->a:Lcom/dolphin/browser/q/b/n;

    iput-object p3, p0, Lcom/dolphin/browser/q/b/ap;->b:Lcom/dolphin/browser/q/b/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 265
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/q/b/ap;->c:Lcom/dolphin/browser/q/b/ag;

    invoke-static {v1}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/ag;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/q/b/ap;->c:Lcom/dolphin/browser/q/b/ag;

    iget-object v1, p0, Lcom/dolphin/browser/q/b/ap;->a:Lcom/dolphin/browser/q/b/n;

    iget-object v2, p0, Lcom/dolphin/browser/q/b/ap;->b:Lcom/dolphin/browser/q/b/at;

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/q/b/ag;->a(Lcom/dolphin/browser/q/b/ag;Lcom/dolphin/browser/q/b/n;Lcom/dolphin/browser/q/b/at;)V

    .line 276
    return-void

    .line 266
    :catch_0
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 263
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
