.class final Lc/m/x/a/gv/ar;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Lc/m/x/a/gv/an;


# direct methods
.method constructor <init>(Lc/m/x/a/gv/an;)V
    .locals 2

    iput-object p1, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    invoke-virtual {p1}, Lc/m/x/a/gv/an;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lc/m/x/a/gv/ar;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lc/m/x/a/gv/ar;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v2, p0, Lc/m/x/a/gv/ar;->b:I

    invoke-virtual {v1, v2, v3}, Lc/m/x/a/gv/an;->a(II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lc/m/x/a/gv/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v2, p0, Lc/m/x/a/gv/ar;->b:I

    invoke-virtual {v1, v2, v4}, Lc/m/x/a/gv/an;->a(II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lc/m/x/a/gv/ak;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v1, p0, Lc/m/x/a/gv/ar;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc/m/x/a/gv/an;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v1, p0, Lc/m/x/a/gv/ar;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc/m/x/a/gv/an;->a(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lc/m/x/a/gv/ar;->b:I

    iget v1, p0, Lc/m/x/a/gv/ar;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v1, p0, Lc/m/x/a/gv/ar;->b:I

    invoke-virtual {v0, v1, v4}, Lc/m/x/a/gv/an;->a(II)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v2, p0, Lc/m/x/a/gv/ar;->b:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lc/m/x/a/gv/an;->a(II)Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    move v0, v4

    :goto_0
    if-nez v1, :cond_2

    move v1, v4

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc/m/x/a/gv/ar;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/m/x/a/gv/ar;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    return-object p0
.end method

.method public final remove()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lc/m/x/a/gv/ar;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc/m/x/a/gv/ar;->b:I

    iget v0, p0, Lc/m/x/a/gv/ar;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lc/m/x/a/gv/ar;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    iget-object v0, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v1, p0, Lc/m/x/a/gv/ar;->b:I

    invoke-virtual {v0, v1}, Lc/m/x/a/gv/an;->a(I)V

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/m/x/a/gv/ar;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This container does not support retaining Map.Entry objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lc/m/x/a/gv/ar;->d:Lc/m/x/a/gv/an;

    iget v1, p0, Lc/m/x/a/gv/ar;->b:I

    invoke-virtual {v0, v1, p1}, Lc/m/x/a/gv/an;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc/m/x/a/gv/ar;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc/m/x/a/gv/ar;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
