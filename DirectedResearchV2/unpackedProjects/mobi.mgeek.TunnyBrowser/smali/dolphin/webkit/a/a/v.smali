.class public abstract Ldolphin/webkit/a/a/v;
.super Ldolphin/webkit/a/a/k;
.source "ASN1TaggedObject.java"

# interfaces
.implements Ldolphin/webkit/a/a/w;


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Ldolphin/webkit/a/a/ap;


# direct methods
.method public constructor <init>(ILdolphin/webkit/a/a/ap;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/a/a/v;->b:Z

    .line 16
    iput-boolean v1, p0, Ldolphin/webkit/a/a/v;->c:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    .line 52
    iput-boolean v1, p0, Ldolphin/webkit/a/a/v;->c:Z

    .line 53
    iput p1, p0, Ldolphin/webkit/a/a/v;->a:I

    .line 54
    iput-object p2, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    .line 55
    return-void
.end method

.method public constructor <init>(ZILdolphin/webkit/a/a/ap;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Ldolphin/webkit/a/a/k;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldolphin/webkit/a/a/v;->b:Z

    .line 16
    iput-boolean v1, p0, Ldolphin/webkit/a/a/v;->c:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    .line 72
    instance-of v0, p3, Ldolphin/webkit/a/a/b;

    if-eqz v0, :cond_0

    .line 74
    iput-boolean v1, p0, Ldolphin/webkit/a/a/v;->c:Z

    .line 81
    :goto_0
    iput p2, p0, Ldolphin/webkit/a/a/v;->a:I

    .line 82
    iput-object p3, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    .line 83
    return-void

    .line 78
    :cond_0
    iput-boolean p1, p0, Ldolphin/webkit/a/a/v;->c:Z

    goto :goto_0
.end method


# virtual methods
.method abstract a(Ldolphin/webkit/a/a/bf;)V
.end method

.method a(Ldolphin/webkit/a/a/bb;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Ldolphin/webkit/a/a/v;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    check-cast p1, Ldolphin/webkit/a/a/v;

    .line 95
    iget v1, p0, Ldolphin/webkit/a/a/v;->a:I

    iget v2, p1, Ldolphin/webkit/a/a/v;->a:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Ldolphin/webkit/a/a/v;->b:Z

    iget-boolean v2, p1, Ldolphin/webkit/a/a/v;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Ldolphin/webkit/a/a/v;->c:Z

    iget-boolean v2, p1, Ldolphin/webkit/a/a/v;->c:Z

    if-ne v1, v2, :cond_0

    .line 100
    iget-object v1, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    if-nez v1, :cond_3

    .line 102
    iget-object v1, p1, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    if-nez v1, :cond_0

    .line 115
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    invoke-interface {v1}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v1

    iget-object v2, p1, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    invoke-interface {v2}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldolphin/webkit/a/a/bb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ldolphin/webkit/a/a/v;->a:I

    return v0
.end method

.method public f()Ldolphin/webkit/a/a/bb;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    invoke-interface {v0}, Ldolphin/webkit/a/a/ap;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ldolphin/webkit/a/a/bb;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Ldolphin/webkit/a/a/v;->c()Ldolphin/webkit/a/a/bb;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 120
    iget v0, p0, Ldolphin/webkit/a/a/v;->a:I

    .line 127
    iget-object v1, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

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

    iget v1, p0, Ldolphin/webkit/a/a/v;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldolphin/webkit/a/a/v;->d:Ldolphin/webkit/a/a/ap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
