.class Lcom/flurry/android/monolithic/sdk/impl/nz;
.super Ljava/lang/ref/WeakReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<TK;>;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/flurry/android/monolithic/sdk/impl/nx;


# direct methods
.method constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/nx;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nz;->b:Lcom/flurry/android/monolithic/sdk/impl/nx;

    .line 150
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/nx;->a(Lcom/flurry/android/monolithic/sdk/impl/nx;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 151
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nz;->a:I

    .line 152
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 159
    if-ne p0, p1, :cond_0

    move v0, v2

    .line 166
    :goto_0
    return v0

    .line 162
    :cond_0
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/nz;

    .line 163
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nz;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/monolithic/sdk/impl/nz;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nz;->a:I

    return v0
.end method
