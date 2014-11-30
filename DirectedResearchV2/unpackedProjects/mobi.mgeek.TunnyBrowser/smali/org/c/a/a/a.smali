.class public abstract Lorg/c/a/a/a;
.super Lorg/c/a/c/d;
.source "AbstractHttpConnection.java"


# static fields
.field private static final k:Lorg/c/a/d/c/d;


# instance fields
.field protected a:Lorg/c/a/a/o;

.field protected b:Lorg/c/a/b/k;

.field protected c:Lorg/c/a/b/q;

.field protected d:Z

.field protected e:I

.field protected f:Lorg/c/a/c/f;

.field protected g:Z

.field protected volatile h:Lorg/c/a/a/t;

.field protected i:Lorg/c/a/a/t;

.field private final l:Lorg/c/a/d/g/f;

.field private m:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/c/a/a/a;

    invoke-static {v0}, Lorg/c/a/d/c/b;->a(Ljava/lang/Class;)Lorg/c/a/d/c/d;

    move-result-object v0

    sput-object v0, Lorg/c/a/a/a;->k:Lorg/c/a/d/c/d;

    return-void
.end method

.method constructor <init>(Lorg/c/a/c/l;Lorg/c/a/c/l;Lorg/c/a/c/s;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p3}, Lorg/c/a/c/d;-><init>(Lorg/c/a/c/s;)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/a;->d:Z

    .line 69
    new-instance v0, Lorg/c/a/a/c;

    invoke-direct {v0, p0, v2}, Lorg/c/a/a/c;-><init>(Lorg/c/a/a/a;Lorg/c/a/a/b;)V

    iput-object v0, p0, Lorg/c/a/a/a;->l:Lorg/c/a/d/g/f;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/c/a/a/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Lorg/c/a/b/k;

    invoke-direct {v0, p1, p3}, Lorg/c/a/b/k;-><init>(Lorg/c/a/c/l;Lorg/c/a/c/s;)V

    iput-object v0, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    .line 78
    new-instance v0, Lorg/c/a/b/q;

    new-instance v1, Lorg/c/a/a/d;

    invoke-direct {v1, p0, v2}, Lorg/c/a/a/d;-><init>(Lorg/c/a/a/a;Lorg/c/a/a/b;)V

    invoke-direct {v0, p2, p3, v1}, Lorg/c/a/b/q;-><init>(Lorg/c/a/c/l;Lorg/c/a/c/s;Lorg/c/a/b/r;)V

    iput-object v0, p0, Lorg/c/a/a/a;->c:Lorg/c/a/b/q;

    .line 79
    return-void
.end method

.method static synthetic a(Lorg/c/a/a/a;)Lorg/c/a/c/s;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    return-object v0
.end method

.method static synthetic b(Lorg/c/a/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/c/a/a/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic i()Lorg/c/a/d/c/d;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/c/a/a/a;->k:Lorg/c/a/d/c/d;

    return-object v0
.end method

.method private k()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 140
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->k()J

    move-result-wide v0

    .line 141
    cmp-long v2, v0, v4

    if-gtz v2, :cond_0

    .line 142
    iget-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v0}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lorg/c/a/a/k;->k()J

    move-result-wide v0

    .line 144
    :cond_0
    iget-object v2, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    invoke-interface {v2}, Lorg/c/a/c/s;->s()I

    move-result v2

    int-to-long v2, v2

    .line 146
    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 151
    iget-object v2, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-interface {v2, v0}, Lorg/c/a/c/s;->a(I)V

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/o;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    .line 99
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/c/a/a/a;->g:Z

    .line 84
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/c/a/a/a;->g:Z

    return v0
.end method

.method public a(Lorg/c/a/a/t;)Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 103
    sget-object v2, Lorg/c/a/a/a;->k:Lorg/c/a/d/c/d;

    const-string v3, "Send {} on {}"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p0, v4, v0

    invoke-interface {v2, v3, v4}, Lorg/c/a/d/c/d;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v2, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    if-eqz v2, :cond_1

    .line 108
    iget-object v1, p0, Lorg/c/a/a/a;->i:Lorg/c/a/a/t;

    if-eqz v1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PIPELINED!!!  _exchange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 110
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/c/a/a/a;->i:Lorg/c/a/a/t;

    .line 111
    monitor-exit p0

    .line 129
    :goto_0
    return v0

    .line 114
    :cond_1
    iput-object p1, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 115
    iget-object v2, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v2, p0}, Lorg/c/a/a/t;->a(Lorg/c/a/a/a;)V

    .line 118
    iget-object v2, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    invoke-interface {v2}, Lorg/c/a/c/s;->q()Z

    move-result v2

    if-nez v2, :cond_2

    .line 120
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->v()Lorg/c/a/a/a;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 122
    monitor-exit p0

    move v0, v1

    goto :goto_0

    .line 125
    :cond_2
    iget-object v1, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/c/a/a/t;->a(I)Z

    .line 127
    invoke-direct {p0}, Lorg/c/a/a/a;->k()V

    .line 129
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected b(Lorg/c/a/a/t;)V
    .locals 2

    .prologue
    .line 433
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 441
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 449
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 445
    sget-object v1, Lorg/c/a/a/a;->k:Lorg/c/a/d/c/d;

    invoke-interface {v1, v0}, Lorg/c/a/d/c/d;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method protected d()V
    .locals 7

    .prologue
    .line 180
    monitor-enter p0

    .line 182
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lorg/c/a/a/a;->e:I

    .line 183
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->g()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 186
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    .line 187
    iget-object v0, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    iget-object v1, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v1}, Lorg/c/a/a/t;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/c/a/b/k;->b(I)V

    .line 189
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->o()Ljava/lang/String;

    move-result-object v2

    .line 190
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->q()Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v1}, Lorg/c/a/a/o;->i()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 193
    const-string v1, "CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    iget-object v1, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v1}, Lorg/c/a/a/o;->c()Z

    move-result v3

    .line 196
    iget-object v1, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v1}, Lorg/c/a/a/o;->b()Lorg/c/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/f;->a()Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v1, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v1}, Lorg/c/a/a/o;->b()Lorg/c/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/c/a/a/f;->b()I

    move-result v5

    .line 198
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    if-eqz v3, :cond_7

    const-string v1, "https"

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, "://"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    if-eqz v3, :cond_1

    const/16 v1, 0x1bb

    if-eq v5, v1, :cond_3

    :cond_1
    if-nez v3, :cond_2

    const/16 v1, 0x50

    if-eq v5, v1, :cond_3

    .line 204
    :cond_2
    const-string v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_4
    iget-object v1, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v1}, Lorg/c/a/a/o;->h()Lorg/c/a/a/a/a;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_5

    .line 210
    iget-object v3, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-interface {v1, v3}, Lorg/c/a/a/a/a;->a(Lorg/c/a/a/t;)V

    .line 213
    :cond_5
    iget-object v1, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    invoke-virtual {v1, v2, v0}, Lorg/c/a/b/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/c/a/a/a;->c:Lorg/c/a/b/q;

    const-string v1, "HEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/c/a/b/q;->a(Z)V

    .line 216
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v0}, Lorg/c/a/a/t;->r()Lorg/c/a/b/e;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v1}, Lorg/c/a/a/t;->n()I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_6

    .line 219
    sget-object v1, Lorg/c/a/b/o;->b:Lorg/c/a/c/f;

    invoke-virtual {v0, v1}, Lorg/c/a/b/e;->a(Lorg/c/a/c/f;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 220
    sget-object v1, Lorg/c/a/b/o;->b:Lorg/c/a/c/f;

    iget-object v2, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v2}, Lorg/c/a/a/o;->d()Lorg/c/a/c/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/c/a/b/e;->b(Lorg/c/a/c/f;Lorg/c/a/c/f;)V

    .line 223
    :cond_6
    iget-object v1, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v1}, Lorg/c/a/a/t;->t()Lorg/c/a/c/f;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_8

    .line 226
    const-string v2, "Content-Length"

    invoke-interface {v1}, Lorg/c/a/c/f;->m()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/c/a/b/e;->a(Ljava/lang/String;J)V

    .line 227
    iget-object v2, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/c/a/b/k;->a(Lorg/c/a/b/e;Z)V

    .line 228
    iget-object v0, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    new-instance v2, Lorg/c/a/c/z;

    invoke-direct {v2, v1}, Lorg/c/a/c/z;-><init>(Lorg/c/a/c/f;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lorg/c/a/b/k;->a(Lorg/c/a/c/f;Z)V

    .line 229
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z

    .line 245
    :goto_1
    monitor-exit p0

    .line 246
    return-void

    .line 199
    :cond_7
    const-string v1, "http"

    goto/16 :goto_0

    .line 233
    :cond_8
    iget-object v1, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    invoke-virtual {v1}, Lorg/c/a/a/t;->s()Ljava/io/InputStream;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_9

    .line 236
    iget-object v1, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/c/a/b/k;->a(Lorg/c/a/b/e;Z)V

    goto :goto_1

    .line 240
    :cond_9
    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lorg/c/a/b/e;->a(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/c/a/b/k;->a(Lorg/c/a/b/e;Z)V

    .line 242
    iget-object v0, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/c/a/a/t;->a(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/c/a/a/a;->f:Lorg/c/a/c/f;

    .line 251
    iget-object v0, p0, Lorg/c/a/a/a;->c:Lorg/c/a/b/q;

    invoke-virtual {v0}, Lorg/c/a/b/q;->h()V

    .line 252
    iget-object v0, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    invoke-virtual {v0}, Lorg/c/a/b/k;->b()V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/c/a/a/a;->d:Z

    .line 254
    return-void
.end method

.method public f()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 377
    iget-object v1, p0, Lorg/c/a/a/a;->h:Lorg/c/a/a/t;

    .line 378
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/c/a/a/t;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {v1}, Lorg/c/a/a/t;->g()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_0
    invoke-virtual {v1}, Lorg/c/a/a/t;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    iget-object v0, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "half closed: "

    .line 394
    :goto_0
    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lorg/c/a/a/t;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    invoke-virtual {v1}, Lorg/c/a/a/t;->j()Lorg/c/a/a/r;

    move-result-object v1

    new-instance v3, Lorg/c/a/c/t;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/c/a/c/t;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/c/a/a/r;->b(Ljava/lang/Throwable;)V

    .line 399
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->j()V

    .line 402
    iget-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v0, p0, v5}, Lorg/c/a/a/o;->a(Lorg/c/a/a/a;Z)V

    .line 404
    :cond_2
    return-void

    .line 389
    :pswitch_1
    iget-object v0, p0, Lorg/c/a/a/a;->j:Lorg/c/a/c/s;

    invoke-interface {v0}, Lorg/c/a/c/s;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/c/a/a/a;->c:Lorg/c/a/b/q;

    invoke-virtual {v0, v5}, Lorg/c/a/b/q;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 393
    :cond_3
    const-string v0, "local close: "

    goto :goto_0

    :cond_4
    const-string v0, "closed: "

    goto :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public g()V
    .locals 3

    .prologue
    .line 408
    monitor-enter p0

    .line 410
    :try_start_0
    iget-object v0, p0, Lorg/c/a/a/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v0}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v0

    iget-object v1, p0, Lorg/c/a/a/a;->l:Lorg/c/a/d/g/f;

    invoke-virtual {v0, v1}, Lorg/c/a/a/k;->b(Lorg/c/a/d/g/f;)V

    .line 414
    monitor-exit p0

    .line 415
    return-void

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 419
    monitor-enter p0

    .line 421
    :try_start_0
    iget-object v2, p0, Lorg/c/a/a/a;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    iget-object v1, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v1}, Lorg/c/a/a/o;->a()Lorg/c/a/a/k;

    move-result-object v1

    iget-object v2, p0, Lorg/c/a/a/a;->l:Lorg/c/a/d/g/f;

    invoke-virtual {v1, v2}, Lorg/c/a/a/k;->c(Lorg/c/a/d/g/f;)V

    .line 424
    monitor-exit p0

    .line 428
    :goto_0
    return v0

    .line 426
    :cond_0
    monitor-exit p0

    move v0, v1

    .line 428
    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    const-string v1, "%s %s g=%s p=%s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-super {p0}, Lorg/c/a/c/d;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    if-nez v0, :cond_0

    const-string v0, "?.?.?.?:??"

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lorg/c/a/a/a;->b:Lorg/c/a/b/k;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, Lorg/c/a/a/a;->c:Lorg/c/a/b/q;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/c/a/a/a;->a:Lorg/c/a/a/o;

    invoke-virtual {v0}, Lorg/c/a/a/o;->b()Lorg/c/a/a/f;

    move-result-object v0

    goto :goto_0
.end method
