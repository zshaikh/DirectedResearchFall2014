.class public Lam/sunrise/android/calendar/ui/mainview/a/m;
.super Ljava/lang/Object;
.source "ScheduleViewRangeOccurrenceLoader.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/mainview/a/w;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private volatile c:Z

.field private d:Landroid/content/ContentResolver;

.field private e:I

.field private f:Lam/sunrise/android/calendar/ui/mainview/a/o;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/util/Calendar;

.field private i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

.field private j:Ljava/util/Calendar;

.field private k:Ljava/util/Calendar;

.field private l:Ljava/util/Calendar;

.field private m:Ljava/util/Calendar;

.field private n:Z

.field private o:Ljava/util/Calendar;

.field private p:Z

.field private q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/p;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lam/sunrise/android/calendar/ui/mainview/a/z;

.field private s:Landroid/os/Handler;

.field private t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->c:Z

    .line 50
    const/16 v0, 0x1f4

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->e:I

    .line 51
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/o;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/a/o;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/m;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->f:Lam/sunrise/android/calendar/ui/mainview/a/o;

    .line 53
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->g:Ljava/util/Calendar;

    .line 54
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->h:Ljava/util/Calendar;

    .line 56
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    .line 66
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    .line 346
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->q:Ljava/util/LinkedList;

    .line 411
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->s:Landroid/os/Handler;

    .line 412
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/n;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/a/n;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/m;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->t:Ljava/lang/Runnable;

    .line 71
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->p:Z

    .line 72
    return-void
.end method

.method private a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 205
    const-string v3, "ScheduleViewRangeOccurrenceLoader"

    const-string v4, "loadOccurrences(requestStart=%s, requestEnd=%s, queryType=%d, goToDay=%s)"

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    const/4 v6, 0x3

    if-nez p4, :cond_3

    const-string v0, "null"

    :goto_0
    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->g:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->g:Ljava/util/Calendar;

    .line 215
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->h:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->h:Ljava/util/Calendar;

    .line 219
    :goto_1
    if-ne p3, v7, :cond_5

    .line 221
    invoke-virtual {p4, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object p4, p1

    .line 227
    :cond_1
    :goto_2
    invoke-direct {p0, p1, v0, p3, p4}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    .line 259
    :cond_2
    :goto_3
    return-void

    .line 205
    :cond_3
    invoke-static {p4, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {p4, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p4, v0

    .line 224
    goto :goto_2

    .line 231
    :cond_5
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    if-eqz v3, :cond_a

    .line 232
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    invoke-static {p1, v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    invoke-static {p1, v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 239
    :cond_6
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 240
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v3

    if-ne p3, v7, :cond_7

    move v1, p3

    :cond_7
    invoke-direct {p0, p1, v3, v1, v8}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    .line 246
    :cond_8
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    if-ne p3, v7, :cond_9

    :goto_4
    invoke-direct {p0, v1, v0, p3, v8}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    goto :goto_3

    :cond_9
    move p3, v2

    goto :goto_4

    .line 256
    :cond_a
    const-string v2, "ScheduleViewRangeOccurrenceLoader"

    const-string v3, "that was not supposed to happen..."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    invoke-direct {p0, p1, v0, p3, v8}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    goto :goto_3

    :cond_b
    move-object v0, p2

    goto :goto_1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/a/m;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->n:Z

    return v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/mainview/a/m;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->b:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 268
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_1

    .line 270
    add-int/2addr p1, v0

    .line 276
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    .line 277
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 278
    return-void

    .line 267
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V
    .locals 7

    .prologue
    .line 349
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    if-nez v0, :cond_1

    .line 350
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    .line 351
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    .line 365
    :cond_0
    :goto_0
    iget-object v6, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->q:Ljava/util/LinkedList;

    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/p;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/ui/mainview/a/p;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/m;Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 366
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->f()V

    .line 367
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    .line 356
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/mainview/a/m;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->e:I

    return v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/mainview/a/m;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/mainview/a/m;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->h()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 372
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->c:Z

    if-nez v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->r:Lam/sunrise/android/calendar/ui/mainview/a/z;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->r:Lam/sunrise/android/calendar/ui/mainview/a/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/mainview/a/z;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/p;

    .line 378
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->d:Landroid/content/ContentResolver;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/a/r;->a(Landroid/content/ContentResolver;)Lam/sunrise/android/calendar/ui/mainview/a/v;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/a/p;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Ljava/util/Calendar;)Lam/sunrise/android/calendar/ui/mainview/a/v;

    move-result-object v1

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/a/p;->b:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/v;->b(Ljava/util/Calendar;)Lam/sunrise/android/calendar/ui/mainview/a/v;

    move-result-object v2

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->p:Z

    if-eqz v1, :cond_3

    sget-object v1, Lam/sunrise/android/calendar/ui/mainview/a/x;->b:Lam/sunrise/android/calendar/ui/mainview/a/x;

    :goto_1
    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/x;)Lam/sunrise/android/calendar/ui/mainview/a/v;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/v;->a(Lam/sunrise/android/calendar/ui/mainview/a/w;Ljava/lang/Object;)Lam/sunrise/android/calendar/ui/mainview/a/z;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->r:Lam/sunrise/android/calendar/ui/mainview/a/z;

    goto :goto_0

    :cond_3
    sget-object v1, Lam/sunrise/android/calendar/ui/mainview/a/x;->a:Lam/sunrise/android/calendar/ui/mainview/a/x;

    goto :goto_1
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/mainview/a/m;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->c:Z

    return v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->r:Lam/sunrise/android/calendar/ui/mainview/a/z;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->r:Lam/sunrise/android/calendar/ui/mainview/a/z;

    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/mainview/a/z;->b()V

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->r:Lam/sunrise/android/calendar/ui/mainview/a/z;

    .line 395
    :cond_0
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->c:Z

    if-nez v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->b:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->b:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(I)V

    .line 407
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lam/sunrise/android/calendar/ui/mainview/a/ac;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 172
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->n:Z

    .line 173
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(II)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 176
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 177
    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x1

    .line 179
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(I)V

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 182
    add-int/lit8 v2, p1, -0x3

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->add(II)V

    .line 184
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    const/4 v2, -0x8

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 186
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v2

    .line 187
    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v6}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 192
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 194
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    invoke-static {v0, v4}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    .line 197
    invoke-direct {p0, v0, v1, v4, v6}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    .line 201
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->a:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->b:Landroid/widget/ListView;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->c:Z

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->d:Landroid/content/ContentResolver;

    .line 97
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->d:Landroid/content/ContentResolver;

    sget-object v1, Lam/sunrise/android/calendar/provider/k;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->f:Lam/sunrise/android/calendar/ui/mainview/a/o;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    const-string v0, "saved_position_day"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v1

    .line 134
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    .line 137
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 154
    invoke-static {p1}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 156
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->g()V

    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->q:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 158
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    .line 159
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->k:Ljava/util/Calendar;

    .line 160
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    .line 161
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    .line 163
    const/4 v0, -0x1

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;I)Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2, p1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;Ljava/util/Calendar;ILjava/util/Calendar;)V

    .line 165
    return-void
.end method

.method public a(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 83
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->g:Ljava/util/Calendar;

    .line 84
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->h:Ljava/util/Calendar;

    .line 85
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b()V

    .line 90
    return-void
.end method

.method public a(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/Object;Lam/sunrise/android/calendar/ui/mainview/a/q;)V
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->r:Lam/sunrise/android/calendar/ui/mainview/a/z;

    .line 288
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->c:Z

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 292
    :cond_0
    check-cast p3, Lam/sunrise/android/calendar/ui/mainview/a/p;

    .line 294
    iget v0, p3, Lam/sunrise/android/calendar/ui/mainview/a/p;->c:I

    packed-switch v0, :pswitch_data_0

    .line 327
    :cond_1
    :goto_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->f()V

    goto :goto_0

    .line 296
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    iget-object v1, p3, Lam/sunrise/android/calendar/ui/mainview/a/p;->d:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Lam/sunrise/android/calendar/ui/mainview/a/q;Ljava/util/Calendar;)V

    .line 297
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    .line 298
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->k:Ljava/util/Calendar;

    goto :goto_1

    .line 303
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0, p4}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a(Lam/sunrise/android/calendar/ui/mainview/a/q;)V

    .line 304
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    .line 307
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->k:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->k:Ljava/util/Calendar;

    goto :goto_1

    .line 313
    :pswitch_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0, p4}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b(Lam/sunrise/android/calendar/ui/mainview/a/q;)V

    .line 314
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 315
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    .line 317
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->k:Ljava/util/Calendar;

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->k:Ljava/util/Calendar;

    goto :goto_1

    .line 294
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

    .line 103
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->f:Lam/sunrise/android/calendar/ui/mainview/a/o;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->s:Landroid/os/Handler;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->c:Z

    .line 106
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->b:Landroid/widget/ListView;

    .line 107
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->a:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->i:Lam/sunrise/android/calendar/ui/mainview/a/ac;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b()V

    .line 109
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->j:Ljava/util/Calendar;

    .line 110
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->k:Ljava/util/Calendar;

    .line 111
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->l:Ljava/util/Calendar;

    .line 112
    iput-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->m:Ljava/util/Calendar;

    .line 113
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "saved_position_day"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 144
    const-string v1, "saved_position_day"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/m;->o:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;)V

    .line 127
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;)V

    .line 169
    return-void
.end method
