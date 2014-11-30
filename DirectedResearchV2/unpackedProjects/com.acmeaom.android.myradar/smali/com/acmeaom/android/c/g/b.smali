.class public Lcom/acmeaom/android/c/g/b;
.super Lcom/acmeaom/android/c/g/a;
.source "ProGuard"

# interfaces
.implements Lcom/acmeaom/android/a/g/s;


# static fields
.field static final synthetic g:Z

.field private static final u:Lcom/acmeaom/android/a/a/a/b;

.field private static final v:Lcom/acmeaom/android/a/a/a/b;

.field private static final w:Lcom/acmeaom/android/a/a/a/b;


# instance fields
.field private final h:Lcom/acmeaom/android/a/a/b/h;

.field private final i:Lcom/acmeaom/android/a/a/b/h;

.field private final j:Lcom/acmeaom/android/a/a/b/h;

.field private final k:Lcom/acmeaom/android/a/a/a/b;

.field private final l:Lcom/acmeaom/android/a/a/a/b;

.field private final m:Ljava/util/ArrayList;

.field private final n:Ljava/util/HashSet;

.field private final o:Ljava/util/HashSet;

.field private final p:Ljava/util/ArrayList;

.field private final q:Ljava/util/ArrayList;

.field private final r:Ljava/util/ArrayList;

.field private final s:Lcom/acmeaom/android/a/i/a;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/acmeaom/android/c/g/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/acmeaom/android/c/g/b;->g:Z

    .line 274
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    sput-object v0, Lcom/acmeaom/android/c/g/b;->u:Lcom/acmeaom/android/a/a/a/b;

    .line 275
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    sput-object v0, Lcom/acmeaom/android/c/g/b;->v:Lcom/acmeaom/android/a/a/a/b;

    .line 276
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    sput-object v0, Lcom/acmeaom/android/c/g/b;->w:Lcom/acmeaom/android/a/a/a/b;

    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;)V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/a;-><init>()V

    .line 54
    new-instance v0, Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    const-string v2, "renderLock"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/h;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    new-instance v0, Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    const-string v2, "bufferLock"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/h;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    new-instance v0, Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    const-string v2, "stopLock"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/h;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    .line 59
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->k:Lcom/acmeaom/android/a/a/a/b;

    .line 60
    new-instance v0, Lcom/acmeaom/android/a/a/a/b;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->l:Lcom/acmeaom/android/a/a/a/b;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->p:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->q:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/g/b;->r:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/acmeaom/android/c/g/b;)Lcom/acmeaom/android/a/a/b/h;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    return-object v0
.end method

.method static synthetic a(Lcom/acmeaom/android/c/g/b;Lcom/acmeaom/android/a/a/b/h;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/acmeaom/android/c/g/b;->b(Lcom/acmeaom/android/a/a/b/h;)V

    return-void
.end method

.method private b(Lcom/acmeaom/android/a/a/b/h;)V
    .locals 6

    .prologue
    .line 378
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    iget-boolean v1, v1, Lcom/acmeaom/android/a/i/a;->e:Z

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    iget-boolean v1, v1, Lcom/acmeaom/android/a/i/a;->d:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/i/a;->l()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/a;->a(Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    .line 399
    :goto_1
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->c()Ljava/lang/Enum;

    move-result-object v0

    sget-object v2, Lcom/acmeaom/android/c/g/g;->b:Lcom/acmeaom/android/c/g/g;

    if-ne v0, v2, :cond_8

    .line 400
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->b()V

    .line 404
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v2, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    new-instance v3, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v4, 0x3f747ae147ae147bL

    invoke-direct {v3, v4, v5}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    invoke-static {v3}, Lcom/acmeaom/android/a/a/b/j;->b(Lcom/acmeaom/android/a/a/b/aj;)Lcom/acmeaom/android/a/a/b/j;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;Lcom/acmeaom/android/a/a/b/j;)Z

    move-result v0

    .line 406
    if-nez v0, :cond_2

    .line 408
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->a()V

    goto :goto_1

    .line 394
    :cond_1
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/acmeaom/android/myradar/b/a;->b(I)V

    .line 395
    add-int/lit8 v0, v0, 0x32

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 414
    if-eqz v1, :cond_3

    .line 415
    invoke-interface {v0, p0}, Lcom/acmeaom/android/c/a;->a(Lcom/acmeaom/android/c/g/a;)V

    goto :goto_2

    .line 417
    :cond_3
    iget-object v3, p0, Lcom/acmeaom/android/c/g/b;->p:Ljava/util/ArrayList;

    monitor-enter v3

    .line 418
    :try_start_0
    iget-object v4, p0, Lcom/acmeaom/android/c/g/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 425
    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    monitor-enter v2

    .line 426
    :try_start_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 427
    if-eqz v1, :cond_5

    .line 428
    invoke-interface {v0, p0}, Lcom/acmeaom/android/c/a;->b(Lcom/acmeaom/android/c/g/a;)V

    goto :goto_3

    .line 436
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 430
    :cond_5
    :try_start_2
    iget-object v4, p0, Lcom/acmeaom/android/c/g/b;->q:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 431
    :try_start_3
    iget-object v5, p0, Lcom/acmeaom/android/c/g/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    monitor-exit v4

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0

    .line 435
    :cond_6
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 436
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 438
    if-nez v1, :cond_7

    .line 439
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 442
    :cond_7
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 443
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 445
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v2, Lcom/acmeaom/android/c/g/f;->a:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 446
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 448
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->a()V

    goto/16 :goto_1

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/i/a;->a(Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 451
    sget-object v0, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 452
    return-void
.end method

.method private declared-synchronized o()V
    .locals 3

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 223
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    const-string v1, "kMapDidStartAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->c()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    if-eq v0, v1, :cond_0

    .line 227
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->c:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 228
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 229
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->b(Ljava/lang/Enum;)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/a;->c()V

    .line 234
    new-instance v0, Lcom/acmeaom/android/c/g/d;

    invoke-direct {v0, p0}, Lcom/acmeaom/android/c/g/d;-><init>(Lcom/acmeaom/android/c/g/b;)V

    invoke-static {v0}, Lcom/acmeaom/android/a/a/b/ai;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 241
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->b:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized p()V
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 246
    invoke-static {}, Lcom/acmeaom/android/a/a/b/s;->a()Lcom/acmeaom/android/a/a/b/s;

    move-result-object v0

    const-string v1, "kMapDidStopAnimation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->c()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    if-eq v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->c:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 251
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 252
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->b(Ljava/lang/Enum;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 258
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 259
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 260
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 261
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 263
    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 266
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 267
    return-void
.end method

.method private r()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->c(Ljava/lang/Enum;)V

    .line 479
    return-void
.end method


# virtual methods
.method public a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 190
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 191
    instance-of v3, v0, Lcom/acmeaom/android/b/b/a;

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/acmeaom/android/c/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/acmeaom/android/c/a;->a(Lcom/acmeaom/android/a/a/c/l;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    check-cast v0, Lcom/acmeaom/android/b/b/a;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->b()V

    .line 198
    return-object v1
.end method

.method public declared-synchronized a()V
    .locals 2

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 84
    iget-boolean v0, p0, Lcom/acmeaom/android/c/g/b;->t:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b;->p()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 88
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 89
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 90
    sget-boolean v0, Lcom/acmeaom/android/c/g/b;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->c()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 91
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 95
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/c/g/b;->t:Z

    .line 97
    invoke-super {p0}, Lcom/acmeaom/android/c/g/a;->a()V

    .line 98
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b;->q()V

    .line 99
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 101
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->j:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;)V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->k:Lcom/acmeaom/android/a/a/a/b;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->k:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 159
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->l:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, p2}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 181
    :goto_0
    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 164
    :cond_0
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/acmeaom/android/a/c/a;->a(IJ)Lcom/acmeaom/android/a/c/c;

    move-result-object v0

    new-instance v1, Lcom/acmeaom/android/c/g/c;

    invoke-direct {v1, p0}, Lcom/acmeaom/android/c/g/c;-><init>(Lcom/acmeaom/android/c/g/b;)V

    invoke-static {v0, v1}, Lcom/acmeaom/android/a/c/a;->a(Lcom/acmeaom/android/a/c/c;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/acmeaom/android/a/a/b/h;)V
    .locals 3

    .prologue
    .line 343
    new-instance v0, Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/g;->b:Lcom/acmeaom/android/c/g/g;

    const-string v2, "bufferStopLock"

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/h;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    .line 346
    new-instance v1, Lcom/acmeaom/android/c/g/e;

    invoke-direct {v1, p0, v0}, Lcom/acmeaom/android/c/g/e;-><init>(Lcom/acmeaom/android/c/g/b;Lcom/acmeaom/android/a/a/b/h;)V

    invoke-static {v1}, Lcom/acmeaom/android/a/a/b/ai;->a(Ljava/lang/Runnable;)Ljava/lang/Thread;

    .line 354
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 355
    :goto_0
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->c()Ljava/lang/Enum;

    move-result-object v1

    sget-object v2, Lcom/acmeaom/android/c/g/g;->b:Lcom/acmeaom/android/c/g/g;

    if-ne v1, v2, :cond_0

    .line 356
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->b()V

    .line 358
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v2, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/a/b/h;->b(Ljava/lang/Enum;)V

    .line 359
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v2, Lcom/acmeaom/android/c/g/f;->a:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v1, v2}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 360
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    iget-object v1, v1, Lcom/acmeaom/android/a/i/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v1}, Lcom/acmeaom/android/a/d/d;->requestRender()V

    .line 362
    invoke-virtual {p1}, Lcom/acmeaom/android/a/a/b/h;->a()V

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 368
    sget-object v1, Lcom/acmeaom/android/c/g/g;->c:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->c(Ljava/lang/Enum;)V

    .line 370
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b;->r()V

    .line 372
    sget-object v1, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->b(Ljava/lang/Enum;)V

    .line 373
    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->b()V

    .line 374
    sget-object v0, Lcom/acmeaom/android/c/g/g;->a:Lcom/acmeaom/android/c/g/g;

    invoke-virtual {p1, v0}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 375
    return-void
.end method

.method public a(Lcom/acmeaom/android/c/a;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 106
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 109
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 110
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    iget-boolean v0, v0, Lcom/acmeaom/android/a/i/a;->d:Z

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adding graphic ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") while paused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/c/a;Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 115
    return-void
.end method

.method public a(Ljava/lang/Iterable;)V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 120
    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 124
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 125
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 126
    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/acmeaom/android/c/g/b;->a(Lcom/acmeaom/android/c/a;Ljava/util/List;)V

    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 129
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/acmeaom/android/c/g/b;->t:Z

    if-ne p1, v0, :cond_0

    .line 213
    :goto_0
    iput-boolean p1, p0, Lcom/acmeaom/android/c/g/b;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    if-eqz p1, :cond_1

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->s:Lcom/acmeaom/android/a/i/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/a;->c()V

    .line 207
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 210
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/acmeaom/android/c/g/b;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public b(Lcom/acmeaom/android/c/a;)V
    .locals 1

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 137
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->b()V

    goto :goto_0
.end method

.method public b(Ljava/lang/Iterable;)V
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 145
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 146
    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 151
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->c(Ljava/lang/Enum;)V

    .line 152
    return-void
.end method

.method public declared-synchronized b_()V
    .locals 1

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 466
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 467
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 468
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Lcom/acmeaom/android/c/a;)V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 484
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->o:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->i:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->a(Ljava/lang/Enum;)V

    .line 486
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/acmeaom/android/c/g/b;->n()V

    .line 456
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/acmeaom/android/c/g/b;->t:Z

    return v0
.end method

.method public l()V
    .locals 8

    .prologue
    .line 278
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->k:Lcom/acmeaom/android/a/a/a/b;

    monitor-enter v1

    .line 279
    :try_start_0
    sget-object v0, Lcom/acmeaom/android/c/g/b;->u:Lcom/acmeaom/android/a/a/a/b;

    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->k:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 280
    sget-object v0, Lcom/acmeaom/android/c/g/b;->v:Lcom/acmeaom/android/a/a/a/b;

    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->l:Lcom/acmeaom/android/a/a/a/b;

    invoke-virtual {v0, v2}, Lcom/acmeaom/android/a/a/a/b;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 281
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->a()V

    .line 284
    :try_start_1
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->g()V

    .line 285
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 287
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->b()V

    .line 335
    :goto_0
    return-void

    .line 281
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 291
    :cond_0
    :try_start_3
    sget-object v0, Lcom/acmeaom/android/c/g/b;->u:Lcom/acmeaom/android/a/a/a/b;

    const v1, -0x33e7203e

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/acmeaom/android/c/g/b;->w:Lcom/acmeaom/android/a/a/a/b;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/acmeaom/android/a/g/u;->a(Lcom/acmeaom/android/a/a/a/b;FFFLcom/acmeaom/android/a/a/a/b;)V

    .line 294
    const/4 v6, 0x0

    .line 295
    invoke-static {}, Lcom/acmeaom/android/a/a/b/j;->b()Lcom/acmeaom/android/a/a/b/aj;

    move-result-object v4

    .line 296
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 297
    sget-object v1, Lcom/acmeaom/android/c/g/b;->u:Lcom/acmeaom/android/a/a/a/b;

    sget-object v2, Lcom/acmeaom/android/c/g/b;->w:Lcom/acmeaom/android/a/a/a/b;

    sget-object v3, Lcom/acmeaom/android/c/g/b;->v:Lcom/acmeaom/android/a/a/a/b;

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/acmeaom/android/c/a;->a(Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/a/b;Lcom/acmeaom/android/a/a/b/aj;Lcom/acmeaom/android/c/g/a;)V

    .line 299
    if-nez v6, :cond_5

    invoke-interface {v0}, Lcom/acmeaom/android/c/a;->a_()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_2
    move-object v6, v0

    .line 302
    goto :goto_1

    .line 304
    :cond_1
    if-eqz v6, :cond_2

    .line 305
    new-instance v0, Lcom/acmeaom/android/a/a/b/aj;

    const-wide v1, 0x3fb99999a0000000L

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 306
    new-instance v1, Lcom/acmeaom/android/a/a/b/aj;

    iget-wide v2, v4, Lcom/acmeaom/android/a/a/b/aj;->b:D

    iget-wide v4, v0, Lcom/acmeaom/android/a/a/b/aj;->b:D

    add-double/2addr v2, v4

    invoke-direct {v1, v2, v3}, Lcom/acmeaom/android/a/a/b/aj;-><init>(D)V

    .line 308
    new-instance v0, Lcom/acmeaom/android/a/a/b/j;

    invoke-direct {v0, v1}, Lcom/acmeaom/android/a/a/b/j;-><init>(Lcom/acmeaom/android/a/a/b/aj;)V

    .line 309
    invoke-static {p0, v0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;Lcom/acmeaom/android/a/a/b/j;)V

    .line 314
    :goto_3
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 315
    :try_start_4
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->n:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/acmeaom/android/c/g/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 316
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 319
    :try_start_5
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->p:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 320
    :try_start_6
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 321
    invoke-interface {v0, p0}, Lcom/acmeaom/android/c/a;->a(Lcom/acmeaom/android/c/g/a;)V

    goto :goto_4

    .line 324
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 333
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v1}, Lcom/acmeaom/android/a/a/b/h;->b()V

    throw v0

    .line 311
    :cond_2
    :try_start_8
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    .line 317
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 323
    :cond_3
    :try_start_b
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 326
    :try_start_c
    iget-object v1, p0, Lcom/acmeaom/android/c/g/b;->q:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 327
    :try_start_d
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/a;

    .line 328
    invoke-interface {v0, p0}, Lcom/acmeaom/android/c/a;->b(Lcom/acmeaom/android/c/g/a;)V

    goto :goto_5

    .line 331
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 330
    :cond_4
    :try_start_f
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 333
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/b/h;->b()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v6

    goto/16 :goto_2
.end method

.method public m()V
    .locals 0

    .prologue
    .line 459
    invoke-static {p0}, Lcom/acmeaom/android/a/g/q;->a(Lcom/acmeaom/android/a/g/s;)V

    .line 460
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/acmeaom/android/c/g/b;->h:Lcom/acmeaom/android/a/a/b/h;

    sget-object v1, Lcom/acmeaom/android/c/g/f;->b:Lcom/acmeaom/android/c/g/f;

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/a/a/b/h;->c(Ljava/lang/Enum;)V

    .line 474
    return-void
.end method
