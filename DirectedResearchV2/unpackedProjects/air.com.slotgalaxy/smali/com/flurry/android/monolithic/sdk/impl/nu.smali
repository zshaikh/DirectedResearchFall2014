.class public abstract Lcom/flurry/android/monolithic/sdk/impl/nu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/android/monolithic/sdk/impl/nt;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/android/monolithic/sdk/impl/nt;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/nt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/nt;)I
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nu;->a()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)I

    move-result v0

    return v0
.end method

.method public abstract a()Lcom/flurry/android/monolithic/sdk/impl/ji;
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 23
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/nt;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/nu;->a(Lcom/flurry/android/monolithic/sdk/impl/nt;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 35
    :goto_0
    return v0

    .line 33
    :cond_0
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nt;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 35
    :cond_2
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/nt;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/nu;->a(Lcom/flurry/android/monolithic/sdk/impl/nt;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nu;->a()Lcom/flurry/android/monolithic/sdk/impl/ji;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b(Ljava/lang/Object;Lcom/flurry/android/monolithic/sdk/impl/ji;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/flurry/android/monolithic/sdk/impl/nn;->b()Lcom/flurry/android/monolithic/sdk/impl/nn;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/android/monolithic/sdk/impl/nn;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
