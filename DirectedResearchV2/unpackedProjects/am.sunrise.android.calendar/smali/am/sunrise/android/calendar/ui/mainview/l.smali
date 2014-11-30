.class public Lam/sunrise/android/calendar/ui/mainview/l;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "ScheduleFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/widgets/schedule/k;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/mainview/p;

.field private b:Lam/sunrise/android/calendar/ui/mainview/a/m;

.field private c:Lam/sunrise/android/calendar/ui/mainview/a/m;

.field private d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

.field private e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

.field private f:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

.field private g:Lam/sunrise/android/calendar/ui/widgets/NowButton;

.field private h:Ljava/util/Calendar;

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 48
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;-><init>(Z)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    .line 50
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/m;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;-><init>(Z)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    .line 79
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/m;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/m;-><init>(Lam/sunrise/android/calendar/ui/mainview/l;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->i:Ljava/lang/Runnable;

    .line 59
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/l;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->h:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/mainview/l;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->h:Ljava/util/Calendar;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/aj;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 220
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 223
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->g:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getMeasuredWidth()I

    move-result v2

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->a(II)V

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a()V

    .line 241
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/a/m;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/mainview/l;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->b()V

    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/mainview/l;)Lam/sunrise/android/calendar/ui/mainview/p;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->a:Lam/sunrise/android/calendar/ui/mainview/p;

    return-object v0
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/mainview/l;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 62
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v2

    .line 63
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v4

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/widgets/aj;->getFirstVisiblePosition()I

    move-result v4

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->c(I)Ljava/util/Calendar;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 71
    :cond_1
    const-string v1, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/mainview/l;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->h:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->h:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->h:Ljava/util/Calendar;

    .line 101
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 102
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_1
    return-void
.end method

.method public b(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 246
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const-string v2, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/mainview/l;->startActivity(Landroid/content/Intent;)V

    .line 250
    return-void
.end method

.method public c(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 287
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 288
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    const-string v2, "am.sunrise.android.calendar.extra.BIRTHDAYS_DATE"

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/mainview/l;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 179
    check-cast p1, Lam/sunrise/android/calendar/ui/mainview/p;

    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->a:Lam/sunrise/android/calendar/ui/mainview/p;

    .line 180
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 109
    const v0, 0x7f030061

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->a:Lam/sunrise/android/calendar/ui/mainview/p;

    .line 186
    return-void
.end method

.method public onEventClick(Lam/sunrise/android/calendar/ui/mainview/k;)V
    .locals 4

    .prologue
    .line 254
    if-eqz p1, :cond_0

    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    new-instance v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 258
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->a:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 259
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->l:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 260
    iget-boolean v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->d:Z

    iput-boolean v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 261
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 262
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 264
    new-instance v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-direct {v2}, Lam/sunrise/android/calendar/ui/event/info/EventInfo;-><init>()V

    .line 265
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->l:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    .line 266
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->a:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    .line 267
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->b:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->d:Ljava/lang/String;

    .line 268
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->c:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    .line 269
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->m:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    .line 270
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->n:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    .line 271
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->s:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    .line 272
    iget-boolean v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->o:Z

    iput-boolean v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    .line 273
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->p:Ljava/util/Calendar;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    .line 274
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->q:Ljava/util/Calendar;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    .line 275
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->r:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    .line 276
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->u:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    .line 277
    iget-object v3, p1, Lam/sunrise/android/calendar/ui/mainview/k;->t:Ljava/lang/String;

    iput-object v3, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    .line 278
    const-string v3, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 280
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/l;->startActivity(Landroid/content/Intent;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 190
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 192
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 194
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->e()V

    .line 200
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->e()V

    .line 205
    :goto_1
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->d()V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->d()V

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b()V

    .line 210
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/m;->b()V

    .line 211
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 212
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 114
    const v0, 0x7f0b00ee

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    .line 115
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    new-instance v1, Lam/sunrise/android/calendar/ui/mainview/n;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/mainview/n;-><init>(Lam/sunrise/android/calendar/ui/mainview/l;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    const v0, 0x7f0b00ef

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/NowButton;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->g:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->g:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    const/high16 v1, -0x3d4c0000

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->setInitialAngle(F)V

    .line 146
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->g:Lam/sunrise/android/calendar/ui/widgets/NowButton;

    new-instance v1, Lam/sunrise/android/calendar/ui/mainview/o;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/mainview/o;-><init>(Lam/sunrise/android/calendar/ui/mainview/l;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NowButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Z)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    .line 154
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/l;->e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 155
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a()Lam/sunrise/android/calendar/ui/mainview/a/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(Lam/sunrise/android/calendar/ui/mainview/a/ac;)V

    .line 156
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getRegularEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->e:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/aj;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/l;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Z)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->f:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    .line 159
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->f:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/l;->f:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->b()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->f:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a()Lam/sunrise/android/calendar/ui/mainview/a/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/m;->a(Lam/sunrise/android/calendar/ui/mainview/a/ac;)V

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->getAllDayEventsListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/l;->f:Lam/sunrise/android/calendar/ui/widgets/schedule/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/aj;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->d:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->setOnEventClickListener(Lam/sunrise/android/calendar/ui/widgets/schedule/k;)V

    .line 165
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->b:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Landroid/os/Bundle;)V

    .line 166
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/l;->c:Lam/sunrise/android/calendar/ui/mainview/a/m;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/mainview/a/m;->a(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method
