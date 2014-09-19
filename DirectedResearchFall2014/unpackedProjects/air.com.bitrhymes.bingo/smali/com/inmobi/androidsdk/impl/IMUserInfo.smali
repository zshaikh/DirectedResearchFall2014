.class public final Lcom/inmobi/androidsdk/impl/IMUserInfo;
.super Ljava/lang/Object;
.source "IMUserInfo.java"


# instance fields
.field private A:Ljava/util/Random;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:I

.field a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/location/LocationManager;

.field private m:Ljava/lang/String;

.field private n:D

.field private o:D

.field private p:D

.field private q:Z

.field private r:Landroid/content/Context;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/inmobi/androidsdk/IMAdRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->t:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->u:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->v:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->w:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->x:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->y:Ljava/lang/String;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->C:I

    .line 77
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->r:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->A:Ljava/util/Random;

    .line 79
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(D)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->n:D

    .line 455
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 180
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->g:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-string v0, "inmobisdkaid"

    const-string v0, "A_ID"

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    const-string v1, "A_ID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->B:Ljava/lang/String;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->B:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 197
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->B:Ljava/lang/String;

    .line 198
    const-string v0, "inmobisdkaid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    const-string v1, "A_ID"

    iget-object v2, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->B:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/location/Location;)V
    .locals 2
    .parameter

    .prologue
    .line 636
    if-eqz p1, :cond_0

    .line 637
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b(Z)V

    .line 638
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(D)V

    .line 639
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b(D)V

    .line 640
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c(D)V

    .line 643
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/location/LocationManager;)V
    .locals 1
    .parameter

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->l:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    .line 124
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b:Ljava/lang/String;

    .line 101
    return-void
.end method

.method private a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a:Z

    .line 440
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method private b(D)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->o:D

    .line 470
    return-void
.end method

.method private b(I)V
    .locals 0
    .parameter

    .prologue
    .line 847
    iput p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->D:I

    .line 848
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c:Ljava/lang/String;

    .line 116
    return-void
.end method

.method private b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->q:Z

    .line 500
    return-void
.end method

.method private declared-synchronized c()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->l:Landroid/location/LocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(D)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-wide p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->p:D

    .line 485
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->d:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->e:Ljava/lang/String;

    .line 154
    return-void
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->isLocationInquiryAllowed()Z

    move-result v0

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->f:Ljava/lang/String;

    .line 176
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a:Z

    return v0
.end method

.method private f()V
    .locals 5

    .prologue
    const-string v4, "InMobiAndroidSDK_3.6.2"

    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 566
    const-string v1, "location"

    .line 565
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 564
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Landroid/location/LocationManager;)V

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 569
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 570
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .line 573
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 574
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    .line 573
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 575
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 583
    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 584
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 585
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->isValidGeoInfo()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 589
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 590
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastBestKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    if-nez v0, :cond_2

    .line 594
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->g()Landroid/location/Location;

    move-result-object v0

    .line 595
    const-string v1, "InMobiAndroidSDK_3.6.2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "lastKnownLocation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Landroid/location/Location;)V

    .line 603
    :cond_3
    :goto_1
    return-void

    .line 577
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 579
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .line 578
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    .line 576
    if-nez v2, :cond_1

    .line 580
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v0

    .line 601
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v1, "Error getting the Location Info "

    invoke-static {v4, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->h:Ljava/lang/String;

    .line 185
    return-void
.end method

.method private g()Landroid/location/Location;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 606
    .line 607
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c()Landroid/location/LocationManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 610
    const-string v1, "location"

    .line 609
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 608
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Landroid/location/LocationManager;)V

    .line 612
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 613
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c()Landroid/location/LocationManager;

    move-result-object v0

    .line 614
    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v1

    .line 621
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_0
    if-gez v2, :cond_2

    .line 631
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 622
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 623
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 624
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 625
    if-eqz v3, :cond_3

    move-object v0, v3

    .line 626
    goto :goto_1

    .line 621
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->i:Ljava/lang/String;

    .line 227
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 648
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 647
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 649
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 651
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 650
    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 652
    if-eqz v0, :cond_0

    .line 653
    if-eqz v1, :cond_0

    .line 654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Z)V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Z)V

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->j:Ljava/lang/String;

    .line 242
    return-void
.end method

.method private i()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v5, "_"

    const-string v0, ""

    .line 661
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 663
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->h(Ljava/lang/String;)V

    .line 700
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 702
    if-eqz v2, :cond_6

    .line 703
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_c

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->g(Ljava/lang/String;)V

    .line 723
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 724
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 726
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x80

    .line 725
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 728
    if-eqz v2, :cond_1

    .line 729
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b(Ljava/lang/String;)V

    .line 733
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    .line 732
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 735
    if-eqz v0, :cond_a

    .line 736
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 737
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 738
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    :goto_1
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 742
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 751
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->e(Ljava/lang/String;)V

    .line 753
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->A:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(I)V

    .line 755
    const/4 v0, 0x0

    .line 756
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v1, :cond_8

    .line 757
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    sget-object v1, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_LOGIN:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/IMAdRequest;->getIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    sget-object v2, Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;->ID_SESSION:Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/IMAdRequest;->getIDType(Lcom/inmobi/androidsdk/IMAdRequest$IMIDType;)Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-static {}, Lcom/inmobi/commons/IMCommonUtil;->getDeviceIdMask()I

    move-result v2

    move v4, v2

    .line 761
    :goto_3
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getRandomKey()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUIDMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->f(Ljava/lang/String;)V

    .line 763
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->r:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 764
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Landroid/content/Context;)V

    .line 767
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getConnectivityType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->d(Ljava/lang/String;)V

    .line 770
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 772
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 773
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 781
    :cond_5
    :goto_4
    return-void

    .line 709
    :cond_6
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 710
    const-string v1, "user.language"

    .line 709
    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 711
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    .line 712
    const-string v4, "user.region"

    .line 711
    invoke-virtual {v1, v4}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 713
    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 716
    :goto_5
    if-nez v0, :cond_0

    .line 717
    const-string v0, "en"

    goto/16 :goto_0

    .line 774
    :cond_7
    if-ne v0, v6, :cond_5

    .line 775
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 777
    :catch_0
    move-exception v0

    .line 778
    const-string v1, "InMobiAndroidSDK_3.6.2"

    const-string v2, "Error getting the orientation info "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 744
    :catch_1
    move-exception v0

    goto/16 :goto_2

    :cond_8
    move v4, v0

    move-object v1, v3

    move-object v0, v3

    goto/16 :goto_3

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v3

    goto/16 :goto_1

    :cond_b
    move-object v0, v2

    goto :goto_5

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->k:Ljava/lang/String;

    .line 271
    return-void
.end method


# virtual methods
.method public getAdUnitSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getAge()I

    move-result v0

    .line 389
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getAppBId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->r:Landroid/content/Context;

    return-object v0
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getAreaCode()Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v3, "-"

    .line 298
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getDateOfBirth()Ljava/util/Calendar;

    move-result-object v0

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 304
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getEducation()Lcom/inmobi/androidsdk/IMAdRequest$EducationType;

    move-result-object v0

    .line 359
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getEthnicity()Lcom/inmobi/androidsdk/IMAdRequest$EthnicityType;

    move-result-object v0

    .line 369
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getGender()Lcom/inmobi/androidsdk/IMAdRequest$GenderType;

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIncome()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getIncome()I

    move-result v0

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInterests()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getInterests()Ljava/lang/String;

    move-result-object v0

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getKeywords()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLat()D
    .locals 2

    .prologue
    .line 446
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->n:D

    return-wide v0
.end method

.method public getLocAccuracy()D
    .locals 2

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->p:D

    return-wide v0
.end method

.method public getLocalization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationWithCityStateCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getLocationWithCityStateCountry()Ljava/lang/String;

    move-result-object v0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLon()D
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->o:D

    return-wide v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 839
    iget v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->D:I

    return v0
.end method

.method public getPhoneDefaultUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 529
    const-string v0, ""

    .line 531
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRandomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshType()I
    .locals 1

    .prologue
    .line 855
    iget v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->C:I

    return v0
.end method

.method public getRequestParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getRequestParams()Ljava/util/Map;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRsakeyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getRSAKeyVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenDensity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->getSearchString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSiteId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSlotId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getTestModeAdActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getUIDMapEncrypted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public isTestMode()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->z:Lcom/inmobi/androidsdk/IMAdRequest;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/IMAdRequest;->isTestMode()Z

    move-result v0

    .line 509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidGeoInfo()Z
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->q:Z

    return v0
.end method

.method public setAdUnitSlot(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->v:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public setPhoneDefaultUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 800
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->s:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public setRefTagKey(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 788
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->t:Ljava/lang/String;

    .line 789
    return-void
.end method

.method public setRefTagValue(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 796
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->u:Ljava/lang/String;

    .line 797
    return-void
.end method

.method public setRefreshType(I)V
    .locals 1
    .parameter

    .prologue
    .line 860
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-eqz p1, :cond_1

    .line 861
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->C:I

    .line 862
    :cond_1
    iput p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->C:I

    .line 863
    return-void
.end method

.method public setScreenDensity(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->y:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public setScreenSize(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->x:Ljava/lang/String;

    .line 825
    return-void
.end method

.method public setSlotId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/inmobi/androidsdk/impl/IMUserInfo;->w:Ljava/lang/String;

    .line 817
    return-void
.end method

.method public declared-synchronized updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/IMAdRequest;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Lcom/inmobi/androidsdk/IMAdRequest;)V

    .line 538
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->i()V

    .line 539
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->i(Ljava/lang/String;)V

    .line 541
    if-eqz p2, :cond_0

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b(Z)V

    .line 543
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 544
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 545
    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Landroid/location/Location;)V

    .line 546
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 548
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->h()V

    .line 549
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 555
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/impl/IMUserInfo;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
