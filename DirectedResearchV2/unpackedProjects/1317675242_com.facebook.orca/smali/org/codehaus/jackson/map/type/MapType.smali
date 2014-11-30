.class public final Lorg/codehaus/jackson/map/type/MapType;
.super Lorg/codehaus/jackson/map/type/MapLikeType;
.source "MapType.java"


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V
    .locals 0
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
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lorg/codehaus/jackson/map/type/MapLikeType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    .line 18
    return-void
.end method

.method public static a(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/map/type/MapType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/codehaus/jackson/type/JavaType;",
            "Lorg/codehaus/jackson/type/JavaType;",
            ")",
            "Lorg/codehaus/jackson/map/type/MapType;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lorg/codehaus/jackson/map/type/MapType;

    invoke-direct {v0, p0, p1, p2}, Lorg/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapLikeType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/MapType;->f(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
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
    .line 27
    new-instance v0, Lorg/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, p1, v1, v2}, Lorg/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapLikeType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/MapType;->g(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

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
    .line 34
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/MapType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
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
    .line 53
    iget-object v0, p0, Lorg/codehaus/jackson/map/type/MapType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lorg/codehaus/jackson/type/JavaType;->h()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    move-object v0, p0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v2

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/map/type/MapType;->b(Lorg/codehaus/jackson/type/JavaType;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/MapType;->g(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/map/type/MapType;->f(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapType;
    .locals 4

    .prologue
    .line 76
    new-instance v0, Lorg/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    .line 77
    iput-object p1, v0, Lorg/codehaus/jackson/map/type/MapType;->f:Ljava/lang/Object;

    .line 78
    return-object v0
.end method

.method public g(Ljava/lang/Object;)Lorg/codehaus/jackson/map/type/MapType;
    .locals 4

    .prologue
    .line 85
    new-instance v0, Lorg/codehaus/jackson/map/type/MapType;

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->c:Ljava/lang/Class;

    iget-object v2, p0, Lorg/codehaus/jackson/map/type/MapType;->a:Lorg/codehaus/jackson/type/JavaType;

    iget-object v3, p0, Lorg/codehaus/jackson/map/type/MapType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/type/JavaType;->d(Ljava/lang/Object;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/codehaus/jackson/map/type/MapType;-><init>(Ljava/lang/Class;Lorg/codehaus/jackson/type/JavaType;Lorg/codehaus/jackson/type/JavaType;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->a:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/type/MapType;->b:Lorg/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
