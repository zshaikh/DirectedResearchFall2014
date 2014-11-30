.class public final Lorg/codehaus/jackson/sym/NameN;
.super Lorg/codehaus/jackson/sym/Name;
.source "NameN.java"


# instance fields
.field final c:[I

.field final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;I[II)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lorg/codehaus/jackson/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 19
    const/4 v0, 0x3

    if-ge p4, v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Qlen must >= 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p3, p0, Lorg/codehaus/jackson/sym/NameN;->c:[I

    .line 23
    iput p4, p0, Lorg/codehaus/jackson/sym/NameN;->d:I

    .line 24
    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public a(II)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public a([II)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    iget v0, p0, Lorg/codehaus/jackson/sym/NameN;->d:I

    if-eq p2, v0, :cond_0

    move v0, v3

    .line 66
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 61
    :goto_1
    if-ge v0, p2, :cond_2

    .line 62
    aget v1, p1, v0

    iget-object v2, p0, Lorg/codehaus/jackson/sym/NameN;->c:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_1

    move v0, v3

    .line 63
    goto :goto_0

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 66
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
