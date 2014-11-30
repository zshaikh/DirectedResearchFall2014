.class public final Lorg/codehaus/jackson/map/type/SimpleType;
.super Lorg/codehaus/jackson/map/type/TypeBase;
.source "SimpleType.java"


# instance fields
.field protected final a:[Lorg/codehaus/jackson/type/JavaType;

.field protected final b:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0, v0}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            "[",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;I)V

    .line 46
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 47
    :cond_0
    iput-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->b:[Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_1
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/SimpleType;->b:[Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0
.end method

.method public static c(Ljava/lang/Class;)Lorg/codehaus/jackson/map/type/SimpleType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/map/type/SimpleType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    invoke-direct {v0, p0, v1, v1}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 127
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const/4 v1, 0x1

    .line 129
    iget-object v2, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    array-length v3, v2

    move v4, v1

    move v1, v7

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v2, v1

    .line 130
    if-eqz v4, :cond_0

    move v4, v7

    .line 135
    :goto_1
    invoke-virtual {v5}, Lorg/codehaus/jackson/type/JavaType;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 137
    :cond_1
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/SimpleType;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/SimpleType;->b:[Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    .line 109
    iput-object p1, v0, Lorg/codehaus/jackson/map/type/SimpleType;->f:Ljava/lang/Object;

    .line 110
    return-object v0
.end method

.method public a(I)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 159
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method protected a(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/codehaus/jackson/map/type/SimpleType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->b:[Ljava/lang/String;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/type/SimpleType;-><init>(Ljava/lang/Class;[Ljava/lang/String;[Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->b:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->b:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Internal error: SimpleType.narrowContentsBy() should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenTypeHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/SimpleType;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 211
    if-ne p1, p0, :cond_0

    move v0, v7

    .line 234
    :goto_0
    return v0

    .line 212
    :cond_0
    if-nez p1, :cond_1

    move v0, v6

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v6

    goto :goto_0

    .line 215
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/map/type/SimpleType;

    .line 218
    iget-object v0, p1, Lorg/codehaus/jackson/map/type/SimpleType;->c:Ljava/lang/Class;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/SimpleType;->c:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    move v0, v6

    goto :goto_0

    .line 221
    :cond_3
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    .line 222
    iget-object v1, p1, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    .line 223
    if-nez v0, :cond_6

    .line 224
    if-eqz v1, :cond_4

    array-length v0, v1

    if-nez v0, :cond_5

    :cond_4
    move v0, v7

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_0

    .line 226
    :cond_6
    if-nez v1, :cond_7

    move v0, v6

    goto :goto_0

    .line 228
    :cond_7
    array-length v2, v0

    array-length v3, v1

    if-eq v2, v3, :cond_8

    move v0, v6

    goto :goto_0

    .line 229
    :cond_8
    array-length v2, v0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_a

    .line 230
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {v4, v5}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move v0, v6

    .line 231
    goto :goto_0

    .line 229
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_a
    move v0, v7

    .line 234
    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/SimpleType;->a:[Lorg/codehaus/jackson/type/JavaType;

    array-length v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    const-string v1, "[simple type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/codehaus/jackson/map/type/SimpleType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
