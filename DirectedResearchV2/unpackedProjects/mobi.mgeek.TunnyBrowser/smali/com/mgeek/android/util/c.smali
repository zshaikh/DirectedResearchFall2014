.class public Lcom/mgeek/android/util/c;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 123
    if-ge v1, v2, :cond_0

    move v0, v1

    :goto_0
    move v4, v3

    .line 125
    :goto_1
    if-ge v4, v0, :cond_1

    .line 126
    add-int/lit8 v5, v4, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    sub-int v3, v6, v3

    if-eqz v3, :cond_2

    move v0, v3

    .line 131
    :goto_2
    return v0

    :cond_0
    move v0, v2

    .line 123
    goto :goto_0

    .line 131
    :cond_1
    sub-int v0, v1, v2

    goto :goto_2

    :cond_2
    move v3, v4

    move v4, v5

    goto :goto_1
.end method
