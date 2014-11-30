.class public abstract Lorg/c/a/b/a;
.super Ljava/lang/Object;
.source "AbstractGenerator.java"


# static fields
.field public static final a:[B

.field private static final t:Lorg/c/a/d/c/d;


# instance fields
.field protected final b:Lorg/c/a/c/l;

.field protected final c:Lorg/c/a/c/s;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:Lorg/c/a/c/f;

.field protected h:Lorg/c/a/c/f;

.field protected i:Ljava/lang/String;

.field protected j:J

.field protected k:J

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Ljava/lang/Boolean;

.field protected p:Lorg/c/a/c/f;

.field protected q:Lorg/c/a/c/f;

.field protected r:Lorg/c/a/c/f;

.field protected s:Lorg/c/a/c/f;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/c/a/b/a;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/b/a;->t:Lorg/c/a/d/c/d;

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/c/a/b/a;->a:[B

    return-void
.end method

.method public constructor <init>(Lorg/c/a/c/l;Lorg/c/a/c/s;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lorg/c/a/b/a;->d:I

    .line 60
    iput v2, p0, Lorg/c/a/b/a;->e:I

    .line 61
    const/16 v0, 0xb

    iput v0, p0, Lorg/c/a/b/a;->f:I

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/c/a/b/a;->j:J

    .line 67
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/c/a/b/a;->k:J

    .line 68
    iput-boolean v2, p0, Lorg/c/a/b/a;->l:Z

    .line 69
    iput-boolean v2, p0, Lorg/c/a/b/a;->m:Z

    .line 70
    iput-boolean v2, p0, Lorg/c/a/b/a;->n:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/b/a;->o:Ljava/lang/Boolean;

    .line 91
    iput-object p1, p0, Lorg/c/a/b/a;->b:Lorg/c/a/c/l;

    .line 92
    iput-object p2, p0, Lorg/c/a/b/a;->c:Lorg/c/a/c/s;

    .line 93
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 312
    if-eqz p1, :cond_0

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    :cond_0
    sget-object v0, Lorg/c/a/b/p;->b:Lorg/c/a/c/f;

    iput-object v0, p0, Lorg/c/a/b/a;->h:Lorg/c/a/c/f;

    .line 316
    :goto_0
    iput-object p2, p0, Lorg/c/a/b/a;->i:Ljava/lang/String;

    .line 317
    iget v0, p0, Lorg/c/a/b/a;->f:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/b/a;->n:Z

    .line 319
    :cond_1
    return-void

    .line 315
    :cond_2
    sget-object v0, Lorg/c/a/b/p;->a:Lorg/c/a/c/h;

    invoke-virtual {v0, p1}, Lorg/c/a/c/h;->b(Ljava/lang/String;)Lorg/c/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/a;->h:Lorg/c/a/c/f;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 275
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/a;->o:Ljava/lang/Boolean;

    .line 276
    return-void
.end method

.method public abstract a()Z
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/c/a/b/a;->d:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    iput v1, p0, Lorg/c/a/b/a;->d:I

    .line 111
    iput v1, p0, Lorg/c/a/b/a;->e:I

    .line 112
    const/16 v0, 0xb

    iput v0, p0, Lorg/c/a/b/a;->f:I

    .line 113
    iput-object v2, p0, Lorg/c/a/b/a;->g:Lorg/c/a/c/f;

    .line 114
    iput-boolean v1, p0, Lorg/c/a/b/a;->l:Z

    .line 115
    iput-boolean v1, p0, Lorg/c/a/b/a;->m:Z

    .line 116
    iput-boolean v1, p0, Lorg/c/a/b/a;->n:Z

    .line 117
    iput-object v2, p0, Lorg/c/a/b/a;->o:Ljava/lang/Boolean;

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/c/a/b/a;->j:J

    .line 119
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/c/a/b/a;->k:J

    .line 120
    iput-object v2, p0, Lorg/c/a/b/a;->s:Lorg/c/a/c/f;

    .line 122
    iput-object v2, p0, Lorg/c/a/b/a;->r:Lorg/c/a/c/f;

    .line 123
    iput-object v2, p0, Lorg/c/a/b/a;->h:Lorg/c/a/c/f;

    .line 124
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 285
    iget v0, p0, Lorg/c/a/b/a;->d:I

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATE!=START "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/c/a/b/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    iput p1, p0, Lorg/c/a/b/a;->f:I

    .line 288
    iget v0, p0, Lorg/c/a/b/a;->f:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/c/a/b/a;->h:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/b/a;->n:Z

    .line 290
    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lorg/c/a/b/a;->q:Lorg/c/a/c/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/b/a;->q:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/c/a/b/a;->b:Lorg/c/a/c/l;

    iget-object v1, p0, Lorg/c/a/b/a;->q:Lorg/c/a/c/f;

    invoke-interface {v0, v1}, Lorg/c/a/c/l;->c(Lorg/c/a/c/f;)V

    .line 132
    iput-object v2, p0, Lorg/c/a/b/a;->q:Lorg/c/a/c/f;

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/c/a/b/a;->p:Lorg/c/a/c/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/b/a;->p:Lorg/c/a/c/f;

    invoke-interface {v0}, Lorg/c/a/c/f;->m()I

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lorg/c/a/b/a;->b:Lorg/c/a/c/l;

    iget-object v1, p0, Lorg/c/a/b/a;->p:Lorg/c/a/c/f;

    invoke-interface {v0, v1}, Lorg/c/a/c/l;->c(Lorg/c/a/c/f;)V

    .line 138
    iput-object v2, p0, Lorg/c/a/b/a;->p:Lorg/c/a/c/f;

    .line 140
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lorg/c/a/b/a;->u:Z

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lorg/c/a/b/a;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/c/a/b/a;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/c/a/b/a;->h:Lorg/c/a/c/f;

    if-nez v0, :cond_0

    iget v0, p0, Lorg/c/a/b/a;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/c/a/b/a;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 267
    iget-object v1, p0, Lorg/c/a/b/a;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/c/a/b/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/c/a/b/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/c/a/b/a;->f:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 416
    iget v0, p0, Lorg/c/a/b/a;->d:I

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State==HEADER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    iget-wide v0, p0, Lorg/c/a/b/a;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lorg/c/a/b/a;->k:J

    iget-wide v2, p0, Lorg/c/a/b/a;->j:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/c/a/b/a;->m:Z

    if-nez v0, :cond_2

    .line 423
    sget-object v0, Lorg/c/a/b/a;->t:Lorg/c/a/d/c/d;

    invoke-interface {v0}, Lorg/c/a/d/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    sget-object v0, Lorg/c/a/b/a;->t:Lorg/c/a/d/c/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentLength written=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/c/a/b/a;->j:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != contentLength=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/c/a/b/a;->k:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/c/a/b/a;->o:Ljava/lang/Boolean;

    .line 427
    :cond_2
    return-void
.end method
