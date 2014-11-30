.class public Lam/sunrise/android/calendar/ui/mainview/a/c;
.super Ljava/lang/Object;
.source "RangeOccurrencesLoader.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/mainview/a/h;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

.field private volatile c:Z

.field private d:Landroid/content/ContentResolver;

.field private e:I

.field private f:Lam/sunrise/android/calendar/ui/mainview/a/e;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/util/Calendar;

.field private i:Lam/sunrise/android/calendar/ui/mainview/a/j;

.field private j:Ljava/util/Calendar;

.field private k:Ljava/util/Calendar;

.field private l:Ljava/util/Calendar;

.field private m:Ljava/util/Calendar;

.field private n:Z

.field private o:Ljava/util/Calendar;

.field private p:I

.field private q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lam/sunrise/android/calendar/ui/mainview/a/g;

.field private s:Landroid/os/Handler;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->c:Z

    .line 47
    const/16 v0, 0x1f4

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->e:I

    .line 48
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/e;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/a/e;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->f:Lam/sunrise/android/calendar/ui/mainview/a/e;

    .line 50
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->g:Ljava/util/Calendar;

    .line 51
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->h:Ljava/util/Calendar;

    .line 53
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    .line 63
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    .line 454
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->q:Ljava/util/LinkedList;

    .line 522
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->s:Landroid/os/Handler;

    .line 523
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/d;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/a/d;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->t:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    .line 345
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_0

    .line 353
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    .line 357
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getNonObscuredFirstPosition()I

    move-result v1

    .line 359
    if-eqz v1, :cond_0

    if-lez v1, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    move v0, v1

    .line 366
    :goto_1
    if-ltz v0, :cond_3

    .line 367
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v3, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v3

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 373
    :cond_3
    if-ltz v0, :cond_4

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v3, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v3

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 374
    add-int/lit8 v0, v0, 0x1

    .line 377
    :cond_4
    sub-int v0, v1, v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    goto :goto_0

    .line 370
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V
    .locals 7

    .prologue
    .line 264
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    .line 265
    return-void
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;I)V
    .locals 7

    .prologue
    .line 269
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    .line 270
    return-void
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V
    .locals 10

    .prologue
    .line 281
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->g:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 282
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->g:Ljava/util/Calendar;

    .line 285
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->h:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 286
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->h:Ljava/util/Calendar;

    .line 289
    :goto_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 291
    invoke-virtual {p4, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v4, v1

    :goto_2
    move-object v0, p0

    move v3, p3

    move v5, p5

    move/from16 v6, p6

    .line 297
    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    .line 329
    :cond_0
    :goto_3
    return-void

    .line 293
    :cond_1
    invoke-virtual {p4, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v4, v2

    .line 294
    goto :goto_2

    .line 301
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    if-eqz v0, :cond_7

    .line 302
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    move v6, p3

    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    .line 316
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    move v3, p3

    :goto_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    goto :goto_3

    .line 310
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 317
    :cond_6
    const/4 v3, 0x1

    goto :goto_5

    .line 326
    :cond_7
    const-string v0, "RangeOccurrencesLoader"

    const-string v3, "that was not supposed to happen..."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    goto :goto_3

    :cond_8
    move-object v4, p4

    goto/16 :goto_2

    :cond_9
    move-object v2, p2

    goto/16 :goto_1

    :cond_a
    move-object v1, p1

    goto/16 :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/a/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->n:Z

    return v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/mainview/a/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V
    .locals 9

    .prologue
    .line 458
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 459
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    .line 460
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    .line 474
    :cond_0
    :goto_0
    iget-object v8, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->q:Ljava/util/LinkedList;

    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/f;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lam/sunrise/android/calendar/ui/mainview/a/f;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/c;Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 475
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->g()V

    .line 476
    return-void

    .line 462
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 463
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    .line 465
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/mainview/a/c;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->e:I

    return v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/mainview/a/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/mainview/a/c;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->j()V

    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/mainview/a/c;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->c:Z

    return v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 481
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->c:Z

    if-nez v0, :cond_1

    .line 482
    const-string v0, "RangeOccurrencesLoader"

    const-string v1, "scheduleQuery: Not attached"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lam/sunrise/android/calendar/ui/mainview/a/f;

    .line 488
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/g;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->d:Landroid/content/ContentResolver;

    iget-object v3, v5, Lam/sunrise/android/calendar/ui/mainview/a/f;->a:Ljava/util/Calendar;

    iget-object v4, v5, Lam/sunrise/android/calendar/ui/mainview/a/f;->b:Ljava/util/Calendar;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/mainview/a/g;-><init>(Landroid/content/ContentResolver;Lam/sunrise/android/calendar/ui/mainview/a/h;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->r:Lam/sunrise/android/calendar/ui/mainview/a/g;

    .line 490
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->r:Lam/sunrise/android/calendar/ui/mainview/a/g;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 496
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->r:Lam/sunrise/android/calendar/ui/mainview/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/g;->cancel(Z)Z

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->r:Lam/sunrise/android/calendar/ui/mainview/a/g;

    .line 500
    :cond_0
    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->r:Lam/sunrise/android/calendar/ui/mainview/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->r:Lam/sunrise/android/calendar/ui/mainview/a/g;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/g;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 507
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->c:Z

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(I)V

    .line 516
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lam/sunrise/android/calendar/ui/mainview/a/j;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    return-object v0
.end method

.method public a(II)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 207
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    if-eqz v0, :cond_7

    .line 208
    add-int v0, p1, p2

    add-int/lit8 v4, v0, -0x1

    .line 210
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(I)V

    .line 222
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    add-int/lit8 v3, v4, -0x1

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_3

    .line 224
    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 225
    const/4 v0, 0x3

    invoke-static {v3, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v5

    .line 227
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    .line 228
    :goto_0
    if-ne v0, v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v6}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 229
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 230
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 227
    goto :goto_0

    :cond_1
    move v0, v2

    .line 230
    goto :goto_0

    .line 233
    :cond_2
    if-eqz v0, :cond_3

    .line 234
    invoke-static {v3, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 235
    const/16 v3, 0x8

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v3

    .line 236
    invoke-direct {p0, v0, v3, v1, v7}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    .line 241
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_7

    .line 243
    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 244
    const/4 v0, -0x3

    invoke-static {v3, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v4

    .line 246
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    .line 247
    :goto_1
    if-ne v0, v1, :cond_6

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_6

    .line 248
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 249
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 246
    goto :goto_1

    :cond_5
    move v0, v2

    .line 249
    goto :goto_1

    .line 252
    :cond_6
    if-eqz v0, :cond_7

    .line 253
    const/4 v0, -0x8

    invoke-static {v3, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 254
    const/4 v1, -0x1

    invoke-static {v3, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 255
    invoke-direct {p0, v0, v1, v2, v7}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    .line 260
    :cond_7
    return-void
.end method

.method public a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->a:Ljava/lang/ref/WeakReference;

    .line 89
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->c:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->d:Landroid/content/ContentResolver;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->f:Lam/sunrise/android/calendar/ui/mainview/a/e;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string v0, "saved_position_day"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v1

    .line 133
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    .line 134
    const-string v0, "saved_position_offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    .line 137
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 189
    invoke-static {p1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 191
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->h()V

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 193
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    .line 194
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    .line 195
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    .line 196
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    .line 198
    invoke-static {p1, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    .line 200
    return-void
.end method

.method public a(Ljava/util/Calendar;I)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 160
    invoke-static {p1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 162
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->h()V

    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 164
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    .line 165
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    .line 166
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    .line 167
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    .line 169
    invoke-static {p1, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;I)V

    .line 171
    return-void
.end method

.method public a(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 78
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->g:Ljava/util/Calendar;

    .line 79
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->h:Ljava/util/Calendar;

    .line 80
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->b()V

    .line 85
    return-void
.end method

.method public a(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/Object;Lam/sunrise/android/calendar/ui/mainview/a/b;)V
    .locals 4

    .prologue
    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->r:Lam/sunrise/android/calendar/ui/mainview/a/g;

    .line 389
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->c:Z

    if-nez v0, :cond_0

    .line 429
    :goto_0
    return-void

    .line 393
    :cond_0
    check-cast p3, Lam/sunrise/android/calendar/ui/mainview/a/f;

    .line 395
    iget v0, p3, Lam/sunrise/android/calendar/ui/mainview/a/f;->c:I

    packed-switch v0, :pswitch_data_0

    .line 428
    :cond_1
    :goto_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->g()V

    goto :goto_0

    .line 397
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    iget-object v1, p3, Lam/sunrise/android/calendar/ui/mainview/a/f;->d:Ljava/util/Calendar;

    iget-boolean v2, p3, Lam/sunrise/android/calendar/ui/mainview/a/f;->e:Z

    iget v3, p3, Lam/sunrise/android/calendar/ui/mainview/a/f;->f:I

    invoke-virtual {v0, p4, v1, v2, v3}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Lam/sunrise/android/calendar/ui/mainview/a/b;Ljava/util/Calendar;ZI)V

    .line 398
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    .line 399
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    goto :goto_1

    .line 404
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Lam/sunrise/android/calendar/ui/mainview/a/b;)V

    .line 405
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    .line 408
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    goto :goto_1

    .line 414
    :pswitch_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->b(Lam/sunrise/android/calendar/ui/mainview/a/b;)V

    .line 415
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    .line 418
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    goto :goto_1

    .line 395
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->f:Lam/sunrise/android/calendar/ui/mainview/a/e;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->s:Landroid/os/Handler;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->c:Z

    .line 104
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    .line 105
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->a:Ljava/lang/ref/WeakReference;

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->i:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->b()V

    .line 107
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    .line 108
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    .line 109
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    .line 110
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    .line 111
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(I)V

    .line 144
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 145
    const-string v0, "saved_position_day"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "saved_position_offset"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 149
    const-string v1, "saved_position_day"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v0, "saved_position_offset"

    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    return-object v0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->o:Ljava/util/Calendar;

    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->p:I

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;I)V

    .line 126
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 174
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 177
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->h()V

    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 179
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->j:Ljava/util/Calendar;

    .line 180
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->k:Ljava/util/Calendar;

    .line 181
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->l:Ljava/util/Calendar;

    .line 182
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/c;->m:Ljava/util/Calendar;

    .line 184
    invoke-static {v1, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v4, v1

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;ZI)V

    .line 186
    return-void
.end method
