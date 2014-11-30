.class Lb/f;
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public a(Lb/e;)Lb/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/e",
            "<TTResult;>;)",
            "Lb/e",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p1}, Lb/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lb/e;->g()Lb/e;

    move-result-object v0

    .line 177
    :goto_0
    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lb/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {p1}, Lb/e;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lb/e;->a(Ljava/lang/Exception;)Lb/e;

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lb/e;->a(Ljava/lang/Object;)Lb/e;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(Lb/e;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lb/f;->a(Lb/e;)Lb/e;

    move-result-object v0

    return-object v0
.end method
