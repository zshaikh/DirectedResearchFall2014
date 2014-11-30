.class public Lam/sunrise/android/calendar/ui/inbox/h;
.super Lam/sunrise/android/calendar/ui/c;
.source "InboxFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/event/a/h;
.implements Lam/sunrise/android/calendar/ui/inbox/d;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/content/SyncStatusObserver;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private b:Lam/sunrise/android/calendar/ui/inbox/j;

.field private c:Lcom/actionbarsherlock/view/MenuItem;

.field private d:Landroid/widget/ListView;

.field private e:Lam/sunrise/android/calendar/ui/inbox/a;

.field private f:Landroid/view/View;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/c;-><init>()V

    .line 66
    new-instance v0, Lam/sunrise/android/calendar/ui/inbox/l;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/inbox/l;-><init>(Lam/sunrise/android/calendar/ui/inbox/h;Lam/sunrise/android/calendar/ui/inbox/i;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->a:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lam/sunrise/android/calendar/ui/inbox/j;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/inbox/j;-><init>(Lam/sunrise/android/calendar/ui/inbox/h;Lam/sunrise/android/calendar/ui/inbox/i;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->b:Lam/sunrise/android/calendar/ui/inbox/j;

    .line 363
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/inbox/h;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->f()V

    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/inbox/h;)Lam/sunrise/android/calendar/ui/inbox/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->e:Lam/sunrise/android/calendar/ui/inbox/a;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/inbox/h;)Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/inbox/h;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/content/Context;)V

    .line 174
    :cond_0
    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    .line 177
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f017b

    :goto_0
    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 179
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->d(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v0

    .line 180
    if-nez v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 194
    :goto_1
    return-void

    .line 177
    :cond_0
    const v0, 0x7f0f00d9

    goto :goto_0

    .line 185
    :cond_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 187
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f00da

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(I)V

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Lam/sunrise/android/calendar/b/d;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/inbox/h;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->e()V

    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/h;->a(Z)V

    .line 296
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->e()V

    .line 297
    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/inbox/e;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 237
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/inbox/e;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/inbox/e;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v5, v7

    move-object v4, v7

    .line 246
    :goto_0
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/inbox/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->g:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/inbox/e;->g:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->h:Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/inbox/e;->i:Ljava/lang/String;

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/inbox/e;->h:Ljava/lang/String;

    iget-object v6, p1, Lam/sunrise/android/calendar/ui/inbox/e;->n:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lam/sunrise/android/calendar/ui/event/a/a;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 242
    :cond_0
    iget-object v4, p1, Lam/sunrise/android/calendar/ui/inbox/e;->t:Ljava/lang/String;

    .line 243
    iget-object v5, p1, Lam/sunrise/android/calendar/ui/inbox/e;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 257
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/k;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/h;->g:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/inbox/h;->h:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/event/a/k;-><init>(Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/a/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    iput-object v7, p0, Lam/sunrise/android/calendar/ui/inbox/h;->g:Ljava/lang/String;

    .line 262
    iput-object v7, p0, Lam/sunrise/android/calendar/ui/inbox/h;->h:Ljava/lang/String;

    .line 264
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 8

    .prologue
    const/high16 v4, 0x3f000000

    const/4 v3, 0x1

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->c:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 214
    if-eqz p1, :cond_1

    .line 215
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->c:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f03001e

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(I)Lcom/actionbarsherlock/view/MenuItem;

    .line 216
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->c:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 218
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 221
    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 222
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 223
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 224
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 226
    invoke-virtual {v7, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->c:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setActionView(Landroid/view/View;)Lcom/actionbarsherlock/view/MenuItem;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 116
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->e()V

    .line 118
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/inbox/h;->b:Lam/sunrise/android/calendar/ui/inbox/j;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 119
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/content/Context;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/h;->setHasOptionsMenu(Z)V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    const-string v0, "saved_rsvp_calendar_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->g:Ljava/lang/String;

    .line 89
    const-string v0, "saved_rsvp_event_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->h:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f110008

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 127
    const v0, 0x7f0b0176

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->c:Lcom/actionbarsherlock/view/MenuItem;

    .line 128
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/h;->a(Z)V

    .line 129
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f03005d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->e:Lam/sunrise/android/calendar/ui/inbox/a;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/inbox/a;->a(Landroid/view/View;)Lam/sunrise/android/calendar/ui/inbox/c;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    new-instance v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-direct {v1}, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;-><init>()V

    .line 271
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/inbox/c;->a:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    .line 272
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/inbox/c;->g:Ljava/lang/String;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 273
    iget-boolean v2, v0, Lam/sunrise/android/calendar/ui/inbox/c;->m:Z

    iput-boolean v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->c:Z

    .line 274
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/inbox/c;->j:Ljava/util/Calendar;

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    .line 275
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/inbox/c;->k:Ljava/util/Calendar;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->e:Ljava/util/Calendar;

    .line 276
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/event/details/EventDetailsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/inbox/h;->startActivity(Landroid/content/Intent;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 133
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->d()V

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0176
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onPause()V

    .line 155
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->e:Lam/sunrise/android/calendar/ui/inbox/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/inbox/a;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->i:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0, p0}, Lam/sunrise/android/calendar/sync/s;->b(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->j:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/h;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 146
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onResume()V

    .line 147
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/h;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0, p0}, Lam/sunrise/android/calendar/sync/s;->a(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 149
    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->j:Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    const-string v0, "saved_rsvp_calendar_id"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/h;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v0, "saved_rsvp_event_id"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/h;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 198
    invoke-static {p2}, Lam/sunrise/android/calendar/sync/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/sync/s;->d(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v0

    .line 200
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0f00da

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(I)V

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Lam/sunrise/android/calendar/b/d;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStatusChanged(I)V
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/inbox/i;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/inbox/i;-><init>(Lam/sunrise/android/calendar/ui/inbox/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 292
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 163
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/c;->onStop()V

    .line 164
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lam/sunrise/android/calendar/ui/inbox/n;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/inbox/h;->i:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/ui/inbox/n;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/inbox/n;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->d:Landroid/widget/ListView;

    .line 108
    new-instance v0, Lam/sunrise/android/calendar/ui/inbox/a;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/inbox/h;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/ui/inbox/a;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/inbox/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->e:Lam/sunrise/android/calendar/ui/inbox/a;

    .line 109
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/inbox/h;->e:Lam/sunrise/android/calendar/ui/inbox/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->d:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 111
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/inbox/h;->f:Landroid/view/View;

    .line 112
    return-void
.end method
