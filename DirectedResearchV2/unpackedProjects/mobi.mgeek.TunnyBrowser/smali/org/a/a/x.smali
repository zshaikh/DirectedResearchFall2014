.class public abstract Lorg/a/a/x;
.super Lorg/a/a/l;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lorg/a/a/y;


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Lorg/a/a/ar;


# direct methods
.method public constructor <init>(ILorg/a/a/ar;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/x;->b:Z

    .line 16
    iput-boolean v1, p0, Lorg/a/a/x;->c:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    .line 52
    iput-boolean v1, p0, Lorg/a/a/x;->c:Z

    .line 53
    iput p1, p0, Lorg/a/a/x;->a:I

    .line 54
    iput-object p2, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    .line 55
    return-void
.end method

.method public constructor <init>(ZILorg/a/a/ar;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Lorg/a/a/l;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/x;->b:Z

    .line 16
    iput-boolean v1, p0, Lorg/a/a/x;->c:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    .line 72
    instance-of v0, p3, Lorg/a/a/c;

    if-eqz v0, :cond_0

    .line 74
    iput-boolean v1, p0, Lorg/a/a/x;->c:Z

    .line 81
    :goto_0
    iput p2, p0, Lorg/a/a/x;->a:I

    .line 82
    iput-object p3, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    .line 83
    return-void

    .line 78
    :cond_0
    iput-boolean p1, p0, Lorg/a/a/x;->c:Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Lorg/a/a/x;
    .locals 3

    .prologue
    .line 34
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/a/a/x;

    if-eqz v0, :cond_1

    .line 36
    :cond_0
    check-cast p0, Lorg/a/a/x;

    return-object p0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/a/a/x;Z)Lorg/a/a/x;
    .locals 2

    .prologue
    .line 23
    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lorg/a/a/x;->h()Lorg/a/a/bd;

    move-result-object v0

    check-cast v0, Lorg/a/a/x;

    return-object v0

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "implicitly tagged tagged object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract a(Lorg/a/a/bh;)V
.end method

.method a(Lorg/a/a/bd;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Lorg/a/a/x;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    check-cast p1, Lorg/a/a/x;

    .line 95
    iget v1, p0, Lorg/a/a/x;->a:I

    iget v2, p1, Lorg/a/a/x;->a:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/a/a/x;->b:Z

    iget-boolean v2, p1, Lorg/a/a/x;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lorg/a/a/x;->c:Z

    iget-boolean v2, p1, Lorg/a/a/x;->c:Z

    if-ne v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    if-nez v1, :cond_3

    .line 102
    iget-object v1, p1, Lorg/a/a/x;->d:Lorg/a/a/ar;

    if-nez v1, :cond_0

    .line 115
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    invoke-interface {v1}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v1

    iget-object v2, p1, Lorg/a/a/x;->d:Lorg/a/a/ar;

    invoke-interface {v2}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/a/a/bd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/a/a/x;->a:I

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lorg/a/a/x;->c:Z

    return v0
.end method

.method public g()Lorg/a/a/bd;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/a/a/x;->c()Lorg/a/a/bd;

    move-result-object v0

    return-object v0
.end method

.method public h()Lorg/a/a/bd;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    invoke-interface {v0}, Lorg/a/a/ar;->c()Lorg/a/a/bd;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Lorg/a/a/x;->a:I

    .line 127
    iget-object v1, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 132
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/a/a/x;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/x;->d:Lorg/a/a/ar;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
