.class public Lorg/c/a/a/k;
.super Lorg/c/a/d/b/b;
.source "HttpClient.java"


# instance fields
.field a:Lorg/c/a/d/g/c;

.field b:Lorg/c/a/a/m;

.field private c:I

.field private d:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/c/a/a/f;",
            "Lorg/c/a/a/o;",
            ">;"
        }
    .end annotation
.end field

.field private j:J

.field private k:J

.field private l:I

.field private m:Lorg/c/a/d/g/e;

.field private n:Lorg/c/a/d/g/e;

.field private o:Lorg/c/a/a/f;

.field private p:Lorg/c/a/a/a/a;

.field private q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:I

.field private t:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lorg/c/a/d/f/b;

.field private v:Lorg/c/a/a/a/e;

.field private w:Lorg/c/a/d/a;

.field private final x:Lorg/c/a/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lorg/c/a/d/f/b;

    invoke-direct {v0}, Lorg/c/a/d/f/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/c/a/a/k;-><init>(Lorg/c/a/d/f/b;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/c/a/d/f/b;)V
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, 0x1

    .line 135
    invoke-direct {p0}, Lorg/c/a/d/b/b;-><init>()V

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lorg/c/a/a/k;->c:I

    .line 80
    iput-boolean v1, p0, Lorg/c/a/a/k;->d:Z

    .line 81
    iput-boolean v1, p0, Lorg/c/a/a/k;->f:Z

    .line 82
    iput v2, p0, Lorg/c/a/a/k;->g:I

    .line 83
    iput v2, p0, Lorg/c/a/a/k;->h:I

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/k;->i:Ljava/util/concurrent/ConcurrentMap;

    .line 87
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lorg/c/a/a/k;->j:J

    .line 88
    const-wide/32 v0, 0x4e200

    iput-wide v0, p0, Lorg/c/a/a/k;->k:J

    .line 89
    const v0, 0x124f8

    iput v0, p0, Lorg/c/a/a/k;->l:I

    .line 90
    new-instance v0, Lorg/c/a/d/g/e;

    invoke-direct {v0}, Lorg/c/a/d/g/e;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/k;->m:Lorg/c/a/d/g/e;

    .line 91
    new-instance v0, Lorg/c/a/d/g/e;

    invoke-direct {v0}, Lorg/c/a/d/g/e;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/k;->n:Lorg/c/a/d/g/e;

    .line 95
    const/4 v0, 0x3

    iput v0, p0, Lorg/c/a/a/k;->r:I

    .line 96
    const/16 v0, 0x14

    iput v0, p0, Lorg/c/a/a/k;->s:I

    .line 103
    new-instance v0, Lorg/c/a/d/a;

    invoke-direct {v0}, Lorg/c/a/d/a;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/k;->w:Lorg/c/a/d/a;

    .line 105
    new-instance v0, Lorg/c/a/b/b;

    invoke-direct {v0}, Lorg/c/a/b/b;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    .line 136
    iput-object p1, p0, Lorg/c/a/a/k;->u:Lorg/c/a/d/f/b;

    .line 137
    iget-object v0, p0, Lorg/c/a/a/k;->u:Lorg/c/a/d/f/b;

    invoke-virtual {p0, v0}, Lorg/c/a/a/k;->b(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    invoke-virtual {p0, v0}, Lorg/c/a/a/k;->b(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method static synthetic a(Lorg/c/a/a/k;)Lorg/c/a/d/g/e;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/c/a/a/k;->m:Lorg/c/a/d/g/e;

    return-object v0
.end method

.method static synthetic b(Lorg/c/a/a/k;)Lorg/c/a/d/g/e;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/c/a/a/k;->n:Lorg/c/a/d/g/e;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/c/a/a/k;->c:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    sget-object v1, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    invoke-virtual {v0, v1}, Lorg/c/a/b/b;->a(Lorg/c/a/c/m;)V

    .line 113
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    sget-object v1, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    invoke-virtual {v0, v1}, Lorg/c/a/b/b;->b(Lorg/c/a/c/m;)V

    .line 114
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    sget-object v1, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    invoke-virtual {v0, v1}, Lorg/c/a/b/b;->c(Lorg/c/a/c/m;)V

    .line 115
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    sget-object v1, Lorg/c/a/c/m;->a:Lorg/c/a/c/m;

    invoke-virtual {v0, v1}, Lorg/c/a/b/b;->d(Lorg/c/a/c/m;)V

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    sget-object v1, Lorg/c/a/c/m;->b:Lorg/c/a/c/m;

    invoke-virtual {v0, v1}, Lorg/c/a/b/b;->a(Lorg/c/a/c/m;)V

    .line 120
    iget-object v1, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    iget-boolean v0, p0, Lorg/c/a/a/k;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/c/a/c/m;->b:Lorg/c/a/c/m;

    :goto_1
    invoke-virtual {v1, v0}, Lorg/c/a/b/b;->b(Lorg/c/a/c/m;)V

    .line 121
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    sget-object v1, Lorg/c/a/c/m;->b:Lorg/c/a/c/m;

    invoke-virtual {v0, v1}, Lorg/c/a/b/b;->c(Lorg/c/a/c/m;)V

    .line 122
    iget-object v1, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    iget-boolean v0, p0, Lorg/c/a/a/k;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lorg/c/a/c/m;->b:Lorg/c/a/c/m;

    :goto_2
    invoke-virtual {v1, v0}, Lorg/c/a/b/b;->d(Lorg/c/a/c/m;)V

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lorg/c/a/c/m;->c:Lorg/c/a/c/m;

    goto :goto_1

    .line 122
    :cond_2
    sget-object v0, Lorg/c/a/c/m;->c:Lorg/c/a/c/m;

    goto :goto_2
.end method


# virtual methods
.method public a(Lorg/c/a/a/f;Z)Lorg/c/a/a/o;
    .locals 3

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v0, Ljava/net/UnknownHostException;

    const-string v1, "Remote socket address cannot be null."

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/c/a/a/k;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/o;

    .line 245
    if-nez v0, :cond_3

    .line 247
    new-instance v1, Lorg/c/a/a/o;

    invoke-direct {v1, p0, p1, p2}, Lorg/c/a/a/o;-><init>(Lorg/c/a/a/k;Lorg/c/a/a/f;Z)V

    .line 248
    iget-object v0, p0, Lorg/c/a/a/k;->o:Lorg/c/a/a/f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/c/a/a/k;->q:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/c/a/a/k;->q:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/c/a/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_1
    iget-object v0, p0, Lorg/c/a/a/k;->o:Lorg/c/a/a/f;

    invoke-virtual {v1, v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/f;)V

    .line 251
    iget-object v0, p0, Lorg/c/a/a/k;->p:Lorg/c/a/a/a/a;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lorg/c/a/a/k;->p:Lorg/c/a/a/a/a;

    invoke-virtual {v1, v0}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a/a;)V

    .line 254
    :cond_2
    iget-object v0, p0, Lorg/c/a/a/k;->i:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/c/a/a/o;

    .line 255
    if-eqz v0, :cond_4

    .line 258
    :cond_3
    :goto_0
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 378
    iput p1, p0, Lorg/c/a/a/k;->c:I

    .line 379
    invoke-direct {p0}, Lorg/c/a/a/k;->s()V

    .line 380
    return-void
.end method

.method public a(J)V
    .locals 0

    .prologue
    .line 513
    iput-wide p1, p0, Lorg/c/a/a/k;->j:J

    .line 514
    return-void
.end method

.method public a(Lorg/c/a/a/t;)V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lorg/c/a/b/s;->b:Lorg/c/a/c/f;

    invoke-virtual {p1}, Lorg/c/a/a/t;->m()Lorg/c/a/c/f;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/c/a/c/f;->a(Lorg/c/a/c/f;)Z

    move-result v0

    .line 163
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/c/a/a/t;->a(I)Z

    .line 164
    invoke-virtual {p1}, Lorg/c/a/a/t;->l()Lorg/c/a/a/f;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/c/a/a/k;->a(Lorg/c/a/a/f;Z)Lorg/c/a/a/o;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lorg/c/a/a/o;->a(Lorg/c/a/a/t;)V

    .line 166
    return-void
.end method

.method public a(Lorg/c/a/d/g/f;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/c/a/a/k;->m:Lorg/c/a/d/g/e;

    invoke-virtual {v0, p1}, Lorg/c/a/d/g/e;->a(Lorg/c/a/d/g/f;)V

    .line 265
    return-void
.end method

.method public a(Lorg/c/a/d/g/f;J)V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lorg/c/a/a/k;->m:Lorg/c/a/d/g/e;

    iget-object v1, p0, Lorg/c/a/a/k;->m:Lorg/c/a/d/g/e;

    invoke-virtual {v1}, Lorg/c/a/d/g/e;->a()J

    move-result-wide v1

    sub-long v1, p2, v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/c/a/d/g/e;->a(Lorg/c/a/d/g/f;J)V

    .line 271
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lorg/c/a/a/k;->f:Z

    return v0
.end method

.method public b()Lorg/c/a/d/g/c;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/c/a/a/k;->a:Lorg/c/a/d/g/c;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 391
    iput p1, p0, Lorg/c/a/a/k;->g:I

    .line 392
    return-void
.end method

.method public b(Lorg/c/a/d/g/f;)V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/c/a/a/k;->n:Lorg/c/a/d/g/e;

    invoke-virtual {v0, p1}, Lorg/c/a/d/g/e;->a(Lorg/c/a/d/g/f;)V

    .line 277
    return-void
.end method

.method public c()Lorg/c/a/a/a/e;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/c/a/a/k;->v:Lorg/c/a/a/a/e;

    return-object v0
.end method

.method public c(Lorg/c/a/d/g/f;)V
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p1}, Lorg/c/a/d/g/f;->b()V

    .line 283
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/c/a/a/k;->v:Lorg/c/a/a/a/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lorg/c/a/a/k;->t:Ljava/util/LinkedList;

    return-object v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lorg/c/a/a/k;->g:I

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lorg/c/a/a/k;->h:I

    return v0
.end method

.method protected h()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 408
    invoke-direct {p0}, Lorg/c/a/a/k;->s()V

    .line 410
    iget-object v0, p0, Lorg/c/a/a/k;->m:Lorg/c/a/d/g/e;

    iget-wide v1, p0, Lorg/c/a/a/k;->k:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/d/g/e;->a(J)V

    .line 411
    iget-object v0, p0, Lorg/c/a/a/k;->m:Lorg/c/a/d/g/e;

    invoke-virtual {v0}, Lorg/c/a/d/g/e;->b()J

    .line 412
    iget-object v0, p0, Lorg/c/a/a/k;->n:Lorg/c/a/d/g/e;

    iget-wide v1, p0, Lorg/c/a/a/k;->j:J

    invoke-virtual {v0, v1, v2}, Lorg/c/a/d/g/e;->a(J)V

    .line 413
    iget-object v0, p0, Lorg/c/a/a/k;->n:Lorg/c/a/d/g/e;

    invoke-virtual {v0}, Lorg/c/a/d/g/e;->b()J

    .line 415
    iget-object v0, p0, Lorg/c/a/a/k;->a:Lorg/c/a/d/g/c;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lorg/c/a/a/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/c/a/a/n;-><init>(Lorg/c/a/a/l;)V

    .line 418
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/c/a/d/g/a;->a(I)V

    .line 419
    invoke-virtual {v0, v3}, Lorg/c/a/d/g/a;->a(Z)V

    .line 420
    const-string v1, "HttpClient"

    invoke-virtual {v0, v1}, Lorg/c/a/d/g/a;->a(Ljava/lang/String;)V

    .line 421
    iput-object v0, p0, Lorg/c/a/a/k;->a:Lorg/c/a/d/g/c;

    .line 422
    iget-object v0, p0, Lorg/c/a/a/k;->a:Lorg/c/a/d/g/c;

    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/k;->a(Ljava/lang/Object;Z)Z

    .line 425
    :cond_0
    iget v0, p0, Lorg/c/a/a/k;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/c/a/a/w;

    invoke-direct {v0, p0}, Lorg/c/a/a/w;-><init>(Lorg/c/a/a/k;)V

    :goto_0
    check-cast v0, Lorg/c/a/a/m;

    iput-object v0, p0, Lorg/c/a/a/k;->b:Lorg/c/a/a/m;

    .line 426
    iget-object v0, p0, Lorg/c/a/a/k;->b:Lorg/c/a/a/m;

    invoke-virtual {p0, v0, v3}, Lorg/c/a/a/k;->a(Ljava/lang/Object;Z)Z

    .line 428
    invoke-super {p0}, Lorg/c/a/d/b/b;->h()V

    .line 430
    iget-object v0, p0, Lorg/c/a/a/k;->a:Lorg/c/a/d/g/c;

    new-instance v1, Lorg/c/a/a/l;

    invoke-direct {v1, p0}, Lorg/c/a/a/l;-><init>(Lorg/c/a/a/k;)V

    invoke-interface {v0, v1}, Lorg/c/a/d/g/c;->a(Ljava/lang/Runnable;)Z

    .line 448
    return-void

    .line 425
    :cond_1
    new-instance v0, Lorg/c/a/a/aa;

    invoke-direct {v0, p0}, Lorg/c/a/a/aa;-><init>(Lorg/c/a/a/k;)V

    goto :goto_0
.end method

.method public i()Lorg/c/a/d/f/b;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/c/a/a/k;->u:Lorg/c/a/d/f/b;

    return-object v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 504
    iget-wide v0, p0, Lorg/c/a/a/k;->j:J

    return-wide v0
.end method

.method public k()J
    .locals 2

    .prologue
    .line 544
    iget-wide v0, p0, Lorg/c/a/a/k;->k:J

    return-wide v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lorg/c/a/a/k;->l:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 619
    iget v0, p0, Lorg/c/a/a/k;->r:I

    return v0
.end method

.method public n()Lorg/c/a/c/l;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    invoke-virtual {v0}, Lorg/c/a/b/b;->a()Lorg/c/a/c/l;

    move-result-object v0

    return-object v0
.end method

.method public o()Lorg/c/a/c/l;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lorg/c/a/a/k;->x:Lorg/c/a/b/b;

    invoke-virtual {v0}, Lorg/c/a/b/b;->b()Lorg/c/a/c/l;

    move-result-object v0

    return-object v0
.end method
