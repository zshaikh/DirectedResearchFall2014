.class public abstract Lae;
.super Lorg/codehaus/jackson/JsonGenerator;


# instance fields
.field protected b:Z

.field protected c:Laa;

.field private d:Lorg/codehaus/jackson/a;

.field private e:I

.field private f:Z


# direct methods
.method protected constructor <init>(ILorg/codehaus/jackson/a;)V
    .locals 1

    invoke-direct {p0}, Lorg/codehaus/jackson/JsonGenerator;-><init>()V

    iput p1, p0, Lae;->e:I

    invoke-static {}, Laa;->f()Laa;

    move-result-object v0

    iput-object v0, p0, Lae;->c:Laa;

    iput-object p2, p0, Lae;->d:Lorg/codehaus/jackson/a;

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->d:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lae;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lae;->b:Z

    return-void
.end method

.method protected static d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lae;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lae;->c:Laa;

    invoke-virtual {v0}, Laa;->g()Laa;

    move-result-object v0

    iput-object v0, p0, Lae;->c:Laa;

    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z
    .locals 2

    iget v0, p0, Lae;->e:I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator$Feature;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lae;->c:Laa;

    invoke-virtual {v0}, Laa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae;->c:Laa;

    invoke-virtual {v1}, Laa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lae;->c:Laa;

    invoke-virtual {v0}, Laa;->i()Laa;

    move-result-object v0

    iput-object v0, p0, Lae;->c:Laa;

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lae;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lae;->c:Laa;

    invoke-virtual {v0}, Laa;->h()Laa;

    move-result-object v0

    iput-object v0, p0, Lae;->c:Laa;

    return-void
.end method

.method protected abstract c(Ljava/lang/String;)V
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lae;->f:Z

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lae;->c:Laa;

    invoke-virtual {v0}, Laa;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lae;->c:Laa;

    invoke-virtual {v1}, Laa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lae;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lae;->c:Laa;

    invoke-virtual {v0}, Laa;->i()Laa;

    move-result-object v0

    iput-object v0, p0, Lae;->c:Laa;

    return-void
.end method

.method public final f()Laa;
    .locals 1

    iget-object v0, p0, Lae;->c:Laa;

    return-object v0
.end method
