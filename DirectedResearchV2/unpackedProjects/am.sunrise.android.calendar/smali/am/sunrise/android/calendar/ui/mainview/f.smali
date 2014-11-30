.class public Lam/sunrise/android/calendar/ui/mainview/f;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "MainViewFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/mainview/e;
.implements Lam/sunrise/android/calendar/ui/widgets/agenda/c;
.implements Lam/sunrise/android/calendar/ui/widgets/calendar/i;
.implements Lcom/google/android/gms/common/c;
.implements Lcom/google/android/gms/common/d;


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/mainview/h;

.field private b:Lam/sunrise/android/calendar/ui/mainview/j;

.field private c:Lam/sunrise/android/calendar/b/e;

.field private d:Lam/sunrise/android/calendar/ui/mainview/MainView;

.field private e:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

.field private g:Ljava/util/Calendar;

.field private h:Ljava/util/Calendar;

.field private i:Lam/sunrise/android/calendar/ui/mainview/i;

.field private j:I

.field private k:I

.field private l:Lam/sunrise/android/calendar/ui/mainview/a/c;

.field private m:Z

.field private n:Lcom/google/android/gms/location/d;

.field private o:Ljava/util/Calendar;

.field private p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 79
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/j;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/mainview/j;-><init>(Lam/sunrise/android/calendar/ui/mainview/f;Lam/sunrise/android/calendar/ui/mainview/g;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->b:Lam/sunrise/android/calendar/ui/mainview/j;

    .line 92
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/i;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/mainview/i;-><init>(Lam/sunrise/android/calendar/ui/mainview/f;Lam/sunrise/android/calendar/ui/mainview/g;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->i:Lam/sunrise/android/calendar/ui/mainview/i;

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->j:I

    .line 98
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    .line 123
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/g;-><init>(Lam/sunrise/android/calendar/ui/mainview/f;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->p:Ljava/lang/Runnable;

    .line 104
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->c:Lam/sunrise/android/calendar/b/e;

    .line 105
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/f;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->o:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/mainview/f;)Lam/sunrise/android/calendar/ui/mainview/a/c;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/mainview/f;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->o:Ljava/util/Calendar;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->e:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 329
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 393
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 394
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->g:Ljava/util/Calendar;

    .line 395
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/mainview/f;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->m:Z

    return v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/mainview/f;)Lcom/google/android/gms/location/d;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->n:Lcom/google/android/gms/location/d;

    return-object v0
.end method

.method private e(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->e:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 333
    return-void
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/mainview/f;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->f()V

    .line 325
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0, p1, p2}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(II)V

    .line 311
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a()Lam/sunrise/android/calendar/ui/mainview/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 312
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getNonObscuredFirstPosition()I

    move-result v0

    .line 313
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a()Lam/sunrise/android/calendar/ui/mainview/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->a:Lam/sunrise/android/calendar/ui/mainview/h;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 317
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->a:Lam/sunrise/android/calendar/ui/mainview/h;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/mainview/h;->a(Ljava/util/Calendar;)V

    .line 320
    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 283
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/mainview/f;->m:Z

    .line 284
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->b:Lam/sunrise/android/calendar/ui/mainview/j;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/ae;->a(I)V

    .line 288
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setWeatherForecast([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->e()V

    .line 305
    return-void
.end method

.method public a(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;)V

    .line 338
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v2

    .line 109
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisibleDay()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 115
    :cond_1
    const-string v1, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p0, v3}, Lam/sunrise/android/calendar/ui/mainview/f;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public b(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->o:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->o:Ljava/util/Calendar;

    invoke-static {p1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->o:Ljava/util/Calendar;

    .line 143
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 144
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 147
    :cond_1
    return-void
.end method

.method public c(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/mainview/f;->e(Ljava/util/Calendar;)V

    .line 220
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;)V

    .line 221
    return-void
.end method

.method public d(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 385
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 386
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/birthdays/BirthdaysActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    const-string v2, "am.sunrise.android.calendar.extra.BIRTHDAYS_DATE"

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/mainview/f;->startActivity(Landroid/content/Intent;)V

    .line 390
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->m:Z

    .line 295
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ae;->a(I)V

    .line 296
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    new-instance v0, Lcom/google/android/gms/location/d;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/location/d;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->n:Lcom/google/android/gms/location/d;

    .line 204
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 209
    check-cast p1, Lam/sunrise/android/calendar/ui/mainview/h;

    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->a:Lam/sunrise/android/calendar/ui/mainview/h;

    .line 210
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 151
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 154
    if-eqz p1, :cond_0

    .line 155
    const-string v1, "saved_now"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->g:Ljava/util/Calendar;

    .line 165
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.SELECT_DATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.SELECT_DATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->h:Ljava/util/Calendar;

    .line 163
    :cond_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->g:Ljava/util/Calendar;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 177
    const v0, 0x7f030095

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->a:Lam/sunrise/android/calendar/ui/mainview/h;

    .line 216
    return-void
.end method

.method public onEventClick(Lam/sunrise/android/calendar/ui/mainview/k;)V
    .locals 5

    .prologue
    .line 342
    if-eqz p1, :cond_0

    .line 343
    iget-boolean v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->w:Z

    if-eqz v0, :cond_1

    .line 344
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    new-instance v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 347
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->a:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 348
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->l:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 349
    iget-boolean v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->d:Z

    iput-boolean v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 350
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 351
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 352
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 354
    new-instance v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/info/EventInfo;-><init>()V

    .line 355
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->l:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    .line 356
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->a:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    .line 357
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->b:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->d:Ljava/lang/String;

    .line 358
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->c:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->e:Ljava/lang/String;

    .line 359
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->m:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    .line 360
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->n:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    .line 361
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->s:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    .line 362
    iget-boolean v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->o:Z

    iput-boolean v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    .line 363
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->p:Ljava/util/Calendar;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    .line 364
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->q:Ljava/util/Calendar;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    .line 365
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->r:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    .line 366
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->u:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    .line 367
    iget-object v2, p1, Lam/sunrise/android/calendar/ui/mainview/k;->t:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    .line 368
    const-string v2, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/f;->startActivity(Landroid/content/Intent;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->x:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 372
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v1

    .line 373
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-class v3, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->x:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 375
    const/16 v3, 0xb

    const/16 v4, 0xd

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 376
    const-string v3, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/ui/mainview/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 276
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->i:Lam/sunrise/android/calendar/ui/mainview/i;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->g:Ljava/util/Calendar;

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 254
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 256
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 257
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/mainview/f;->g:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    const-wide/16 v3, 0xf

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->g:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    :cond_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->c()V

    .line 261
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->f()V

    .line 267
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->i:Lam/sunrise/android/calendar/ui/mainview/i;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->i:Lam/sunrise/android/calendar/ui/mainview/i;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->i:Lam/sunrise/android/calendar/ui/mainview/i;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 171
    const-string v1, "saved_now"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/f;->g:Ljava/util/Calendar;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 225
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStart()V

    .line 226
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V

    .line 228
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->h:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->h:Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/f;->c(Ljava/util/Calendar;)V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->h:Ljava/util/Calendar;

    .line 242
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->n:Lcom/google/android/gms/location/d;

    invoke-virtual {v0}, Lcom/google/android/gms/location/d;->b()V

    .line 243
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/mainview/f;->c()V

    .line 234
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->f()V

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->d()Ljava/util/Calendar;

    move-result-object v0

    .line 237
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/f;->e(Ljava/util/Calendar;)V

    .line 238
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->e()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->n:Lcom/google/android/gms/location/d;

    invoke-virtual {v0}, Lcom/google/android/gms/location/d;->c()V

    .line 248
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/c;->b()V

    .line 249
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onStop()V

    .line 250
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 182
    const v0, 0x7f0b0142

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/MainView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->d:Lam/sunrise/android/calendar/ui/mainview/MainView;

    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->d:Lam/sunrise/android/calendar/ui/mainview/MainView;

    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->e:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    .line 185
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->e:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->setOnDayClickListener(Lam/sunrise/android/calendar/ui/widgets/calendar/i;)V

    .line 187
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->d:Lam/sunrise/android/calendar/ui/mainview/MainView;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    .line 188
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setOnEventClickListener(Lam/sunrise/android/calendar/ui/widgets/agenda/c;)V

    .line 190
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->d:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->setListener(Lam/sunrise/android/calendar/ui/mainview/e;)V

    .line 192
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->k:I

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->j:I

    .line 194
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->e:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMinDate()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/mainview/f;->e:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->getMaxDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 195
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->f:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a()Lam/sunrise/android/calendar/ui/mainview/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setCursor(Lam/sunrise/android/calendar/ui/mainview/a/j;)V

    .line 197
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/f;->l:Lam/sunrise/android/calendar/ui/mainview/a/c;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a(Landroid/os/Bundle;)V

    .line 198
    return-void
.end method
