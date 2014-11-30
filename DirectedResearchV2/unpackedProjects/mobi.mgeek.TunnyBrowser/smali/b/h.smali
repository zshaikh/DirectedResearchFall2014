.class Lb/h;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lb/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/c",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lb/g;


# direct methods
.method constructor <init>(Lb/g;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lb/h;->a:Lb/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/e;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 487
    invoke-virtual {p1}, Lb/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lb/h;->a:Lb/g;

    iget-object v0, v0, Lb/g;->c:Lb/n;

    invoke-virtual {v0}, Lb/n;->c()V

    .line 494
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 489
    :cond_0
    invoke-virtual {p1}, Lb/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lb/h;->a:Lb/g;

    iget-object v0, v0, Lb/g;->c:Lb/n;

    invoke-virtual {p1}, Lb/e;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/n;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object v0, p0, Lb/h;->a:Lb/g;

    iget-object v0, v0, Lb/g;->c:Lb/n;

    invoke-virtual {p1}, Lb/e;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/n;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(Lb/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0, p1}, Lb/h;->a(Lb/e;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
