.class public abstract Lcom/acmeaom/android/c/a/a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/acmeaom/android/a/d/e;


# static fields
.field public static final b:Lcom/acmeaom/android/a/g/m;


# instance fields
.field private a:Lcom/acmeaom/android/b/c/c/a;

.field public final c:Lcom/acmeaom/android/a/d/d;

.field public d:Z

.field public e:Z

.field public final f:Ljava/util/HashMap;

.field public g:Landroid/view/MotionEvent;

.field private h:Lcom/acmeaom/android/b/c/e/a;

.field private i:Lcom/acmeaom/android/b/c/h/c;

.field private j:Lcom/acmeaom/android/b/c/d/e;

.field private k:Lcom/acmeaom/android/b/c/k/h;

.field private l:Lcom/acmeaom/android/b/c/g/h;

.field private m:Lcom/acmeaom/android/b/c/j/a;

.field private n:Lcom/acmeaom/android/b/c/i/d;

.field private o:Lcom/acmeaom/android/b/c/b/a;

.field private p:J

.field private q:I

.field private r:I

.field private s:J

.field private t:Z

.field private final u:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/acmeaom/android/a/g/m;

    const v1, 0x4b0eaeb5

    const v2, -0x35739fbc

    invoke-direct {v0, v1, v2}, Lcom/acmeaom/android/a/g/m;-><init>(FF)V

    sput-object v0, Lcom/acmeaom/android/c/a/a;->b:Lcom/acmeaom/android/a/g/m;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/a/d/d;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/c/a/a;->d:Z

    .line 289
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->u:Ljava/util/HashMap;

    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->f:Ljava/util/HashMap;

    .line 103
    iput-object p1, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    .line 104
    return-void
.end method

.method private b(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/a/a/b;
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/acmeaom/android/c/a/a;->m()Lcom/acmeaom/android/a/a/c/m;

    move-result-object v0

    iget-object v0, v0, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    iget v0, v0, Lcom/acmeaom/android/a/a/c/n;->a:F

    div-float/2addr v0, p2

    .line 411
    invoke-static {p1, v0}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->f()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/c/f/a;

    .line 189
    invoke-virtual {v0}, Lcom/acmeaom/android/c/f/a;->r()V

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 194
    new-instance v0, Lcom/acmeaom/android/b/c/c/a;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/c/a;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    .line 195
    new-instance v0, Lcom/acmeaom/android/b/c/e/a;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/e/a;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    .line 196
    new-instance v0, Lcom/acmeaom/android/b/c/h/c;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/acmeaom/android/b/c/h/c;-><init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/i/q;Z)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    .line 197
    new-instance v0, Lcom/acmeaom/android/b/c/k/h;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/k/h;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    .line 199
    new-instance v0, Lcom/acmeaom/android/b/c/i/d;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/i/d;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    .line 200
    new-instance v0, Lcom/acmeaom/android/b/c/g/h;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/g/h;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    .line 201
    new-instance v0, Lcom/acmeaom/android/b/c/d/e;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/d/e;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    .line 202
    new-instance v0, Lcom/acmeaom/android/b/c/b/a;

    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/acmeaom/android/b/c/b/a;-><init>(Lcom/acmeaom/android/c/d/e;)V

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    .line 203
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->b()V

    .line 204
    return-void
.end method

.method private e()Lcom/acmeaom/android/c/d/e;
    .locals 0

    .prologue
    .line 402
    check-cast p0, Lcom/acmeaom/android/c/d/e;

    return-object p0
.end method

.method private f()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    if-eqz v1, :cond_1

    .line 525
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    if-eqz v1, :cond_4

    .line 534
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_4
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    if-eqz v1, :cond_5

    .line 537
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    :cond_5
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    if-eqz v1, :cond_6

    .line 540
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_6
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    if-eqz v1, :cond_7

    .line 543
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_7
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    if-eqz v1, :cond_8

    .line 546
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_8
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    if-eqz v1, :cond_9

    .line 549
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_9
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/e/a;->j()V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    .line 276
    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/c;->j()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    .line 280
    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/e;->j()V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    .line 284
    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/a;->j()V

    .line 287
    :cond_3
    return-void
.end method

.method public a(F)V
    .locals 20

    .prologue
    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/acmeaom/android/c/d/e;->B()F

    move-result v1

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/c/d/e;->C()F

    move-result v2

    .line 357
    sub-float/2addr v2, v1

    .line 358
    const/high16 v3, 0x3f800000

    sub-float v3, p1, v3

    const/high16 v4, 0x41a80000

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 361
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/c/d/e;->v()Lcom/acmeaom/android/a/g/m;

    move-result-object v18

    .line 362
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/acmeaom/android/c/d/e;->d(F)F

    move-result v2

    .line 364
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v19

    new-instance v1, Lcom/acmeaom/android/a/a/a/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000

    move v7, v2

    move v12, v2

    invoke-direct/range {v1 .. v17}, Lcom/acmeaom/android/a/a/a/b;-><init>(FFFFFFFFFFFFFFFF)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/g/m;)V

    .line 371
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/a/c/m;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getMeasuredWidth()I

    move-result v1

    .line 220
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getMeasuredHeight()I

    move-result v0

    .line 221
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 222
    :cond_0
    const/16 v0, 0x1e0

    .line 223
    const/16 v1, 0x140

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v2

    .line 226
    iget-object v3, p1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    int-to-float v1, v1

    div-float/2addr v1, v2

    iput v1, v3, Lcom/acmeaom/android/a/a/c/n;->a:F

    .line 227
    iget-object v1, p1, Lcom/acmeaom/android/a/a/c/m;->b:Lcom/acmeaom/android/a/a/c/n;

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, v1, Lcom/acmeaom/android/a/a/c/n;->b:F

    .line 228
    iget-object v0, p1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    iget-object v1, p1, Lcom/acmeaom/android/a/a/c/m;->a:Lcom/acmeaom/android/a/a/c/l;

    const/4 v2, 0x0

    iput v2, v1, Lcom/acmeaom/android/a/a/c/l;->b:F

    iput v2, v0, Lcom/acmeaom/android/a/a/c/l;->a:F

    .line 229
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/g/m;)V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/acmeaom/android/c/d/e;->b(Lcom/acmeaom/android/a/g/m;)V

    .line 399
    return-void
.end method

.method public a(Lcom/acmeaom/android/a/g/m;F)V
    .locals 2

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/acmeaom/android/c/a/a;->b(Lcom/acmeaom/android/a/g/m;F)Lcom/acmeaom/android/a/a/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/a/a/b;)V

    .line 407
    return-void
.end method

.method public abstract a(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
.end method

.method public a(Ljava/util/List;Lcom/acmeaom/android/a/a/c/l;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 234
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/b/b/a;

    invoke-interface {v0}, Lcom/acmeaom/android/b/b/a;->a()Lcom/acmeaom/android/a/i/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/i/t;->b()Landroid/content/Intent;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v1}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/acmeaom/android/a/d/b;->a(Landroid/content/Intent;)V

    .line 236
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v8, :cond_1

    .line 237
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/a/d/b;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 238
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 239
    const-string v0, "Info"

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 240
    new-instance v0, Lcom/acmeaom/android/c/a/b;

    iget-object v1, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v1}, Lcom/acmeaom/android/a/d/d;->getMapActivity()Lcom/acmeaom/android/a/d/b;

    move-result-object v2

    move-object v1, p0

    move v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/acmeaom/android/c/a/b;-><init>(Lcom/acmeaom/android/c/a/a;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;)V

    new-instance v1, Lcom/acmeaom/android/c/a/c;

    invoke-direct {v1, p0, p1}, Lcom/acmeaom/android/c/a/c;-><init>(Lcom/acmeaom/android/c/a/a;Ljava/util/List;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 266
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 268
    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 295
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/acmeaom/android/c/a/a;->g:Landroid/view/MotionEvent;

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 297
    new-instance v2, Lcom/acmeaom/android/a/i/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/acmeaom/android/a/i/f;-><init>(Landroid/view/MotionEvent;)V

    .line 304
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v3

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 331
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unrecognized "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/acmeaom/android/c/a/a;->g:Landroid/view/MotionEvent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->b(Ljava/lang/String;)V

    .line 343
    :goto_0
    return v1

    .line 307
    :pswitch_1
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/acmeaom/android/c/a/a;->d(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V

    .line 308
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 335
    :goto_1
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, v1

    .line 336
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 338
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 339
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 340
    iget-object v4, p0, Lcom/acmeaom/android/c/a/a;->f:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v5, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 312
    :pswitch_2
    new-instance v4, Lcom/acmeaom/android/a/i/o;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-direct {v4, v5, v3}, Lcom/acmeaom/android/a/i/o;-><init>(IF)V

    .line 313
    iget-object v3, p0, Lcom/acmeaom/android/c/a/a;->u:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/acmeaom/android/c/a/a;->a(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V

    goto :goto_1

    .line 320
    :pswitch_3
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/acmeaom/android/c/a/a;->b(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V

    goto :goto_1

    .line 325
    :pswitch_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 326
    iget-object v4, p0, Lcom/acmeaom/android/c/a/a;->u:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/acmeaom/android/a/i/o;

    .line 327
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {p0, v3, v2}, Lcom/acmeaom/android/c/a/a;->c(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V

    goto :goto_1

    .line 343
    :cond_0
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 6

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0, p1}, Lcom/acmeaom/android/a/d/d;->a(Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 180
    if-nez v0, :cond_0

    .line 181
    const-string v1, "Application"

    const-string v2, "onResume"

    const-string v3, "bufferContextFailure"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v1, v2, v3, v4}, Lcom/acmeaom/android/myradar/app/MyRadarApplication;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract b(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
.end method

.method public b_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/c/a;->b_()V

    .line 480
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/h;->b_()V

    .line 484
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/c;->b_()V

    .line 488
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    if-eqz v0, :cond_3

    .line 491
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/e/a;->b_()V

    .line 492
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    .line 494
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    if-eqz v0, :cond_4

    .line 495
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/i/d;->b_()V

    .line 496
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/a;->b_()V

    .line 500
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    .line 502
    :cond_5
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    if-eqz v0, :cond_6

    .line 503
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/h;->b_()V

    .line 504
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    if-eqz v0, :cond_7

    .line 507
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/e;->b_()V

    .line 508
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    .line 510
    :cond_7
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    if-eqz v0, :cond_8

    .line 511
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/b/a;->b_()V

    .line 512
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    .line 516
    :cond_8
    return-void
.end method

.method public abstract c(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
.end method

.method public abstract d(Ljava/util/Collection;Lcom/acmeaom/android/a/i/f;)V
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 161
    iput-boolean v1, p0, Lcom/acmeaom/android/c/a/a;->e:Z

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/c/a/a;->d:Z

    .line 163
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Z)V

    .line 164
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/d/e;)V

    .line 165
    invoke-virtual {p0}, Lcom/acmeaom/android/c/a/a;->q()V

    .line 166
    const-string v0, "paused"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public declared-synchronized j()V
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acmeaom/android/c/a/a;->d:Z

    .line 172
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->requestRender()V

    .line 173
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/acmeaom/android/c/d/e;->a(Lcom/acmeaom/android/a/d/e;)V

    .line 174
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->c()V

    .line 175
    const-string v0, "resumed"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract k()Lcom/acmeaom/android/c/g/b;
.end method

.method public l()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v0}, Lcom/acmeaom/android/a/d/d;->getBufferContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/acmeaom/android/a/a/c/m;
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/acmeaom/android/a/a/c/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/a/c/m;-><init>()V

    .line 214
    invoke-virtual {p0, v0}, Lcom/acmeaom/android/c/a/a;->a(Lcom/acmeaom/android/a/a/c/m;)V

    .line 215
    return-object v0
.end method

.method public n()F
    .locals 6

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->x()Lcom/acmeaom/android/a/a/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/c/d/a;->a(Lcom/acmeaom/android/a/a/a/b;)F

    move-result v0

    .line 375
    const/high16 v1, 0x43800000

    .line 376
    const v2, 0x4b98dfc2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 378
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/c/d/e;->B()F

    move-result v2

    .line 379
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/acmeaom/android/c/d/e;->C()F

    move-result v3

    .line 380
    sub-float/2addr v3, v2

    .line 381
    float-to-double v4, v2

    sub-double/2addr v0, v4

    float-to-double v2, v3

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4035000000000000L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public o()I
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/acmeaom/android/c/a/a;->n()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    .prologue
    .line 128
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 130
    iget-boolean v2, p0, Lcom/acmeaom/android/c/a/a;->d:Z

    if-nez v2, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/acmeaom/android/c/d/e;->b(Z)V

    .line 134
    :cond_0
    iget-boolean v2, p0, Lcom/acmeaom/android/c/a/a;->d:Z

    if-eqz v2, :cond_1

    .line 135
    const-string v0, "drawframe while paused :("

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_1
    :try_start_1
    iget-boolean v2, p0, Lcom/acmeaom/android/c/a/a;->t:Z

    if-nez v2, :cond_2

    .line 140
    const-string v0, "drawframe before surface created :("

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 144
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/c/d/e;->D()Z

    move-result v2

    if-nez v2, :cond_3

    .line 145
    const-string v0, "drawframe before render thread started"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/acmeaom/android/c/a/a;->e:Z

    .line 151
    invoke-virtual {p0}, Lcom/acmeaom/android/c/a/a;->k()Lcom/acmeaom/android/c/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/acmeaom/android/c/g/b;->l()V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/acmeaom/android/c/a/a;->s:J

    .line 154
    iget v2, p0, Lcom/acmeaom/android/c/a/a;->q:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/acmeaom/android/c/a/a;->p:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/acmeaom/android/c/a/a;->q:I

    .line 155
    iget v2, p0, Lcom/acmeaom/android/c/a/a;->r:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/acmeaom/android/c/a/a;->r:I

    .line 156
    iput-wide v0, p0, Lcom/acmeaom/android/c/a/a;->p:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 124
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/acmeaom/android/myradar/b/a;->f()V

    .line 111
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->t()V

    .line 112
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->e(F)V

    .line 113
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->a(Z)V

    .line 114
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/acmeaom/android/c/d/e;->b(Z)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acmeaom/android/c/a/a;->t:Z

    .line 117
    const-string v0, "surface created"

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public p()Lcom/acmeaom/android/a/d/a;
    .locals 7

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 390
    invoke-direct {p0}, Lcom/acmeaom/android/c/a/a;->e()Lcom/acmeaom/android/c/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/acmeaom/android/c/d/e;->v()Lcom/acmeaom/android/a/g/m;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/c/h/m;->a(Lcom/acmeaom/android/a/g/m;)Lcom/acmeaom/android/a/a/d/b;

    move-result-object v0

    .line 393
    new-instance v1, Lcom/acmeaom/android/a/d/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->b()D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    invoke-virtual {v0}, Lcom/acmeaom/android/a/a/d/b;->a()D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, Lcom/acmeaom/android/a/d/a;-><init>(II)V

    return-object v1
.end method

.method protected q()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 421
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/c/a;->i()V

    .line 423
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/c/a;->b_()V

    .line 424
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/c/a;->g()V

    .line 425
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->a:Lcom/acmeaom/android/b/c/c/a;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/h;->i()V

    .line 429
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/h;->b_()V

    .line 430
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/k/h;->g()V

    .line 431
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->k:Lcom/acmeaom/android/b/c/k/h;

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/c;->i()V

    .line 435
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/c;->b_()V

    .line 436
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/h/c;->g()V

    .line 437
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->i:Lcom/acmeaom/android/b/c/h/c;

    .line 439
    :cond_2
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    if-eqz v0, :cond_3

    .line 440
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/e/a;->i()V

    .line 441
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/e/a;->b_()V

    .line 442
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/e/a;->g()V

    .line 443
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->h:Lcom/acmeaom/android/b/c/e/a;

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/i/d;->i()V

    .line 447
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/i/d;->b_()V

    .line 448
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/i/d;->g()V

    .line 449
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->n:Lcom/acmeaom/android/b/c/i/d;

    .line 451
    :cond_4
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    if-eqz v0, :cond_5

    .line 452
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/a;->i()V

    .line 453
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/a;->b_()V

    .line 454
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/j/a;->g()V

    .line 455
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->m:Lcom/acmeaom/android/b/c/j/a;

    .line 457
    :cond_5
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/h;->i()V

    .line 459
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/h;->b_()V

    .line 460
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/g/h;->g()V

    .line 461
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->l:Lcom/acmeaom/android/b/c/g/h;

    .line 463
    :cond_6
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    if-eqz v0, :cond_7

    .line 464
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/e;->i()V

    .line 465
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/e;->b_()V

    .line 466
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/d/e;->g()V

    .line 467
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->j:Lcom/acmeaom/android/b/c/d/e;

    .line 469
    :cond_7
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    if-eqz v0, :cond_8

    .line 470
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/b/a;->i()V

    .line 471
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/b/a;->b_()V

    .line 472
    iget-object v0, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    invoke-virtual {v0}, Lcom/acmeaom/android/b/c/b/a;->g()V

    .line 473
    iput-object v1, p0, Lcom/acmeaom/android/c/a/a;->o:Lcom/acmeaom/android/b/c/b/a;

    .line 475
    :cond_8
    return-void
.end method

.method public r()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 561
    iget v0, p0, Lcom/acmeaom/android/c/a/a;->r:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 563
    :goto_0
    iput v3, p0, Lcom/acmeaom/android/c/a/a;->q:I

    iput v3, p0, Lcom/acmeaom/android/c/a/a;->r:I

    .line 564
    const-string v1, "%.1f FPS "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 561
    :cond_0
    const/high16 v0, 0x447a0000

    iget v1, p0, Lcom/acmeaom/android/c/a/a;->q:I

    iget v2, p0, Lcom/acmeaom/android/c/a/a;->r:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
