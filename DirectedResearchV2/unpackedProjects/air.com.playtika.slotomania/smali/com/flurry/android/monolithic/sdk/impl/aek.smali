.class final Lcom/flurry/android/monolithic/sdk/impl/aek;
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
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:I

.field c:Lcom/flurry/android/monolithic/sdk/impl/aek;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/android/monolithic/sdk/impl/aek",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->a:Ljava/lang/Object;

    .line 158
    iput p2, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->b:I

    .line 159
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->b:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->b:I

    add-int/2addr v0, p2

    .line 167
    return v0
.end method

.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/flurry/android/monolithic/sdk/impl/aek;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/android/monolithic/sdk/impl/aek",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    .line 178
    return-void
.end method

.method public b()Lcom/flurry/android/monolithic/sdk/impl/aek;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/android/monolithic/sdk/impl/aek",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/aek;->c:Lcom/flurry/android/monolithic/sdk/impl/aek;

    return-object v0
.end method
