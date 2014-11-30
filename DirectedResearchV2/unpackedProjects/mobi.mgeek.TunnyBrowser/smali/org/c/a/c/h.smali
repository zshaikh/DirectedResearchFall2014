.class public Lorg/c/a/c/h;
.super Ljava/lang/Object;
.source "BufferCache.java"


# instance fields
.field private final a:Ljava/util/HashMap;

.field private final b:Lorg/c/a/d/l;

.field private final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/h;->a:Ljava/util/HashMap;

    .line 36
    new-instance v0, Lorg/c/a/d/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/c/a/d/l;-><init>(Z)V

    iput-object v0, p0, Lorg/c/a/c/h;->b:Lorg/c/a/d/l;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/c/a/c/h;->c:Ljava/util/ArrayList;

    .line 127
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/c/a/c/i;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/c/a/c/h;->b:Lorg/c/a/d/l;

    invoke-virtual {v0, p1}, Lorg/c/a/d/l;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/i;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Lorg/c/a/c/i;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lorg/c/a/c/i;

    invoke-direct {v0, p1, p2}, Lorg/c/a/c/i;-><init>(Ljava/lang/String;I)V

    .line 46
    iget-object v1, p0, Lorg/c/a/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lorg/c/a/c/h;->b:Lorg/c/a/d/l;

    invoke-virtual {v1, p1, v0}, Lorg/c/a/d/l;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_0
    iget-object v1, p0, Lorg/c/a/c/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p2, v1

    if-ltz v1, :cond_0

    .line 49
    iget-object v1, p0, Lorg/c/a/c/h;->c:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lorg/c/a/c/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    iget-object v1, p0, Lorg/c/a/c/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 52
    :cond_1
    return-object v0
.end method

.method public a(Lorg/c/a/c/f;)Lorg/c/a/c/i;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/c/a/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/i;

    return-object v0
.end method

.method public a([BII)Lorg/c/a/c/i;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/c/a/c/h;->b:Lorg/c/a/d/l;

    invoke-virtual {v0, p1, p2, p3}, Lorg/c/a/d/l;->a([BII)Ljava/util/Map$Entry;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/i;

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lorg/c/a/c/f;
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/c/a/c/h;->a(Ljava/lang/String;)Lorg/c/a/c/i;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lorg/c/a/c/i;

    const/4 v1, -0x1

    invoke-direct {v0, p1, v1}, Lorg/c/a/c/i;-><init>(Ljava/lang/String;I)V

    .line 103
    :cond_0
    return-object v0
.end method

.method public b(Lorg/c/a/c/f;)Lorg/c/a/c/f;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    instance-of v0, p1, Lorg/c/a/c/i;

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object p1

    .line 77
    :cond_1
    invoke-virtual {p0, p1}, Lorg/c/a/c/h;->a(Lorg/c/a/c/f;)Lorg/c/a/c/i;

    move-result-object v0

    .line 78
    if-nez v0, :cond_2

    .line 80
    instance-of v0, p1, Lorg/c/a/c/g;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/c/a/c/p;

    invoke-interface {p1}, Lorg/c/a/c/f;->a()[B

    move-result-object v1

    invoke-interface {p1}, Lorg/c/a/c/f;->m()I

    move-result v2

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/c/a/c/p;-><init>([BIII)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 85
    goto :goto_0
.end method

.method public c(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/c/a/c/h;->b:Lorg/c/a/d/l;

    invoke-virtual {v0, p1}, Lorg/c/a/d/l;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/c/i;

    .line 114
    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lorg/c/a/c/i;->w()I

    move-result v0

    goto :goto_0
.end method

.method public c(Lorg/c/a/c/f;)I
    .locals 2

    .prologue
    .line 119
    instance-of v0, p1, Lorg/c/a/c/i;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lorg/c/a/c/i;

    invoke-virtual {p1}, Lorg/c/a/c/i;->w()I

    move-result v0

    .line 124
    :goto_0
    return v0

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lorg/c/a/c/h;->b(Lorg/c/a/c/f;)Lorg/c/a/c/f;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/c/a/c/i;

    if-eqz v1, :cond_1

    .line 123
    check-cast v0, Lorg/c/a/c/i;

    invoke-virtual {v0}, Lorg/c/a/c/i;->w()I

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CACHE[bufferMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/c/h;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stringMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/c/h;->b:Lorg/c/a/d/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/c/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
