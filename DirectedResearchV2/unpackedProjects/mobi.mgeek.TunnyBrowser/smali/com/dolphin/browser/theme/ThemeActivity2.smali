.class public Lcom/dolphin/browser/theme/ThemeActivity2;
.super Landroid/view/CustomMenuActivity;
.source "ThemeActivity2.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field private b:Lcom/dolphin/browser/theme/ar;

.field private c:Lcom/dolphin/browser/theme/WallpaperTitleView;

.field private d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<+",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/dolphin/browser/theme/aj;

.field private h:Z

.field private i:Lcom/dolphin/browser/theme/data/a;

.field private j:Lcom/dolphin/browser/theme/g;

.field private k:Lcom/dolphin/browser/theme/aq;

.field private l:Landroid/view/ContextMenu$ContextMenuInfo;

.field private m:Lcom/dolphin/browser/theme/b/b;

.field private n:Landroid/app/ProgressDialog;

.field private o:Lcom/dolphin/browser/theme/b/d;

.field private p:Landroid/content/DialogInterface$OnCancelListener;

.field private q:Landroid/widget/AdapterView$OnItemClickListener;

.field private r:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->h:Z

    .line 281
    new-instance v0, Lcom/dolphin/browser/theme/y;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/y;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->j:Lcom/dolphin/browser/theme/g;

    .line 289
    new-instance v0, Lcom/dolphin/browser/theme/z;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/z;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->k:Lcom/dolphin/browser/theme/aq;

    .line 548
    new-instance v0, Lcom/dolphin/browser/theme/ac;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/ac;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->o:Lcom/dolphin/browser/theme/b/d;

    .line 604
    new-instance v0, Lcom/dolphin/browser/theme/ad;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/ad;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->p:Landroid/content/DialogInterface$OnCancelListener;

    .line 611
    new-instance v0, Lcom/dolphin/browser/theme/ae;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/ae;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1015
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->n:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private a(Landroid/view/View;)Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 723
    check-cast p1, Lcom/dolphin/browser/theme/af;

    invoke-interface {p1}, Lcom/dolphin/browser/theme/af;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method private a(ILcom/dolphin/browser/theme/data/a;)V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0642

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0640

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0641

    new-instance v2, Lcom/dolphin/browser/theme/w;

    invoke-direct {v2, p0, p1, p2}, Lcom/dolphin/browser/theme/w;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;ILcom/dolphin/browser/theme/data/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 205
    return-void
.end method

.method private a(Landroid/widget/BaseAdapter;Lcom/dolphin/browser/theme/data/n;)V
    .locals 4

    .prologue
    .line 449
    instance-of v0, p2, Lcom/dolphin/browser/theme/data/a;

    if-nez v0, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 453
    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 454
    const-string v1, "theme manager"

    const-string v2, "promote"

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 455
    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->f()Ljava/lang/String;

    move-result-object v0

    .line 456
    invoke-static {p0, v0}, Lcom/dolphin/browser/theme/data/j;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-interface {p2}, Lcom/dolphin/browser/theme/data/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 458
    const-string v2, "market://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    invoke-direct {p0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 463
    const-string v3, "uri"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v1, "title"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v0, "destination"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 466
    const-string v0, "notificationpackage"

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v0, "notificationclass"

    const-class v1, Lmobi/mgeek/TunnyBrowser/OpenDownloadReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/downloads/t;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 470
    invoke-interface {p2, v0}, Lcom/dolphin/browser/theme/data/n;->a(Landroid/net/Uri;)V

    .line 471
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeActivity2;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->c()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeActivity2;ILcom/dolphin/browser/theme/data/a;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(ILcom/dolphin/browser/theme/data/a;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeActivity2;Landroid/widget/BaseAdapter;Lcom/dolphin/browser/theme/data/n;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Landroid/widget/BaseAdapter;Lcom/dolphin/browser/theme/data/n;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/a;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->c(Lcom/dolphin/browser/theme/data/a;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/n;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Lcom/dolphin/browser/theme/data/n;)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/theme/ThemeActivity2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/dolphin/browser/theme/data/n;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 434
    if-nez p1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-interface {p1}, Lcom/dolphin/browser/theme/data/n;->i()Landroid/net/Uri;

    move-result-object v0

    .line 438
    if-eqz v0, :cond_0

    .line 441
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 442
    const-string v2, "control"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 478
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 480
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e05b1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 216
    instance-of v2, v0, Lcom/dolphin/browser/theme/data/d;

    if-eqz v2, :cond_0

    .line 217
    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->i:Lcom/dolphin/browser/theme/data/a;

    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method

.method private a(Lcom/dolphin/browser/theme/data/a;)Z
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 210
    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const v4, 0x7f0a0130

    const/4 v1, 0x0

    .line 362
    iget-object v2, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    .line 363
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a0062

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/theme/ar;->a(I)I

    move-result v0

    .line 364
    iget-object v3, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->c:Lcom/dolphin/browser/theme/WallpaperTitleView;

    invoke-virtual {v3}, Lcom/dolphin/browser/theme/WallpaperTitleView;->updateTheme()V

    .line 365
    iget-object v3, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-virtual {v3, v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(I)V

    .line 366
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b(I)V

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a01b2

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Landroid/content/res/ColorStateList;)V

    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->i:Lcom/dolphin/browser/theme/data/a;

    if-eqz v0, :cond_0

    .line 369
    iget-object v3, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->i:Lcom/dolphin/browser/theme/data/a;

    invoke-static {}, Lcom/dolphin/browser/util/cu;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/theme/data/a;->a(Z)V

    .line 371
    :cond_0
    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ar;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->c(I)V

    .line 373
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/theme/ar;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b(I)V

    .line 374
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08039f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0131

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/theme/ar;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 376
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/aj;->d()V

    .line 378
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 369
    goto :goto_0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->r:Landroid/widget/Toast;

    .line 747
    if-nez v0, :cond_0

    .line 748
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 749
    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->r:Landroid/widget/Toast;

    .line 753
    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    return-void

    .line 751
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/ThemeActivity2;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->b()V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/a;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Lcom/dolphin/browser/theme/data/a;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/n;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/data/n;)V

    return-void
.end method

.method private b(Lcom/dolphin/browser/theme/data/a;)V
    .locals 1

    .prologue
    .line 424
    instance-of v0, p1, Lcom/dolphin/browser/theme/data/n;

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0, p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->e(Lcom/dolphin/browser/theme/data/a;)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    check-cast p1, Lcom/dolphin/browser/theme/data/n;

    invoke-direct {p0, v0, p1}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Landroid/widget/BaseAdapter;Lcom/dolphin/browser/theme/data/n;)V

    .line 430
    :cond_0
    return-void
.end method

.method private b(Lcom/dolphin/browser/theme/data/n;)V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Ljava/io/File;

    invoke-interface {p1}, Lcom/dolphin/browser/theme/data/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 588
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 591
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->startActivity(Landroid/content/Intent;)V

    .line 593
    :cond_0
    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/theme/data/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 225
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->k_()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    instance-of v1, v0, Lcom/dolphin/browser/theme/data/d;

    if-eqz v1, :cond_1

    .line 227
    const-string v0, "themes_new"

    const-string v1, "status"

    const-string v2, "default"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Lcom/dolphin/browser/theme/data/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const-string v0, "themes_new"

    const-string v1, "status"

    const-string v2, "customized"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v1, "themes_new"

    const-string v2, "status"

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_3
    const-string v0, "themes_new"

    const-string v1, "status"

    const-string v2, "default"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/dolphin/browser/theme/ThemeActivity2;)Lcom/dolphin/browser/theme/aj;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->m:Lcom/dolphin/browser/theme/b/b;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->m:Lcom/dolphin/browser/theme/b/b;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/b/b;->a()V

    .line 546
    :cond_0
    return-void
.end method

.method private c(Lcom/dolphin/browser/theme/data/a;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 487
    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ar;->c()Lcom/dolphin/browser/theme/data/a;

    move-result-object v1

    .line 489
    instance-of v2, p1, Lcom/dolphin/browser/theme/data/d;

    if-eqz v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/theme/ar;->f(I)V

    .line 491
    iget-object v2, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    invoke-virtual {v2}, Lcom/dolphin/browser/theme/ar;->h()V

    .line 495
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 496
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e057c

    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(I)V

    .line 497
    const-string v0, "themes_new"

    const-string v1, "switch"

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_0
    return-void

    .line 493
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, v3}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/data/a;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/dolphin/browser/theme/ThemeActivity2;)Lcom/dolphin/browser/theme/ar;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    return-object v0
.end method

.method private d(Lcom/dolphin/browser/theme/data/a;)V
    .locals 5

    .prologue
    .line 504
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 524
    :goto_0
    return-void

    .line 507
    :cond_0
    new-instance v0, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 508
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0626

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/dolphin/browser/theme/ThemeActivity2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 509
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0625

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setTitle(I)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 510
    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 511
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c1

    new-instance v2, Lcom/dolphin/browser/theme/ab;

    invoke-direct {v2, p0, p1}, Lcom/dolphin/browser/theme/ab;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Lcom/dolphin/browser/theme/data/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 521
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e00d9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;

    .line 522
    invoke-virtual {v0}, Lcom/dolphin/browser/ui/fake/AlertDialog$Builder;->show()Lcom/dolphin/browser/ui/fake/AlertDialog;

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 597
    invoke-static {p0}, Lcom/dolphin/browser/util/bt;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 598
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e038c

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 601
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->n:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private e(Lcom/dolphin/browser/theme/data/a;)Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 728
    invoke-virtual {p1}, Lcom/dolphin/browser/theme/data/a;->l()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 740
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 730
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    invoke-static {v0}, Lcom/dolphin/browser/theme/aj;->a(Lcom/dolphin/browser/theme/aj;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    check-cast v0, Lcom/dolphin/browser/theme/af;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/af;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    goto :goto_0

    .line 732
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    invoke-static {v0}, Lcom/dolphin/browser/theme/aj;->a(Lcom/dolphin/browser/theme/aj;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/dolphin/browser/theme/af;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/af;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    goto :goto_0

    .line 734
    :pswitch_3
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    invoke-static {v0}, Lcom/dolphin/browser/theme/aj;->a(Lcom/dolphin/browser/theme/aj;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/dolphin/browser/theme/af;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/af;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    goto :goto_0

    .line 728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic f(Lcom/dolphin/browser/theme/ThemeActivity2;)Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/dolphin/browser/theme/ThemeActivity2;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->q:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 529
    const v0, 0xffff

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->m:Lcom/dolphin/browser/theme/b/b;

    if-eqz v0, :cond_1

    .line 530
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->m:Lcom/dolphin/browser/theme/b/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dolphin/browser/theme/b/b;->a(IILandroid/content/Intent;)V

    .line 536
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/CustomMenuActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 537
    return-void

    .line 533
    :cond_1
    const/16 v0, 0x2763

    if-ne p1, v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/aj;->d()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 128
    invoke-static {}, Lcom/dolphin/browser/theme/ar;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    .line 132
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03010d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->setContentView(I)V

    .line 134
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/WallpaperTitleView;

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->c:Lcom/dolphin/browser/theme/WallpaperTitleView;

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->c:Lcom/dolphin/browser/theme/WallpaperTitleView;

    new-instance v1, Lcom/dolphin/browser/theme/v;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/theme/v;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/WallpaperTitleView;->a(Lcom/dolphin/browser/theme/bi;)V

    .line 142
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0803a0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    .line 143
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08022d

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/theme/ThemeActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->e:Landroid/support/v4/view/ViewPager;

    .line 145
    invoke-virtual {v0, v2}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->c(Z)V

    .line 146
    invoke-virtual {v0, v3}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b(Z)V

    .line 147
    invoke-virtual {v0, v2}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Z)V

    .line 148
    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    .line 150
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/ar;->a(Landroid/content/Context;)Lcom/dolphin/browser/theme/i;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/ar;

    .line 153
    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->l()Ljava/util/List;

    move-result-object v0

    .line 158
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Ljava/util/List;)V

    .line 159
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Ljava/util/List;)V

    .line 160
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iput-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->f:Ljava/util/List;

    .line 164
    new-instance v0, Lcom/dolphin/browser/theme/aj;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/theme/aj;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;Ljava/util/List;)V

    .line 165
    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    .line 166
    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ae;)V

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->d:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Landroid/support/v4/view/ViewPager;)V

    .line 170
    invoke-virtual {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/dr;->a(Landroid/view/Window;)V

    .line 171
    iput-boolean v2, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->h:Z

    .line 172
    new-instance v0, Lcom/dolphin/browser/theme/b/b;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->o:Lcom/dolphin/browser/theme/b/d;

    invoke-direct {v0, p0, v1}, Lcom/dolphin/browser/theme/b/b;-><init>(Landroid/app/Activity;Lcom/dolphin/browser/theme/b/d;)V

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->m:Lcom/dolphin/browser/theme/b/b;

    .line 173
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 677
    invoke-direct {p0, p2}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(Landroid/view/View;)Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 678
    iput-object p3, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->l:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 679
    new-instance v1, Landroid/view/MenuInflater;

    invoke-direct {v1, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 680
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 681
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 682
    sget-object v2, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v2, 0x7f10000d

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 684
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 686
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080444

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 687
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 690
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080445

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 691
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 693
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080446

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 694
    invoke-virtual {v0}, Lcom/dolphin/browser/theme/data/a;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 695
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 696
    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 700
    :cond_2
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 701
    sget-object v2, Lcom/dolphin/browser/n/a;->i:Lmobi/mgeek/TunnyBrowser/R$menu;

    const v2, 0x7f10000c

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 703
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/n;

    .line 705
    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->f_()I

    move-result v0

    .line 707
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080441

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 708
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080443

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 709
    if-nez v0, :cond_3

    .line 710
    invoke-interface {v1, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 711
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 717
    :goto_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080442

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 718
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 713
    :cond_3
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 714
    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 387
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->l:Landroid/view/ContextMenu$ContextMenuInfo;

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 388
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/theme/data/a;

    .line 389
    if-nez v0, :cond_1

    .line 390
    const-string v0, "Theme"

    const-string v1, "null theme found in context menu info, ignoring."

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    :goto_0
    return v3

    .line 393
    :cond_1
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080444

    if-ne v1, v2, :cond_3

    .line 394
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    invoke-direct {p0, v3, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(ILcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->c(Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 399
    :cond_3
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080446

    if-ne v1, v2, :cond_4

    .line 400
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->d(Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 401
    :cond_4
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080441

    if-ne v1, v2, :cond_6

    .line 402
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 403
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->a(ILcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 405
    :cond_5
    invoke-direct {p0, v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->b(Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 407
    :cond_6
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080442

    if-ne v1, v2, :cond_7

    .line 408
    instance-of v1, v0, Lcom/dolphin/browser/theme/data/n;

    if-eqz v1, :cond_0

    .line 409
    invoke-static {}, Lcom/dolphin/browser/theme/ba;->a()Lcom/dolphin/browser/theme/ba;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/theme/ba;->a(Lcom/dolphin/browser/theme/data/a;)V

    goto :goto_0

    .line 411
    :cond_7
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080443

    if-ne v1, v2, :cond_0

    .line 412
    instance-of v1, v0, Lcom/dolphin/browser/theme/data/n;

    if-eqz v1, :cond_0

    .line 413
    check-cast v0, Lcom/dolphin/browser/theme/data/n;

    invoke-interface {v0}, Lcom/dolphin/browser/theme/data/n;->j()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 258
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onResume()V

    .line 259
    invoke-direct {p0}, Lcom/dolphin/browser/theme/ThemeActivity2;->b()V

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 262
    new-instance v0, Lcom/dolphin/browser/theme/x;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/theme/x;-><init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;J)V

    .line 270
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/theme/bc;->a()Lcom/dolphin/browser/theme/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/theme/bc;->a(Landroid/content/Context;)V

    .line 271
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->k:Lcom/dolphin/browser/theme/aq;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->c(Lcom/dolphin/browser/theme/aq;)V

    .line 248
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->j:Lcom/dolphin/browser/theme/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->a(Lcom/dolphin/browser/theme/g;)V

    .line 249
    iget-boolean v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->g:Lcom/dolphin/browser/theme/aj;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/aj;->d()V

    .line 252
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->h:Z

    .line 253
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onStart()V

    .line 254
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->r:Landroid/widget/Toast;

    .line 276
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->k:Lcom/dolphin/browser/theme/aq;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->d(Lcom/dolphin/browser/theme/aq;)V

    .line 277
    iget-object v0, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->b:Lcom/dolphin/browser/theme/ar;

    iget-object v1, p0, Lcom/dolphin/browser/theme/ThemeActivity2;->j:Lcom/dolphin/browser/theme/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/theme/ar;->b(Lcom/dolphin/browser/theme/g;)V

    .line 278
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onStop()V

    .line 279
    return-void
.end method
