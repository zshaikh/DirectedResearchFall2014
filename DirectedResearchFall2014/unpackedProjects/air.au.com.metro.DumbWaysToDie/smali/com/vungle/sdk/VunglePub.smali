.class public final Lcom/vungle/sdk/VunglePub;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/sdk/VunglePub$EventListener;,
        Lcom/vungle/sdk/VunglePub$Gender;
    }
.end annotation


# static fields
.field private static g:Lcom/vungle/sdk/VunglePub;

.field private static h:Ljava/lang/String;


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/model/RequestAd;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/sdk/IVungleConstants;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleCache;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/sdk/VungleConnectionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/sdk/model/VungleParser;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/sdk/VungleUtil;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    sput-object v0, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 10
    .parameter "context"
    .parameter "vungleAppId"
    .parameter "age"
    .parameter "gender"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Lcom/vungle/sdk/n;->a(Landroid/content/Context;)V

    .line 64
    invoke-static {p1}, Lcom/vungle/sdk/u;->a(Landroid/content/Context;)Lcom/vungle/sdk/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/ap;->a()V

    invoke-virtual {v0, p0}, Lcom/vungle/sdk/ap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/model/RequestAd;

    .line 66
    invoke-virtual {v0, p2}, Lcom/vungle/sdk/model/RequestAd;->a(Ljava/lang/String;)V

    .line 67
    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Lcom/vungle/sdk/model/RequestAd;)V

    .line 68
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/vungle/sdk/model/RequestAd;->b(I)V

    .line 69
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/vungle/sdk/model/RequestAd;->a(I)V

    .line 70
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10e

    const/16 v3, 0x1e0

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v2, v2

    sput v2, Lcom/vungle/sdk/n;->x:F

    int-to-float v0, v0

    sput v0, Lcom/vungle/sdk/n;->y:F

    new-instance v0, Lcom/vungle/sdk/y;

    invoke-direct {v0}, Lcom/vungle/sdk/y;-><init>()V

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Lcom/vungle/sdk/y;)V

    new-instance v0, Lcom/vungle/sdk/x;

    invoke-direct {v0}, Lcom/vungle/sdk/x;-><init>()V

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Lcom/vungle/sdk/x;)V

    sget-object v0, Lcom/vungle/sdk/IVungleConstants;->E:Ljava/lang/String;

    sget-object v2, Lcom/vungle/sdk/IVungleConstants;->F:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/vungle/sdk/VungleUtil;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lcom/vungle/sdk/VungleUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/sdk/VunglePub;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-virtual {v0}, Lcom/vungle/sdk/VungleConnectionHandler;->d()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Lcom/vungle/sdk/ab;->a(Ljava/util/ArrayList;)V

    invoke-static {v1}, Lcom/vungle/sdk/VungleUtil;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->E:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/vungle/sdk/IVungleConstants;->G:Ljava/lang/String;

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    sget-object v3, Lcom/vungle/sdk/IVungleConstants;->H:Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    move-wide v0, v6

    move v2, v5

    :goto_1
    iget-object v3, p0, Lcom/vungle/sdk/VunglePub;->b:Lcom/vungle/sdk/IVungleConstants;

    invoke-static {v2}, Lcom/vungle/sdk/IVungleConstants;->a(I)V

    invoke-static {v0, v1}, Lcom/vungle/sdk/IVungleConstants;->a(J)V

    .line 71
    return-void

    :cond_1
    move-wide v8, v1

    move v2, v0

    move-wide v0, v8

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private static declared-synchronized a()Z
    .locals 3

    .prologue
    .line 55
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vungle/sdk/VunglePub;->g:Lcom/vungle/sdk/VunglePub;

    if-nez v1, :cond_0

    .line 56
    const-string v1, "VunglePub"

    const-string v2, "VunglePub was not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v1, 0x0

    .line 59
    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(ZLjava/lang/String;Z)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 339
    :goto_0
    return v0

    .line 305
    :cond_0
    sput-boolean p0, Lcom/vungle/sdk/n;->D:Z

    .line 306
    sput-object p1, Lcom/vungle/sdk/n;->E:Ljava/lang/String;

    .line 307
    sput-boolean p2, Lcom/vungle/sdk/n;->F:Z

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 311
    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->h()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->g()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Time Diff: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->h()J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-double v0, v0

    const-wide v3, 0x408f400000000000L

    div-double/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cur Delay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const/4 v0, 0x1

    :goto_1
    move v1, v6

    .line 330
    :goto_2
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vungle/sdk/n;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 331
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/model/RequestAd;->b()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vungle/sdk/VungleUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 333
    new-instance v3, Lcom/vungle/sdk/b$a;

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v2}, Lcom/vungle/sdk/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    const-string v2, "UnfilledAdRequestThread"

    invoke-direct {v0, v3, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 336
    invoke-static {}, Lcom/vungle/sdk/VungleConnectionHandler;->e()V

    :cond_1
    move v0, v1

    .line 339
    goto :goto_0

    .line 318
    :cond_2
    sget-boolean v0, Lcom/vungle/sdk/n;->j:Z

    if-nez v0, :cond_3

    .line 319
    invoke-static {}, Lcom/vungle/sdk/VungleConnectionHandler;->e()V

    move v0, v6

    .line 320
    goto :goto_1

    .line 322
    :cond_3
    sget-boolean v0, Lcom/vungle/sdk/n;->n:Z

    if-nez v0, :cond_4

    .line 323
    sget-object v0, Lcom/vungle/sdk/VunglePub;->g:Lcom/vungle/sdk/VunglePub;

    invoke-direct {v0}, Lcom/vungle/sdk/VunglePub;->b()Z

    move-result v0

    move v1, v0

    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method private declared-synchronized b()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "video ready: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/vungle/sdk/n;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad in focus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/sdk/n;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    sget-boolean v0, Lcom/vungle/sdk/n;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v2

    .line 486
    :goto_0
    monitor-exit p0

    return v0

    .line 454
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/vungle/sdk/n;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 455
    goto :goto_0

    .line 459
    :cond_1
    invoke-static {}, Lcom/vungle/sdk/ab;->a()Lcom/vungle/sdk/model/RequestAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/sdk/model/RequestAd;->a()Lcom/vungle/sdk/z;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/sdk/z;->c:Ljava/lang/String;

    .line 463
    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_2

    move v0, v2

    .line 465
    goto :goto_0

    .line 467
    :cond_2
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/sdk/VungleUtil;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 468
    goto :goto_0

    .line 470
    :cond_3
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->c()Z

    move-result v0

    goto :goto_0

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/vungle/sdk/VunglePub;->f:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/sdk/VungleUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 478
    goto :goto_0

    .line 481
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- delay: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- focus: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vungle/sdk/n;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 486
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->c()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static declared-synchronized c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 573
    const-class v1, Lcom/vungle/sdk/VunglePub;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/ab;->c()Lcom/vungle/sdk/x;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vungle/sdk/x;->a:J

    .line 576
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vungle/sdk/n;->j:Z

    .line 578
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/vungle/sdk/VungleAdvert;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 579
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 584
    sget-object v0, Lcom/vungle/sdk/VunglePub;->g:Lcom/vungle/sdk/VunglePub;

    iget-object v0, v0, Lcom/vungle/sdk/VunglePub;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/sdk/VungleCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    if-nez v0, :cond_0

    move v0, v4

    .line 589
    :goto_0
    monitor-exit v1

    return v0

    .line 587
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/vungle/sdk/VungleCache;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    const/4 v0, 0x1

    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized displayAdvert()Z
    .locals 4

    .prologue
    .line 348
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v1, v2, v3}, Lcom/vungle/sdk/VunglePub;->a(ZLjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized displayIncentivizedAdvert(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "name"
    .parameter "showCloseButton"

    .prologue
    .line 373
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 374
    :cond_0
    const/4 p0, 0x0

    .line 377
    :cond_1
    const/4 v1, 0x1

    invoke-static {v1, p0, p1}, Lcom/vungle/sdk/VunglePub;->a(ZLjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized displayIncentivizedAdvert(Z)Z
    .locals 3
    .parameter "showCloseButton"

    .prologue
    .line 359
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2, p0}, Lcom/vungle/sdk/VunglePub;->a(ZLjava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSoundEnabled()Z
    .locals 2

    .prologue
    .line 283
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 284
    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/vungle/sdk/n;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized getVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    const-string v1, "VungleDroid/1.3.10"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appId"

    .prologue
    .line 170
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/vungle/sdk/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit v0

    return-void

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .parameter "context"
    .parameter "vungleAppId"
    .parameter "age"
    .parameter "gender"

    .prologue
    const/4 v2, 0x1

    .line 188
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vungle/sdk/VunglePub;->g:Lcom/vungle/sdk/VunglePub;

    if-nez v1, :cond_1

    move v1, v2

    .line 190
    :goto_0
    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x1

    sput-boolean v1, Lcom/vungle/sdk/n;->i:Z

    .line 193
    new-instance v1, Lcom/vungle/sdk/VunglePub;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vungle/sdk/VunglePub;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    sput-object v1, Lcom/vungle/sdk/VunglePub;->g:Lcom/vungle/sdk/VunglePub;

    .line 194
    invoke-static {}, Lcom/vungle/sdk/VungleConnectionHandler;->e()V

    .line 195
    invoke-static {}, Lcom/vungle/sdk/ab;->b()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vungle/sdk/ab;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/vungle/sdk/VunglePub;->g:Lcom/vungle/sdk/VunglePub;

    iget-object v1, v1, Lcom/vungle/sdk/VunglePub;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/vungle/sdk/VungleConnectionHandler;

    invoke-virtual {p0}, Lcom/vungle/sdk/VungleConnectionHandler;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit v0

    return-void

    .line 188
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isVideoAvailable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 396
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const-string v1, "VunglePub not initialized."

    sput-object v1, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v5

    .line 421
    :goto_0
    monitor-exit v0

    return v1

    .line 401
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->h()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Lcom/vungle/sdk/IVungleConstants;->g()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 402
    const-string v1, "Ad views are too close together. (Within the delay time provided by the adserver)"

    sput-object v1, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;

    move v1, v5

    .line 403
    goto :goto_0

    .line 406
    :cond_1
    sget-object v1, Lcom/vungle/sdk/VunglePub;->g:Lcom/vungle/sdk/VunglePub;

    iget-object v1, v1, Lcom/vungle/sdk/VunglePub;->f:Lcom/vungle/sdk/VungleUtil;

    invoke-static {}, Lcom/vungle/sdk/n;->e()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/sdk/VungleUtil;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 410
    if-eqz v1, :cond_2

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not currently available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;

    move v1, v5

    .line 412
    goto :goto_0

    .line 415
    :cond_2
    sget-boolean v1, Lcom/vungle/sdk/n;->j:Z

    if-nez v1, :cond_3

    .line 416
    const-string v1, "Advert has not been fully downloaded yet."

    sput-object v1, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;

    move v1, v5

    .line 417
    goto :goto_0

    .line 420
    :cond_3
    const-string v1, "Advert is available."

    sput-object v1, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    const/4 v1, 0x1

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isVideoAvailable(Z)Z
    .locals 3
    .parameter "debug"

    .prologue
    .line 433
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->isVideoAvailable()Z

    move-result v1

    .line 435
    if-eqz p0, :cond_0

    .line 436
    sget-object v2, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;

    .line 437
    sget-object v2, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;

    .line 438
    const/4 v2, 0x0

    sput-object v2, Lcom/vungle/sdk/VunglePub;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :cond_0
    monitor-exit v0

    return v1

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onPause()V
    .locals 2

    .prologue
    .line 217
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 223
    :goto_0
    monitor-exit v0

    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/vungle/sdk/t;->b()V

    .line 222
    invoke-static {}, Lcom/vungle/sdk/s;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized onResume()V
    .locals 2

    .prologue
    .line 204
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 210
    :goto_0
    monitor-exit v0

    return-void

    .line 206
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/vungle/sdk/t;->a()V

    .line 209
    invoke-static {}, Lcom/vungle/sdk/s;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setAutoRotation(Z)V
    .locals 2
    .parameter "shouldAutoRotate"

    .prologue
    .line 295
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/vungle/sdk/n;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit v0

    return-void

    .line 295
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setBackButtonEnabled(Z)V
    .locals 2
    .parameter "isBackButtonEnabled"

    .prologue
    .line 252
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 254
    :goto_0
    monitor-exit v0

    return-void

    .line 253
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/vungle/sdk/n;->t:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setEventListener(Lcom/vungle/sdk/VunglePub$EventListener;)V
    .locals 2
    .parameter "el"

    .prologue
    .line 561
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 564
    :goto_0
    monitor-exit v0

    return-void

    .line 563
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/vungle/sdk/IVungleConstants;->a(Lcom/vungle/sdk/VunglePub$EventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIncentivizedBackButtonEnabled(Z)V
    .locals 2
    .parameter "isBackButtonEnabled"

    .prologue
    .line 269
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 271
    :goto_0
    monitor-exit v0

    return-void

    .line 270
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/vungle/sdk/n;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSoundEnabled(Z)V
    .locals 2
    .parameter "isSoundEnabled"

    .prologue
    .line 235
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/VunglePub;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 237
    :goto_0
    monitor-exit v0

    return-void

    .line 236
    :cond_0
    :try_start_1
    sput-boolean p0, Lcom/vungle/sdk/n;->s:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setVungleBitmapFactory(Lcom/vungle/sdk/VungleBitmapFactory;)V
    .locals 2
    .parameter "vungleBitmapFactory"

    .prologue
    .line 567
    const-class v0, Lcom/vungle/sdk/VunglePub;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vungle/sdk/m;->a()Lcom/vungle/sdk/m;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vungle/sdk/m;->a(Lcom/vungle/sdk/VungleBitmapFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit v0

    return-void

    .line 567
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
