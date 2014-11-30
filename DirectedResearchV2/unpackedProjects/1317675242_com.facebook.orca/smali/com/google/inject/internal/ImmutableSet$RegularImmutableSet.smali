.class final Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;
.super Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final mask:I

.field final table:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcom/google/inject/internal/ImmutableSet$ArrayImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 431
    iput-object p3, p0, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;->table:[Ljava/lang/Object;

    .line 432
    iput p4, p0, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;->mask:I

    .line 433
    iput p2, p0, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;->hashCode:I

    .line 434
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 437
    if-nez p1, :cond_0

    move v0, v3

    .line 446
    :goto_0
    return v0

    .line 440
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/inject/internal/Hashing;->smear(I)I

    move-result v0

    .line 441
    :goto_1
    iget-object v1, p0, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;->table:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;->mask:I

    and-int/2addr v2, v0

    aget-object v1, v1, v2

    .line 442
    if-nez v1, :cond_1

    move v0, v3

    .line 443
    goto :goto_0

    .line 445
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/google/inject/internal/ImmutableSet$RegularImmutableSet;->hashCode:I

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x1

    return v0
.end method
