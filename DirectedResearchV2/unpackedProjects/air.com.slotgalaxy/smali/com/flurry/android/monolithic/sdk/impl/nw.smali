.class public Lcom/flurry/android/monolithic/sdk/impl/nw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flurry/android/monolithic/sdk/impl/nw;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[B


# instance fields
.field private b:[B

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/flurry/android/monolithic/sdk/impl/nw;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nw;->a:[B

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/flurry/android/monolithic/sdk/impl/nw;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nw;->a:[B

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    .line 45
    iget v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    .line 46
    iget v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    .line 47
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/flurry/android/monolithic/sdk/impl/nw;->a:[B

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    .line 39
    invoke-static {p1}, Lcom/flurry/android/monolithic/sdk/impl/nw;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    .line 40
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    array-length v0, v0

    iput v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    .line 41
    iput-object p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->d:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 141
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/flurry/android/monolithic/sdk/impl/nw;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    iget-object v3, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    iget v5, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/flurry/android/monolithic/sdk/impl/lg;->a([BII[BII)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/flurry/android/monolithic/sdk/impl/nw;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    if-ge v0, p1, :cond_0

    .line 78
    new-array v0, p1, [B

    .line 79
    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    .line 82
    :cond_0
    iput p1, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->d:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public a()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    return v0
.end method

.method public charAt(I)C
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/nw;

    invoke-virtual {p0, p1}, Lcom/flurry/android/monolithic/sdk/impl/nw;->a(Lcom/flurry/android/monolithic/sdk/impl/nw;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    if-ne p1, p0, :cond_0

    move v0, v5

    .line 113
    :goto_0
    return v0

    .line 106
    :cond_0
    instance-of v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    .line 107
    :cond_1
    check-cast p1, Lcom/flurry/android/monolithic/sdk/impl/nw;

    .line 108
    iget v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    iget v1, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    if-eq v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p1, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    move v1, v4

    .line 110
    :goto_1
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    if-ge v1, v2, :cond_4

    .line 111
    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    aget-byte v2, v2, v1

    aget-byte v3, v0, v1

    if-eq v2, v3, :cond_3

    move v0, v4

    .line 112
    goto :goto_0

    .line 110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v5

    .line 113
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    move v1, v0

    .line 119
    :goto_0
    iget v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    if-ge v0, v2, :cond_0

    .line 120
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    return v1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/flurry/android/monolithic/sdk/impl/nw;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->b:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->c:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/nw;->d:Ljava/lang/String;

    return-object v0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
