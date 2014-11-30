.class Lb/k;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/c",
        "<TTResult;",
        "Lb/e",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/c;

.field final synthetic b:Lb/e;


# direct methods
.method constructor <init>(Lb/e;Lb/c;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lb/k;->b:Lb/e;

    iput-object p2, p0, Lb/k;->a:Lb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/e;)Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e",
            "<TTResult;>;)",
            "Lb/e",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p1}, Lb/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1}, Lb/e;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lb/e;->a(Ljava/lang/Exception;)Lb/e;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 377
    :cond_0
    invoke-virtual {p1}, Lb/e;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    invoke-static {}, Lb/e;->g()Lb/e;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lb/k;->a:Lb/c;

    invoke-virtual {p1, v0}, Lb/e;->a(Lb/c;)Lb/e;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(Lb/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lb/k;->a(Lb/e;)Lb/e;

    move-result-object v0

    return-object v0
.end method
