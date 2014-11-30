.class Lcom/dolphin/browser/util/h;
.super Lcom/dolphin/browser/util/q;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dolphin/browser/util/q",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/util/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/util/f;)V
    .locals 1

    .prologue
    .line 343
    iput-object p1, p0, Lcom/dolphin/browser/util/h;->a:Lcom/dolphin/browser/util/f;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/util/q;-><init>(Lcom/dolphin/browser/util/g;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/dolphin/browser/util/h;->a:Lcom/dolphin/browser/util/f;

    invoke-static {v0}, Lcom/dolphin/browser/util/f;->a(Lcom/dolphin/browser/util/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 348
    iget-boolean v0, p0, Lcom/dolphin/browser/util/h;->c:Z

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/dolphin/browser/util/f;->a(I)V

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/util/h;->a:Lcom/dolphin/browser/util/f;

    iget-object v1, p0, Lcom/dolphin/browser/util/h;->a:Lcom/dolphin/browser/util/f;

    iget-object v2, p0, Lcom/dolphin/browser/util/h;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/f;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/f;->a(Lcom/dolphin/browser/util/f;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 351
    :cond_0
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/dolphin/browser/util/f;->a(I)V

    goto :goto_0
.end method
