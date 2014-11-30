.class public abstract Lq;
.super Lf;


# instance fields
.field private a:Z

.field protected final b:Ld;

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:I

.field protected g:I

.field protected h:J

.field protected i:I

.field protected j:I

.field protected k:Lai;

.field protected l:Lorg/codehaus/jackson/JsonToken;

.field protected final m:Lorg/codehaus/jackson/util/c;

.field protected n:Z

.field protected o:[B

.field private r:[C

.field private s:Lorg/codehaus/jackson/util/a;


# direct methods
.method protected constructor <init>(Ld;I)V
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lf;-><init>()V

    iput v3, p0, Lq;->c:I

    iput v3, p0, Lq;->d:I

    iput-wide v1, p0, Lq;->e:J

    iput v0, p0, Lq;->f:I

    iput v3, p0, Lq;->g:I

    iput-wide v1, p0, Lq;->h:J

    iput v0, p0, Lq;->i:I

    iput v3, p0, Lq;->j:I

    iput-object v4, p0, Lq;->r:[C

    iput-boolean v3, p0, Lq;->n:Z

    iput-object v4, p0, Lq;->s:Lorg/codehaus/jackson/util/a;

    iput p2, p0, Lq;->p:I

    iput-object p1, p0, Lq;->b:Ld;

    invoke-virtual {p1}, Ld;->d()Lorg/codehaus/jackson/util/c;

    move-result-object v0

    iput-object v0, p0, Lq;->m:Lorg/codehaus/jackson/util/c;

    iget v0, p0, Lq;->i:I

    iget v1, p0, Lq;->j:I

    new-instance v2, Lai;

    invoke-direct {v2, v4, v3, v0, v1}, Lai;-><init>(Lai;III)V

    iput-object v2, p0, Lq;->k:Lai;

    return-void
.end method


# virtual methods
.method protected final a(IC)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq;->k:Lai;

    iget-object v2, p0, Lq;->b:Ld;

    invoke-virtual {v2}, Ld;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lai;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lq;->k:Lai;

    invoke-virtual {v2}, Lai;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lq;->m:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->a()V

    iget-object v0, p0, Lq;->r:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lq;->r:[C

    iget-object v1, p0, Lq;->b:Ld;

    invoke-virtual {v1, v0}, Ld;->c([C)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lq;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lq;->a:Z

    :try_start_0
    invoke-virtual {p0}, Lq;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lq;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lq;->c()V

    throw v0
.end method

.method protected final i()V
    .locals 3

    iget-object v0, p0, Lq;->k:Lai;

    invoke-virtual {v0}, Lai;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq;->k:Lai;

    invoke-virtual {v1}, Lai;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq;->k:Lai;

    iget-object v2, p0, Lq;->b:Ld;

    invoke-virtual {v2}, Ld;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lai;->a(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lq;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->a:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lq;->q:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lq;->k:Lai;

    invoke-virtual {v0}, Lai;->g()Lai;

    move-result-object v0

    invoke-virtual {v0}, Lai;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lq;->k:Lai;

    invoke-virtual {v0}, Lai;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Lorg/codehaus/jackson/JsonLocation;
    .locals 8

    iget v0, p0, Lq;->c:I

    iget v1, p0, Lq;->g:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget-object v1, p0, Lq;->b:Ld;

    invoke-virtual {v1}, Ld;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lq;->e:J

    iget v4, p0, Lq;->c:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lq;->f:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final o()V
    .locals 1

    invoke-virtual {p0}, Lq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lq;->k()V

    :cond_0
    return-void
.end method
