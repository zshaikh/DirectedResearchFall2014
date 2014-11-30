.class public Lam/sunrise/android/calendar/ui/HomeActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "HomeActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/mainview/h;
.implements Lam/sunrise/android/calendar/ui/mainview/p;
.implements Lam/sunrise/android/calendar/ui/t;
.implements Landroid/support/v4/view/bn;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/l;

.field private b:Lam/sunrise/android/calendar/ui/q;

.field private c:Ljava/util/Calendar;

.field private d:Lam/sunrise/android/calendar/ui/o;

.field private e:Lam/sunrise/android/calendar/ui/InboxActionView;

.field private f:I

.field private g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

.field private h:F

.field private i:Z

.field private j:Lam/sunrise/android/calendar/ui/SRViewPager;

.field private k:Lam/sunrise/android/calendar/ui/p;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    .line 61
    new-instance v0, Lam/sunrise/android/calendar/ui/l;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/l;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;Lam/sunrise/android/calendar/ui/j;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->a:Lam/sunrise/android/calendar/ui/l;

    .line 62
    new-instance v0, Lam/sunrise/android/calendar/ui/q;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/q;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;Lam/sunrise/android/calendar/ui/j;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->b:Lam/sunrise/android/calendar/ui/q;

    .line 65
    new-instance v0, Lam/sunrise/android/calendar/ui/o;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/o;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;Lam/sunrise/android/calendar/ui/j;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->d:Lam/sunrise/android/calendar/ui/o;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    .line 474
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/HomeActivity;I)I
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->f:I

    return p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/HomeActivity;)Lam/sunrise/android/calendar/ui/SRViewPager;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    return-object v0
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/HomeActivity;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 325
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->i:Z

    .line 326
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/HomeActivity;)Lam/sunrise/android/calendar/ui/InboxActionView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->e:Lam/sunrise/android/calendar/ui/InboxActionView;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/HomeActivity;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->f:I

    return v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/HomeActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->i()V

    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 212
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->i:Z

    if-nez v0, :cond_0

    .line 213
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/n;->a(Landroid/support/v4/app/i;)V

    .line 236
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->getId()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 222
    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/f;->b()V

    goto :goto_0

    .line 226
    :pswitch_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->getId()I

    move-result v1

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 229
    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/l;->a()V

    goto :goto_0

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private h()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    .line 267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setSwitchRotation(F)V

    goto :goto_0

    .line 273
    :pswitch_1
    const/high16 v0, -0x3d4c0000

    iput v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    .line 274
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setSwitchRotation(F)V

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i()V
    .locals 5

    .prologue
    .line 368
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 369
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->c:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->a:Lam/sunrise/android/calendar/ui/l;

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 372
    :cond_0
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->c:Ljava/util/Calendar;

    .line 373
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    const/high16 v1, 0x42b40000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 249
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->h()V

    .line 252
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    if-eqz v0, :cond_2

    .line 253
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    if-nez p1, :cond_3

    const v0, 0x7f0f016e

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 257
    :cond_2
    return-void

    .line 253
    :cond_3
    const v0, 0x7f0f016d

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(IFI)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 306
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->getId()I

    move-result v1

    const-wide/16 v2, 0x1

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 310
    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/l;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/l;->a(Ljava/util/Calendar;)V

    .line 312
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 261
    return-void
.end method

.method public b(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 317
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->getId()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 320
    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/f;->b(Ljava/util/Calendar;)V

    .line 322
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    if-eqz v0, :cond_1

    .line 289
    if-gez p1, :cond_2

    .line 290
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->getPageMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 300
    :cond_0
    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    const/high16 v2, 0x42b40000

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/SRViewPager;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setSwitchRotation(F)V

    .line 302
    :cond_1
    return-void

    .line 291
    :cond_2
    if-nez p1, :cond_3

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 292
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    .line 294
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getPageMargin()I

    move-result v0

    sub-int v0, p1, v0

    .line 295
    if-gez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 93
    if-eqz p1, :cond_2

    .line 94
    const-string v0, "saved_inbox_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->f:I

    .line 95
    const-string v0, "saved_switch_angle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    .line 96
    const-string v0, "saved_has_writable_calendars"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->i:Z

    .line 101
    :cond_1
    :goto_1
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->setContentView(I)V

    .line 103
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/SRViewPager;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    .line 104
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->setOverScrollMode(I)V

    .line 105
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->setPageMargin(I)V

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    new-instance v1, Lam/sunrise/android/calendar/ui/s;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    new-instance v0, Lam/sunrise/android/calendar/ui/p;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/p;-><init>(Landroid/support/v4/app/o;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->k:Lam/sunrise/android/calendar/ui/p;

    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->k:Lam/sunrise/android/calendar/ui/p;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->setAdapter(Landroid/support/v4/view/ae;)V

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/SRViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bn;)V

    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/SRViewPager;->setOnScrollListener(Lam/sunrise/android/calendar/ui/t;)V

    .line 112
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->c:Ljava/util/Calendar;

    .line 113
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->a:Lam/sunrise/android/calendar/ui/l;

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 114
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->b:Lam/sunrise/android/calendar/ui/q;

    invoke-virtual {v0, v1, v4, v2}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    goto/16 :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.SELECT_DATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.SELECT_DATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->l:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 171
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110007

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 172
    const v0, 0x7f0b017b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 173
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/InboxActionView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->e:Lam/sunrise/android/calendar/ui/InboxActionView;

    .line 174
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->e:Lam/sunrise/android/calendar/ui/InboxActionView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->f:I

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/InboxActionView;->setUnreadCount(I)V

    .line 175
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->e:Lam/sunrise/android/calendar/ui/InboxActionView;

    new-instance v1, Lam/sunrise/android/calendar/ui/j;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/j;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/InboxActionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f0b017c

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setSwitchRotation(F)V

    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->g:Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;

    new-instance v1, Lam/sunrise/android/calendar/ui/k;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/k;-><init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/AgendaScheduleSwitcherActionView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 196
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 208
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 198
    :sswitch_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->g()V

    goto :goto_0

    .line 202
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lam/sunrise/android/calendar/ui/settings/SettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x7f0b0175 -> :sswitch_0
        0x7f0b017d -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onPause()V

    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->d:Lam/sunrise/android/calendar/ui/o;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 166
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 127
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onResume()V

    .line 131
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/firstsync/FirstSyncActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->finish()V

    .line 136
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->d:Lam/sunrise/android/calendar/ui/o;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->d:Lam/sunrise/android/calendar/ui/o;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->d:Lam/sunrise/android/calendar/ui/o;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/HomeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    return-void
.end method

.method public onResumeFragments()V
    .locals 4

    .prologue
    .line 143
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onResumeFragments()V

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->j:Lam/sunrise/android/calendar/ui/SRViewPager;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->getId()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(IJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->l:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 152
    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/f;->c(Ljava/util/Calendar;)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->l:Ljava/lang/String;

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    const-string v1, "am.sunrise.android.calendar.extra.SELECT_DATE"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->k:Lam/sunrise/android/calendar/ui/p;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/p;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    const-string v0, "saved_inbox_count"

    iget v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v0, "saved_switch_angle"

    iget v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->h:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 122
    const-string v0, "saved_has_writable_calendars"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/HomeActivity;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method
