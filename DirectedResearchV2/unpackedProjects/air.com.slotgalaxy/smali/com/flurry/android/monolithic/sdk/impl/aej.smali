.class public abstract Lcom/flurry/android/monolithic/sdk/impl/aej;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Lcom/flurry/android/monolithic/sdk/impl/aek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/aek",
            "<TT;>;"
        }
    .end annotation
.end field

.field c:Lcom/flurry/android/monolithic/sdk/impl/aek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/aek",
            "<TT;>;"
        }
    .end annotation
.end field

.field d:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/aej;->b()V

    .line 56
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aej;->b(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/flurry/android/monolithic/sdk/impl/aek;

    invoke-direct {v0, p1, p2}, Lcom/flurry/android/monolithic/sdk/impl/aek;-><init>(Ljava/lang/Object;I)V

    .line 66
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->b:Lcom/flurry/android/monolithic/sdk/impl/aek;

    if-nez v1, :cond_0

    .line 67
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->b:Lcom/flurry/android/monolithic/sdk/impl/aek;

    .line 72
    :goto_0
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->d:I

    .line 75
    const/16 v0, 0x4000

    if-ge p2, v0, :cond_1

    .line 76
    add-int v0, p2, p2

    .line 80
    :goto_1
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aej;->b(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    invoke-virtual {v1, v0}, Lcom/flurry/android/monolithic/sdk/impl/aek;->a(Lcom/flurry/android/monolithic/sdk/impl/aek;)V

    .line 70
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    goto :goto_0

    .line 78
    :cond_1
    shr-int/lit8 v0, p2, 0x2

    add-int/2addr v0, p2

    goto :goto_1
.end method

.method protected abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 85
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->d:I

    add-int/2addr v0, p2

    .line 86
    invoke-virtual {p0, v0}, Lcom/flurry/android/monolithic/sdk/impl/aej;->b(I)Ljava/lang/Object;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->b:Lcom/flurry/android/monolithic/sdk/impl/aek;

    move v3, v4

    :goto_0
    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {v2, v1, v3}, Lcom/flurry/android/monolithic/sdk/impl/aek;->a(Ljava/lang/Object;I)I

    move-result v3

    .line 90
    invoke-virtual {v2}, Lcom/flurry/android/monolithic/sdk/impl/aek;->b()Lcom/flurry/android/monolithic/sdk/impl/aek;

    move-result-object v2

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p1, v4, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int v2, v3, p2

    .line 97
    if-eq v2, v0, :cond_1

    .line 98
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Should have gotten "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " entries, got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_1
    return-object v1
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    invoke-virtual {v0}, Lcom/flurry/android/monolithic/sdk/impl/aek;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->a:Ljava/lang/Object;

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->b:Lcom/flurry/android/monolithic/sdk/impl/aek;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aej;->d:I

    .line 126
    return-void
.end method
