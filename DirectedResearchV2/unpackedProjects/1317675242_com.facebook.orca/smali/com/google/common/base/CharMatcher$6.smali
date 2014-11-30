.class final Lcom/google/common/base/CharMatcher$6;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 230
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .locals 1

    .prologue
    .line 240
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 241
    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 242
    if-ne p2, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public matches(C)Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 295
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-object p0
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .locals 0

    .prologue
    .line 304
    return-object p0
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string v0, ""

    return-object v0
.end method
