.class public Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;
.super Lam/sunrise/android/calendar/ui/a;
.source "DateRangeSelectionActivity.java"

# interfaces
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;


# instance fields
.field private a:Lam/sunrise/android/calendar/b/e;

.field private b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private c:Landroid/widget/Switch;

.field private d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

.field private e:Z

.field private f:Ljava/util/Calendar;

.field private g:Ljava/util/Calendar;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/a;-><init>()V

    .line 320
    return-void
.end method

.method private a(II)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xb

    .line 264
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v1, v0, v2

    .line 266
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    .line 268
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    .line 269
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    const/16 v3, 0xe

    long-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 275
    :goto_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->i()V

    .line 276
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 272
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v5, p2}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;II)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b(Ljava/util/Calendar;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/Calendar;)V
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v2, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 253
    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->e:Z

    .line 254
    const/16 v2, 0xb

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 255
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 256
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 257
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    if-ge v2, v5, :cond_0

    :goto_0
    invoke-virtual {v3, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setAMorPM(Z)V

    .line 258
    iput-boolean v1, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->e:Z

    .line 259
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->i()V

    .line 260
    return-void

    :cond_0
    move v0, v1

    .line 257
    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eq v0, p1, :cond_0

    .line 296
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    .line 297
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    .line 298
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setVisibility(I)V

    .line 299
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->i()V

    .line 301
    :cond_0
    return-void

    .line 298
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->e:Z

    return v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h()V

    return-void
.end method

.method private b(Ljava/util/Calendar;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 280
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long v1, v0, v2

    .line 282
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 283
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 284
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    .line 285
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    const/16 v3, 0xe

    long-to-int v1, v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->add(II)V

    .line 291
    :goto_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->i()V

    .line 292
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 288
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->setResult(I)V

    .line 230
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->finish()V

    .line 231
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    invoke-static {p0}, Lam/sunrise/android/calendar/ui/i;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)V

    .line 249
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 240
    const-string v2, "am.sunrise.android.calendar.extra.START_DATE"

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const-string v2, "am.sunrise.android.calendar.extra.END_DATE"

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v0, "am.sunrise.android.calendar.extra.IS_ALL_DAY"

    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->finish()V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 243
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private i()V
    .locals 5

    .prologue
    const v4, 0x80012

    .line 306
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v4}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3, v4}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 318
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-static {p0, v0}, Lam/sunrise/android/calendar/b/d;->a(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->setResult(I)V

    .line 153
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onBackPressed()V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    .line 70
    if-eqz p1, :cond_3

    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    const-string v2, "saved_start_date"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    .line 72
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    const-string v2, "saved_end_date"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    .line 73
    const-string v0, "saved_is_all_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    .line 80
    :goto_1
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->setContentView(I)V

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 83
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 88
    :cond_2
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    .line 89
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->c:Landroid/widget/Switch;

    .line 90
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    .line 92
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Z)V

    .line 93
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/calendar/k;->d:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    .line 94
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    new-instance v2, Lam/sunrise/android/calendar/ui/e;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/e;-><init>(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)V

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->setOnDayClickListener(Lam/sunrise/android/calendar/ui/widgets/calendar/i;)V

    .line 102
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    new-instance v2, Lam/sunrise/android/calendar/ui/f;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/f;-><init>(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)V

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setOnTimeChangedListener(Lam/sunrise/android/calendar/ui/widgets/aa;)V

    .line 111
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->c:Landroid/widget/Switch;

    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 112
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->c:Landroid/widget/Switch;

    new-instance v2, Lam/sunrise/android/calendar/ui/g;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/g;-><init>(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setVisibility(I)V

    .line 121
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setNavigationMode(I)V

    .line 124
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0f009a

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 127
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0f0099

    invoke-virtual {v2, v3}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setText(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar.extra.START_DATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    .line 76
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "am.sunrise.android.calendar.extra.END_DATE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    .line 77
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "am.sunrise.android.calendar.extra.IS_ALL_DAY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 119
    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    .line 165
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110003

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 166
    const v0, 0x7f0b0177

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    .line 168
    const v0, 0x7f0b003d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {p0, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    new-instance v0, Lam/sunrise/android/calendar/ui/h;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/h;-><init>(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 181
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g()V

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/a;->onResume()V

    .line 159
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->d:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 160
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 138
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v1, "saved_start_date"

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "saved_end_date"

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "saved_is_all_day"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/aa;)V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 216
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    goto :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/aa;)V
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :goto_0
    return-void

    .line 196
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->f:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a(Ljava/util/Calendar;)V

    goto :goto_0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->g:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a(Ljava/util/Calendar;)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/aa;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method
