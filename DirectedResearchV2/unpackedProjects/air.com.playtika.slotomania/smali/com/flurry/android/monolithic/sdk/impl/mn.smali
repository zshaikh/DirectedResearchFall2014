.class Lcom/flurry/android/monolithic/sdk/impl/mn;
.super Lcom/flurry/android/monolithic/sdk/impl/nm;
.source "SourceFile"


# instance fields
.field public a:Lcom/flurry/android/monolithic/sdk/impl/ji;


# direct methods
.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/ji;Lcom/flurry/android/monolithic/sdk/impl/ji;)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/nm;-><init>(Lcom/flurry/android/monolithic/sdk/impl/ji;)V

    .line 468
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/mn;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    .line 469
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 471
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/mn;

    if-nez v0, :cond_0

    move v0, v2

    .line 473
    :goto_0
    return v0

    .line 472
    :cond_0
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/mn;

    .line 473
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mn;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/mn;->b:Lcom/flurry/android/monolithic/sdk/impl/ji;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/mn;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    iget-object v1, p1, Lcom/flurry/android/monolithic/sdk/impl/mn;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/flurry/android/monolithic/sdk/impl/nm;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/mn;->a:Lcom/flurry/android/monolithic/sdk/impl/ji;

    invoke-virtual {v1}, Lcom/flurry/android/monolithic/sdk/impl/ji;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
