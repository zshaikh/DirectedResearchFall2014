.class public Ldolphin/preference/z;
.super Ljava/lang/Object;
.source "PreferenceManager.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:J

.field private d:I

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/content/SharedPreferences$Editor;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ldolphin/preference/PreferenceScreen;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/preference/ab;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/preference/ac;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldolphin/preference/aa;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/DialogInterface;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ldolphin/preference/ad;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldolphin/preference/z;->c:J

    .line 145
    iput-object p1, p0, Ldolphin/preference/z;->a:Landroid/app/Activity;

    .line 146
    iput p2, p0, Ldolphin/preference/z;->d:I

    .line 148
    invoke-direct {p0, p1}, Ldolphin/preference/z;->d(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ldolphin/preference/z;->c:J

    .line 160
    invoke-direct {p0, p1}, Ldolphin/preference/z;->d(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 355
    invoke-static {p0}, Ldolphin/preference/z;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ldolphin/preference/z;->i()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    .line 445
    invoke-static {p0}, Ldolphin/preference/z;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ldolphin/preference/z;->i()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Ldolphin/preference/z;->a(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 447
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 460
    const-string v0, "_has_set_default_values"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 463
    if-nez p4, :cond_0

    const-string v1, "_has_set_default_values"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    :cond_0
    new-instance v1, Ldolphin/preference/z;

    invoke-direct {v1, p0}, Ldolphin/preference/z;-><init>(Landroid/content/Context;)V

    .line 465
    invoke-virtual {v1, p1}, Ldolphin/preference/z;->a(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1, p2}, Ldolphin/preference/z;->a(I)V

    .line 467
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p3, v2}, Ldolphin/preference/z;->a(Landroid/content/Context;ILdolphin/preference/PreferenceScreen;)Ldolphin/preference/PreferenceScreen;

    .line 469
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "_has_set_default_values"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 471
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 506
    if-nez p1, :cond_0

    iget-object v0, p0, Ldolphin/preference/z;->f:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 507
    invoke-static {}, Lcom/dolphin/browser/util/by;->a()Lcom/dolphin/browser/util/by;

    move-result-object v0

    iget-object v1, p0, Ldolphin/preference/z;->f:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/util/by;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 510
    :cond_0
    iput-boolean p1, p0, Ldolphin/preference/z;->g:Z

    .line 511
    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 368
    const-string v0, "version_key_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 372
    const-string v0, "dolphin_key_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 164
    iput-object p1, p0, Ldolphin/preference/z;->b:Landroid/content/Context;

    .line 166
    invoke-static {p1}, Ldolphin/preference/z;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldolphin/preference/z;->a(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 737
    monitor-enter p0

    .line 739
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    if-nez v0, :cond_1

    .line 740
    monitor-exit p0

    .line 750
    :cond_0
    return-void

    .line 743
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 744
    iget-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 745
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 748
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 747
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a()J
    .locals 4

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-wide v0, p0, Ldolphin/preference/z;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Ldolphin/preference/z;->c:J

    monitor-exit p0

    return-wide v0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Ldolphin/preference/z;->j:Ldolphin/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/z;->j:Ldolphin/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Ldolphin/preference/PreferenceScreen;->a(Ljava/lang/CharSequence;)Ldolphin/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILdolphin/preference/PreferenceScreen;)Ldolphin/preference/PreferenceScreen;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-direct {p0, v1}, Ldolphin/preference/z;->a(Z)V

    .line 257
    new-instance v0, Ldolphin/preference/y;

    invoke-direct {v0, p1, p0}, Ldolphin/preference/y;-><init>(Landroid/content/Context;Ldolphin/preference/z;)V

    .line 258
    invoke-virtual {v0, p2, p3, v1}, Ldolphin/preference/y;->a(ILdolphin/preference/j;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/PreferenceScreen;

    .line 259
    invoke-virtual {v0, p0}, Ldolphin/preference/PreferenceScreen;->onAttachedToHierarchy(Ldolphin/preference/z;)V

    .line 262
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Ldolphin/preference/z;->a(Z)V

    .line 264
    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 326
    iput p1, p0, Ldolphin/preference/z;->i:I

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/z;->e:Landroid/content/SharedPreferences;

    .line 328
    return-void
.end method

.method a(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 574
    monitor-enter p0

    .line 575
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/z;->k:Ljava/util/List;

    if-nez v0, :cond_1

    monitor-exit p0

    .line 585
    :cond_0
    return-void

    .line 576
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Ldolphin/preference/z;->k:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 577
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 580
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 581
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/ab;

    invoke-interface {v0, p1, p2, p3}, Ldolphin/preference/ab;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method a(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 703
    monitor-enter p0

    .line 705
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    .line 709
    :cond_0
    iget-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    monitor-exit p0

    .line 711
    return-void

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0}, Ldolphin/preference/z;->j()V

    .line 731
    return-void
.end method

.method a(Ldolphin/preference/aa;)V
    .locals 1

    .prologue
    .line 641
    monitor-enter p0

    .line 642
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    .line 646
    :cond_0
    iget-object v0, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_1
    monitor-exit p0

    .line 650
    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Ldolphin/preference/ad;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Ldolphin/preference/z;->o:Ldolphin/preference/ad;

    .line 760
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 303
    iput-object p1, p0, Ldolphin/preference/z;->h:Ljava/lang/String;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/preference/z;->e:Landroid/content/SharedPreferences;

    .line 305
    return-void
.end method

.method a(Ldolphin/preference/PreferenceScreen;)Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Ldolphin/preference/z;->j:Ldolphin/preference/PreferenceScreen;

    if-eq p1, v0, :cond_0

    .line 392
    iput-object p1, p0, Ldolphin/preference/z;->j:Ldolphin/preference/PreferenceScreen;

    .line 393
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 338
    iget-object v0, p0, Ldolphin/preference/z;->e:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Ldolphin/preference/z;->b:Landroid/content/Context;

    iget-object v1, p0, Ldolphin/preference/z;->h:Ljava/lang/String;

    iget v2, p0, Ldolphin/preference/z;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/z;->e:Landroid/content/SharedPreferences;

    .line 343
    :cond_0
    iget-object v0, p0, Ldolphin/preference/z;->e:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Ldolphin/preference/PreferenceGroup;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Ldolphin/preference/z;->j:Ldolphin/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/preference/z;->j:Ldolphin/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Ldolphin/preference/PreferenceScreen;->b(Ljava/lang/CharSequence;)Ldolphin/preference/PreferenceGroup;

    move-result-object v0

    goto :goto_0
.end method

.method b(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 714
    monitor-enter p0

    .line 716
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    if-nez v0, :cond_0

    .line 717
    monitor-exit p0

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Ldolphin/preference/z;->n:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 721
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b(Ldolphin/preference/aa;)V
    .locals 1

    .prologue
    .line 658
    monitor-enter p0

    .line 659
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 662
    :cond_0
    monitor-exit p0

    .line 663
    return-void

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method c()Ldolphin/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Ldolphin/preference/z;->j:Ldolphin/preference/PreferenceScreen;

    return-object v0
.end method

.method d()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 483
    iget-boolean v0, p0, Ldolphin/preference/z;->g:Z

    if-eqz v0, :cond_1

    .line 484
    iget-object v0, p0, Ldolphin/preference/z;->f:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 485
    invoke-virtual {p0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Ldolphin/preference/z;->f:Landroid/content/SharedPreferences$Editor;

    .line 488
    :cond_0
    iget-object v0, p0, Ldolphin/preference/z;->f:Landroid/content/SharedPreferences$Editor;

    .line 490
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ldolphin/preference/z;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Ldolphin/preference/z;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 4

    .prologue
    .line 624
    monitor-enter p0

    .line 625
    :try_start_0
    iget-object v0, p0, Ldolphin/preference/z;->l:Ljava/util/List;

    if-nez v0, :cond_1

    monitor-exit p0

    .line 633
    :cond_0
    return-void

    .line 626
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Ldolphin/preference/z;->l:Ljava/util/List;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 627
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 630
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 631
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/ac;

    invoke-interface {v0}, Ldolphin/preference/ac;->a()V

    .line 630
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 627
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method g()V
    .locals 4

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    monitor-enter p0

    .line 673
    :try_start_0
    iget-object v1, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ldolphin/preference/z;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v0

    .line 676
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 678
    if-eqz v2, :cond_0

    .line 679
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 680
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    .line 681
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldolphin/preference/aa;

    invoke-interface {v0}, Ldolphin/preference/aa;->onActivityDestroy()V

    .line 680
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 676
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 686
    :cond_0
    invoke-direct {p0}, Ldolphin/preference/z;->j()V

    .line 687
    return-void

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method h()Ldolphin/preference/ad;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Ldolphin/preference/z;->o:Ldolphin/preference/ad;

    return-object v0
.end method
