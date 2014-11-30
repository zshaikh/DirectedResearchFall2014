.class public Lorg/codehaus/jackson/map/type/MapLikeType;
.super Lorg/codehaus/jackson/map/type/TypeBase;
.source "MapLikeType.java"


# instance fields
.field protected final a:Lorg/codehaus/jackson/type/JavaType;

.field protected final b:Lorg/codehaus/jackson/type/JavaType;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p2}, Lorg/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Lorg/codehaus/jackson/type/JavaType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lorg/codehaus/jackson/map/type/TypeBase;-><init>(Ljava/lang/Class;I)V

    .line 38
    iput-object p2, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 39
    iput-object p3, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    .line 40
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    if-eqz v1, :cond_0

    .line 115
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v1}, Lorg/codehaus/jackson/type/JavaType;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapLikeType;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    .line 99
    iput-object p1, v0, Lorg/codehaus/jackson/map/type/MapLikeType;->f:Ljava/lang/Object;

    .line 100
    return-object v0
.end method

.method public a(I)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 147
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    goto :goto_0

    .line 149
    :cond_1
    const/4 v0, 0x0

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
    .line 51
    new-instance v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    if-nez p1, :cond_0

    const-string v0, "K"

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "V"

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapLikeType;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/codehaus/jackson/type/JavaType;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/MapLikeType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;
    .locals 4
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
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/MapLikeType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/MapLikeType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/MapLikeType;->b(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public d()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/MapLikeType;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapLikeType;

    move-result-object v0

    return-object v0
.end method

.method public e()Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    if-ne p1, p0, :cond_0

    move v0, v3

    .line 218
    :goto_0
    return v0

    .line 214
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    .line 217
    :cond_2
    check-cast p1, Lorg/codehaus/jackson/map/type/MapLikeType;

    .line 218
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    iget-object v1, p1, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p1, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    iget-object v1, p1, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x2

    return v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 195
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map-like type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapLikeType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
