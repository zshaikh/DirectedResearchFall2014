.class public Lcom/android/vending/billing/BillingService;
.super Landroid/app/Service;
.source "ProGuard"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static a:Lcom/android/vending/billing/j;

.field private static b:Ljava/util/LinkedList;

.field private static c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 350
    return-void
.end method

.method static synthetic a(Lcom/android/vending/billing/j;)Lcom/android/vending/billing/j;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/j;

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 518
    invoke-static {p0, p2, p3}, Lcom/android/vending/billing/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 519
    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/r;

    .line 525
    iget-object v1, v0, Lcom/android/vending/billing/r;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 526
    iget-object v1, v0, Lcom/android/vending/billing/r;->b:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_2
    iget-object v1, v0, Lcom/android/vending/billing/r;->a:Lcom/android/vending/billing/h;

    iget-object v2, v0, Lcom/android/vending/billing/r;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/vending/billing/r;->d:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/vending/billing/r;->e:J

    iget-object v6, v0, Lcom/android/vending/billing/r;->f:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/vending/billing/o;->a(Landroid/content/Context;Lcom/android/vending/billing/h;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 531
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 533
    invoke-direct {p0, p1, v0}, Lcom/android/vending/billing/BillingService;->a(I[Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private a(JLcom/android/vending/billing/i;)V
    .locals 2

    .prologue
    .line 551
    sget-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/a;

    .line 552
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0, p3}, Lcom/android/vending/billing/a;->a(Lcom/android/vending/billing/i;)V

    .line 558
    :cond_0
    sget-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 487
    new-instance v0, Lcom/android/vending/billing/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/billing/c;-><init>(Lcom/android/vending/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/c;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/vending/billing/BillingService;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/vending/billing/BillingService;->g()Z

    move-result v0

    return v0
.end method

.method private b(I[Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 504
    new-instance v0, Lcom/android/vending/billing/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/billing/d;-><init>(Lcom/android/vending/billing/BillingService;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/d;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic d()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic e()Lcom/android/vending/billing/j;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/j;

    return-object v0
.end method

.method static synthetic f()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/vending/billing/BillingService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method private g()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 423
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.MarketBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p0, v2}, Lcom/android/vending/billing/BillingService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 428
    if-eqz v1, :cond_0

    .line 436
    :goto_0
    return v0

    .line 431
    :cond_0
    const-string v0, "BillingService"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    const-string v1, "BillingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private h()V
    .locals 3

    .prologue
    .line 566
    const/4 v0, -0x1

    move v1, v0

    .line 568
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/billing/a;

    if-eqz v0, :cond_3

    .line 569
    invoke-virtual {v0}, Lcom/android/vending/billing/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 571
    sget-object v2, Lcom/android/vending/billing/BillingService;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 575
    invoke-virtual {v0}, Lcom/android/vending/billing/a;->a()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 576
    invoke-virtual {v0}, Lcom/android/vending/billing/a;->a()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 581
    :cond_1
    invoke-direct {p0}, Lcom/android/vending/billing/BillingService;->g()Z

    .line 595
    :cond_2
    :goto_1
    return-void

    .line 589
    :cond_3
    if-ltz v1, :cond_2

    .line 593
    invoke-virtual {p0, v1}, Lcom/android/vending/billing/BillingService;->stopSelf(I)V

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/BillingService;->attachBaseContext(Landroid/content/Context;)V

    .line 354
    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 4

    .prologue
    .line 377
    if-nez p1, :cond_1

    .line 378
    const-string v0, "BillingService"

    const-string v1, "handleCommand() error: null intent received."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 385
    const-string v0, "BillingService"

    const-string v1, "handleCommand() error: null action received."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_2
    const-string v1, "com.example.dungeons.CONFIRM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-direct {p0, p2, v0}, Lcom/android/vending/billing/BillingService;->a(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 396
    :cond_3
    const-string v1, "com.example.dungeons.GET_PURCHASE_INFORMATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 397
    const-string v0, "notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, p2, v1}, Lcom/android/vending/billing/BillingService;->b(I[Ljava/lang/String;)Z

    goto :goto_0

    .line 399
    :cond_4
    const-string v1, "com.android.vending.billing.PURCHASE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 400
    const-string v0, "inapp_signed_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    const-string v1, "inapp_signature"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-direct {p0, p2, v0, v1}, Lcom/android/vending/billing/BillingService;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_5
    const-string v1, "com.android.vending.billing.RESPONSE_CODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const-string v0, "request_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 405
    const-string v2, "response_code"

    sget-object v3, Lcom/android/vending/billing/i;->g:Lcom/android/vending/billing/i;

    invoke-virtual {v3}, Lcom/android/vending/billing/i;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 407
    invoke-static {v2}, Lcom/android/vending/billing/i;->a(I)Lcom/android/vending/billing/i;

    move-result-object v2

    .line 408
    invoke-direct {p0, v0, v1, v2}, Lcom/android/vending/billing/BillingService;->a(JLcom/android/vending/billing/i;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 445
    new-instance v0, Lcom/android/vending/billing/b;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/b;-><init>(Lcom/android/vending/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/b;->b()Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 460
    new-instance v0, Lcom/android/vending/billing/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/vending/billing/e;-><init>(Lcom/android/vending/billing/BillingService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/e;->b()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/android/vending/billing/f;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/f;-><init>(Lcom/android/vending/billing/BillingService;)V

    invoke-virtual {v0}, Lcom/android/vending/billing/f;->b()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 625
    :try_start_0
    invoke-virtual {p0, p0}, Lcom/android/vending/billing/BillingService;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 606
    invoke-static {p2}, Lcom/android/vending/billing/k;->a(Landroid/os/IBinder;)Lcom/android/vending/billing/j;

    move-result-object v0

    sput-object v0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/j;

    .line 607
    invoke-direct {p0}, Lcom/android/vending/billing/BillingService;->h()V

    .line 608
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 615
    const-string v0, "BillingService"

    const-string v1, "Billing service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v0, 0x0

    sput-object v0, Lcom/android/vending/billing/BillingService;->a:Lcom/android/vending/billing/j;

    .line 617
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/billing/BillingService;->a(Landroid/content/Intent;I)V

    .line 367
    return-void
.end method
