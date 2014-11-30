.class public Lam/sunrise/android/calendar/ui/mainview/a/g;
.super Landroid/os/AsyncTask;
.source "RangeOccurrencesLoaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lam/sunrise/android/calendar/ui/mainview/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lam/sunrise/android/calendar/b/e;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Calendar;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lam/sunrise/android/calendar/ui/mainview/a/h;Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 61
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->a:Landroid/content/ContentResolver;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->b:Ljava/lang/ref/WeakReference;

    .line 63
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->c:Lam/sunrise/android/calendar/b/e;

    .line 64
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    .line 65
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->g:Ljava/util/Calendar;

    .line 67
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->c:Lam/sunrise/android/calendar/b/e;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->g:Ljava/util/Calendar;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->h:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method private static a(Ljava/util/Calendar;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 313
    iput-object p0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 314
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 315
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    const/16 v3, 0x8

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 316
    const/4 v0, 0x0

    iput v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 317
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 320
    iput-object p0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 321
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 322
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 323
    const/4 v0, 0x1

    iput v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 324
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 327
    iput-object p0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 328
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 329
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    const/16 v3, 0x12

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 330
    const/4 v0, 0x2

    iput v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 331
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-object v1
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0x8

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/16 v9, 0xb

    .line 337
    .line 343
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/a;

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 345
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 346
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/a;

    .line 347
    iget-boolean v8, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->h:Z

    if-eqz v8, :cond_4

    .line 418
    :cond_0
    if-nez v5, :cond_1

    .line 420
    new-instance v5, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 421
    iput-object v7, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 422
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 423
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 424
    iput v2, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 425
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_a

    .line 426
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 432
    :cond_1
    if-nez v4, :cond_2

    .line 434
    new-instance v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 435
    iput-object v7, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 436
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 437
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 438
    iput v6, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 439
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_b

    .line 440
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 446
    :cond_2
    if-nez v3, :cond_3

    .line 448
    new-instance v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 449
    iput-object v7, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 450
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 451
    iget-object v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    const/16 v3, 0x12

    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 452
    const/4 v0, 0x2

    iput v0, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 453
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_c

    .line 454
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :goto_3
    add-int/lit8 v0, v1, 0x1

    .line 460
    :cond_3
    return-void

    .line 351
    :cond_4
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 352
    if-lt v0, v10, :cond_5

    if-ge v0, v11, :cond_5

    .line 353
    if-nez v5, :cond_d

    .line 355
    new-instance v5, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 356
    iput-object v7, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 357
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 358
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 359
    iput v2, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 360
    invoke-virtual {p1, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 361
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v6

    .line 345
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    move v4, v3

    move v3, v1

    move v1, v0

    goto/16 :goto_0

    .line 363
    :cond_5
    if-lt v0, v11, :cond_7

    const/16 v8, 0x12

    if-ge v0, v8, :cond_7

    .line 364
    if-nez v5, :cond_6

    .line 366
    new-instance v5, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 367
    iput-object v7, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 368
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 369
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 370
    iput v2, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 371
    invoke-virtual {p1, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    move v5, v6

    .line 374
    :cond_6
    if-nez v4, :cond_d

    .line 376
    new-instance v4, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 377
    iput-object v7, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 378
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 379
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 380
    iput v6, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 381
    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v4, v5

    move v1, v3

    move v3, v6

    .line 383
    goto :goto_4

    .line 384
    :cond_7
    const/16 v8, 0x12

    if-lt v0, v8, :cond_d

    .line 385
    if-nez v5, :cond_8

    .line 387
    new-instance v5, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 388
    iput-object v7, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 389
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 390
    iget-object v0, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 391
    iput v2, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 392
    invoke-virtual {p1, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 393
    add-int/lit8 v1, v1, 0x1

    move v5, v6

    .line 395
    :cond_8
    if-nez v4, :cond_9

    .line 397
    new-instance v4, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 398
    iput-object v7, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 399
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 400
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v9, v11}, Ljava/util/Calendar;->set(II)V

    .line 401
    iput v6, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 402
    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    .line 405
    :cond_9
    if-nez v3, :cond_d

    .line 407
    new-instance v3, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 408
    iput-object v7, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 409
    iget-object v0, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 410
    iget-object v0, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    const/16 v8, 0x12

    invoke-virtual {v0, v9, v8}, Ljava/util/Calendar;->set(II)V

    .line 411
    const/4 v0, 0x2

    iput v0, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 412
    invoke-virtual {p1, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v3, v4

    move v1, v6

    move v4, v5

    goto/16 :goto_4

    .line 428
    :cond_a
    invoke-virtual {p1, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 442
    :cond_b
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 456
    :cond_c
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_d
    move v0, v1

    move v1, v3

    move v3, v4

    move v4, v5

    goto/16 :goto_4
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/mainview/a/b;
    .locals 22

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Lc/a/a/i;->a(Ljava/util/TimeZone;)Lc/a/a/i;

    move-result-object v12

    .line 84
    new-instance v2, Lc/a/a/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, v12}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v3, Lc/a/a/b;

    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->g:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, v12}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v2, v3}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v2

    invoke-virtual {v2}, Lc/a/a/k;->c()I

    move-result v13

    .line 94
    new-instance v14, Lam/sunrise/android/calendar/ui/mainview/a/b;

    invoke-direct {v14}, Lam/sunrise/android/calendar/ui/mainview/a/b;-><init>()V

    .line 96
    new-instance v15, Landroid/util/SparseArray;

    invoke-direct {v15}, Landroid/util/SparseArray;-><init>()V

    .line 98
    const-string v2, "RangeOccurrencesLoaderTask"

    const-string v3, "doInBackground[%s -> %s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->a:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/provider/k;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/mainview/a/i;->a:[Ljava/lang/String;

    const-string v5, "(calendar_is_enabled = ? AND event_type != \'facebook:event\' AND (occurrence_user_rsvp_status != \'declined\' OR occurrence_user_rsvp_status IS NULL)) OR (calendar_is_enabled = ? AND event_type = \'facebook:event\' AND (occurrence_user_rsvp_status = \'attending\' OR occurrence_user_rsvp_status = \'unsure\'))"

    sget-object v6, Lam/sunrise/android/calendar/ui/mainview/a/i;->b:[Ljava/lang/String;

    const-string v7, "occurrence_start_date, occurrence_is_all_day"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    .line 140
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 141
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 142
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    const-string v3, "occurrence_start_date"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 143
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    const-string v3, "occurrence_is_all_day"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 144
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    const-string v3, "event_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 146
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const-string v2, "RangeOccurrencesLoaderTask"

    const-string v3, "doInBackground[%s -> %s] no rows"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_0
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_c

    .line 152
    const-string v2, "RangeOccurrencesLoaderTask"

    const-string v3, "doInBackground[%s -> %s] rows=%d rangeSize=%d loaded from %s to %s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    const/4 v8, -0x1

    .line 157
    const/4 v6, 0x0

    .line 158
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    :cond_1
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    move v9, v2

    .line 162
    :goto_0
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v19, 0x3e8

    mul-long v2, v2, v19

    .line 163
    new-instance v5, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 164
    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    invoke-static {v5, v2}, Lam/sunrise/android/calendar/b/d;->d(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->g:Ljava/util/Calendar;

    invoke-static {v5, v2}, Lam/sunrise/android/calendar/b/d;->f(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    :cond_2
    :goto_1
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    const/4 v2, -0x1

    if-eq v8, v2, :cond_3

    invoke-static {v4}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v15, v8, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 245
    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    invoke-virtual {v15, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v3, v2

    .line 250
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 251
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 270
    :cond_3
    :goto_3
    const-string v2, "RangeOccurrencesLoaderTask"

    const-string v3, "doInBackground[%s -> %s] startDate=%s endDate=%s dayCount=%d resolvedEvents=%d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->g:Ljava/util/Calendar;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 276
    invoke-static {v6}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 277
    invoke-virtual {v6}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 278
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 280
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    .line 284
    const/4 v4, 0x0

    move v5, v4

    :goto_4
    if-gt v5, v13, :cond_12

    .line 285
    const/4 v4, 0x0

    invoke-virtual {v15, v5, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 286
    if-nez v4, :cond_f

    .line 287
    invoke-static {v3, v6}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 288
    iget-object v4, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-static {v6}, Lam/sunrise/android/calendar/ui/mainview/a/g;->a(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 303
    :goto_5
    const/4 v4, 0x6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v7}, Ljava/util/Calendar;->add(II)V

    .line 284
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    .line 161
    :cond_4
    const/4 v2, 0x1

    move v9, v2

    goto/16 :goto_0

    .line 177
    :cond_5
    invoke-virtual {v5}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 179
    invoke-static {v5}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 181
    iget-object v3, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 183
    new-instance v3, Lc/a/a/b;

    invoke-direct {v3, v10, v11, v12}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    new-instance v7, Lc/a/a/b;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-direct {v7, v0, v1, v12}, Lc/a/a/b;-><init>(JLc/a/a/i;)V

    invoke-static {v3, v7}, Lc/a/a/k;->a(Lc/a/a/y;Lc/a/a/y;)Lc/a/a/k;

    move-result-object v3

    invoke-virtual {v3}, Lc/a/a/k;->c()I

    move-result v7

    .line 185
    if-gez v7, :cond_6

    .line 186
    const-string v2, "RangeOccurrencesLoaderTask"

    const-string v3, "doInBackground[%s -> %s] curIndex < 0 -- SKIPPING"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->d:Ljava/lang/String;

    aput-object v9, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/mainview/a/g;->e:Ljava/lang/String;

    aput-object v9, v5, v7

    invoke-static {v2, v3, v5}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 191
    :cond_6
    if-eq v7, v8, :cond_15

    .line 192
    const/4 v3, -0x1

    if-eq v8, v3, :cond_7

    invoke-static {v4}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 193
    const/4 v3, 0x0

    invoke-virtual {v15, v8, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 194
    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    invoke-virtual {v15, v8, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v8, v3

    .line 199
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 200
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lam/sunrise/android/calendar/ui/mainview/a/a;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    :cond_7
    :goto_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    move v5, v7

    .line 217
    :goto_8
    const-string v6, "birthday"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 218
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v4

    move v8, v5

    move-object v4, v3

    goto/16 :goto_1

    .line 202
    :cond_8
    new-instance v3, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 203
    iget-object v0, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    .line 204
    iput-object v6, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 205
    iput-object v6, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 206
    iput-object v4, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    .line 207
    const/4 v4, 0x1

    iput-boolean v4, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->h:Z

    .line 209
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 220
    :cond_9
    new-instance v7, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v7}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 221
    iget-object v6, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    iput-object v6, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    .line 222
    iput-object v4, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 223
    iput-boolean v9, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->g:Z

    .line 224
    iput-object v2, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 225
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    .line 226
    iget-object v2, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    iget-object v6, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const/4 v2, 0x0

    invoke-virtual {v15, v5, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 229
    invoke-static {v2}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-virtual {v15, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, v2

    .line 234
    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 235
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v6, v4

    move v8, v5

    move-object v4, v3

    goto/16 :goto_1

    .line 237
    :cond_a
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v4

    move v8, v5

    move-object v4, v3

    goto/16 :goto_1

    .line 253
    :cond_b
    new-instance v2, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 254
    iget-object v5, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    iput-object v5, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    .line 255
    iput-object v6, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 256
    iput-object v6, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 257
    iput-object v4, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    .line 258
    const/4 v4, 0x1

    iput-boolean v4, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->h:Z

    .line 260
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 264
    :cond_c
    iget-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 265
    const/4 v2, 0x0

    iput-object v2, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    goto/16 :goto_3

    .line 289
    :cond_d
    invoke-static {v3, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 290
    iget-object v4, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/mainview/a/g;->a(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 292
    :cond_e
    new-instance v7, Lam/sunrise/android/calendar/ui/mainview/a/a;

    invoke-direct {v7}, Lam/sunrise/android/calendar/ui/mainview/a/a;-><init>()V

    .line 293
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Calendar;

    iput-object v4, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 294
    iget-object v4, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    iput-object v4, v7, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    .line 295
    iget-object v4, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 298
    :cond_f
    invoke-static {v3, v6}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v7

    if-nez v7, :cond_10

    invoke-static {v3, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 299
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lam/sunrise/android/calendar/ui/mainview/a/g;->a(Ljava/util/ArrayList;)V

    .line 301
    :cond_11
    iget-object v7, v14, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    .line 306
    :cond_12
    return-object v14

    :cond_13
    move-object v3, v2

    goto/16 :goto_2

    :cond_14
    move-object v8, v3

    goto/16 :goto_6

    :cond_15
    move-object v3, v4

    move v5, v8

    move-object v4, v6

    goto/16 :goto_8

    :cond_16
    move-object v6, v2

    goto/16 :goto_9
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/b;)V
    .locals 4

    .prologue
    .line 464
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/h;

    .line 465
    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->f:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->g:Ljava/util/Calendar;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/mainview/a/g;->h:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, p1}, Lam/sunrise/android/calendar/ui/mainview/a/h;->a(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/lang/Object;Lam/sunrise/android/calendar/ui/mainview/a/b;)V

    .line 468
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/g;->a([Ljava/lang/Void;)Lam/sunrise/android/calendar/ui/mainview/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Lam/sunrise/android/calendar/ui/mainview/a/b;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/g;->a(Lam/sunrise/android/calendar/ui/mainview/a/b;)V

    return-void
.end method
