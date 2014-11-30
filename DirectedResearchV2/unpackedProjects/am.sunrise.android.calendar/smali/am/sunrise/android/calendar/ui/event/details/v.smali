.class public Lam/sunrise/android/calendar/ui/event/details/v;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "EventDetailsFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/event/a/h;
.implements Lam/sunrise/android/calendar/ui/event/details/cards/e;
.implements Lam/sunrise/android/calendar/ui/event/details/cards/g;
.implements Lam/sunrise/android/calendar/ui/event/details/cards/j;
.implements Lam/sunrise/android/calendar/ui/event/details/cards/l;
.implements Lam/sunrise/android/calendar/ui/event/details/f;
.implements Lam/sunrise/android/calendar/ui/event/r;
.implements Lam/sunrise/android/calendar/ui/widgets/ag;
.implements Lam/sunrise/android/calendar/ui/widgets/ah;


# instance fields
.field a:Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

.field private b:Lam/sunrise/android/calendar/ui/event/details/aa;

.field private c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

.field private m:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

.field private n:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

.field private o:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Lcom/actionbarsherlock/view/MenuItem;

.field private s:Lcom/actionbarsherlock/view/MenuItem;

.field private t:Z

.field private u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

.field private v:Lam/sunrise/android/calendar/ui/event/details/z;

.field private w:I

.field private x:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 75
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/details/aa;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;Lam/sunrise/android/calendar/ui/event/details/w;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->b:Lam/sunrise/android/calendar/ui/event/details/aa;

    .line 85
    iput-boolean v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->f:Z

    .line 87
    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->h:I

    .line 88
    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->i:I

    .line 89
    iput v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->j:I

    .line 90
    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->k:I

    .line 552
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->w:I

    .line 110
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/v;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->d:I

    return p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/v;Lam/sunrise/android/calendar/ui/event/details/z;)Lam/sunrise/android/calendar/ui/event/details/z;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->v:Lam/sunrise/android/calendar/ui/event/details/z;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/v;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->j()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/v;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/v;->a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    return-void
.end method

.method private a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 315
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 317
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-nez v0, :cond_0

    .line 363
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->invalidateOptionsMenu()V

    .line 326
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 329
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->l:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->setVisibility(I)V

    .line 330
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->l:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    :goto_1
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v4, v4, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->a(Lam/sunrise/android/calendar/ui/event/info/PersonInfo;Ljava/lang/String;)V

    .line 336
    :goto_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->m:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->m:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;)V

    .line 339
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 340
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->n:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->setVisibility(I)V

    .line 341
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->n:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->a(Lam/sunrise/android/calendar/ui/event/info/LocationInfo;Landroid/support/v4/app/o;)V

    .line 342
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->q:Landroid/view/View;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->n:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :goto_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 349
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    const-string v3, "facebook"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->o:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->o:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget v4, v4, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->y:I

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->a([Lam/sunrise/android/calendar/ui/event/info/PersonInfo;I)V

    .line 359
    :goto_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->p:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 330
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    goto/16 :goto_1

    .line 333
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->l:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->setVisibility(I)V

    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 342
    goto :goto_3

    .line 344
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->n:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->setVisibility(I)V

    goto :goto_4

    .line 355
    :cond_8
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->o:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->setVisibility(I)V

    goto :goto_5
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/details/v;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->f:Z

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/details/v;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->e:I

    return p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/details/v;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->k()V

    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/details/v;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->t:Z

    return p1
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/details/v;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->i:I

    return p1
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/details/v;)Landroid/view/View;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/event/details/v;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->f:Z

    return v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/event/details/v;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->d:I

    return v0
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/event/details/v;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->e:I

    return v0
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/event/details/v;)Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    return-object v0
.end method

.method static synthetic h(Lam/sunrise/android/calendar/ui/event/details/v;)Lam/sunrise/android/calendar/ui/event/info/EventInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->v:Lam/sunrise/android/calendar/ui/event/details/z;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/z;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/details/z;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->v:Lam/sunrise/android/calendar/ui/event/details/z;

    .line 502
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->v:Lam/sunrise/android/calendar/ui/event/details/z;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/details/z;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 530
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 532
    if-eqz v0, :cond_0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "geo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 534
    iget-wide v2, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 535
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-wide v2, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 540
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 546
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 547
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    .line 550
    :cond_0
    return-void

    .line 543
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/event/details/a;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;ZZ)V

    .line 368
    return-void
.end method

.method public a(IF)V
    .locals 4

    .prologue
    .line 570
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->a:Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->a:Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    :goto_0
    return-void

    .line 574
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->d:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->e:I

    sub-int v1, v0, v1

    .line 575
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->d:I

    .line 577
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->w:I

    if-eq v0, p1, :cond_1

    .line 578
    iput p1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->w:I

    .line 579
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->x:F

    .line 582
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->x:F

    add-float/2addr v0, p2

    .line 583
    int-to-float v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_3

    .line 584
    int-to-float v0, v1

    .line 589
    :cond_2
    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 585
    :cond_3
    int-to-float v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 586
    int-to-float v0, v2

    goto :goto_1
.end method

.method public a(Lam/sunrise/android/calendar/ui/event/info/PersonInfo;)V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 379
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 381
    const-string v1, "android.intent.extra.SUBJECT"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fb://profile/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.facebook.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 283
    new-instance v0, Lam/sunrise/android/calendar/ui/event/a/k;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v4, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/event/a/k;-><init>(Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/a/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 286
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-static {p0, v0, v1, p1}, Lam/sunrise/android/calendar/ui/event/details/g;->a(Lam/sunrise/android/calendar/ui/event/details/v;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;Z)Lam/sunrise/android/calendar/ui/event/details/g;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/details/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 294
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 372
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/event/details/a;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;ZZ)V

    .line 373
    return-void
.end method

.method public b(Z)V
    .locals 3

    .prologue
    .line 298
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->d:Ljava/util/Calendar;

    invoke-static {p0, v0, v1, v2, p1}, Lam/sunrise/android/calendar/ui/event/details/g;->a(Lam/sunrise/android/calendar/ui/event/details/v;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;Ljava/util/Calendar;Z)Lam/sunrise/android/calendar/ui/event/details/g;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/details/g;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 302
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/event/details/EventDetailsAttendeesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    const-string v1, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v1, "am.sunrise.android.calendar.extra.EVENT_ID"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v1, "am.sunrise.android.calendar.extra.EVENT_TITLE"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v1, "am.sunrise.android.calendar.extra.ATTENDEES_COUNT"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v1, "am.sunrise.android.calendar.extra.IS_FACEBOOK_EVENT"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    const-string v3, "facebook"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    .line 406
    return-void
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 412
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->x:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iget-object v5, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    .line 423
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v6, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lam/sunrise/android/calendar/ui/event/a/a;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->w:Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    iget-object v5, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v5, v7

    move-object v4, v7

    .line 420
    goto :goto_0
.end method

.method public e()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 431
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 433
    iget-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "geo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    iget-wide v2, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 436
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    iget-wide v2, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 441
    iget-object v2, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 447
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 448
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    .line 454
    :goto_1
    return-void

    .line 444
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 450
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/maps/MapsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    const-string v2, "am.sunrise.android.calendar.extra.LOCATION_INFO"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v1}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public f()V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/event/details/EventDetailsDescriptionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 459
    const-string v1, "am.sunrise.android.calendar.extra.EVENT_TITLE"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string v1, "am.sunrise.android.calendar.extras.EVENT_DESCRIPTION"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivity(Landroid/content/Intent;)V

    .line 462
    return-void
.end method

.method public g()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 466
    iget v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->d:I

    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->e:I

    sub-int/2addr v0, v1

    .line 467
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->d:I

    .line 468
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->a:Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->getScrollY()I

    move-result v3

    .line 470
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->k:I

    if-ge v3, v2, :cond_1

    .line 471
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->j:I

    if-eqz v2, :cond_0

    .line 472
    const/4 v2, 0x0

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->j:I

    .line 473
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->k:I

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->h:I

    .line 474
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->i:I

    .line 484
    :cond_0
    :goto_0
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->i:I

    iget v4, p0, Lam/sunrise/android/calendar/ui/event/details/v;->h:I

    sub-int v4, v3, v4

    add-int/2addr v2, v4

    .line 485
    if-ge v2, v0, :cond_2

    .line 491
    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 492
    iput v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->k:I

    .line 493
    return-void

    .line 476
    :cond_1
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->k:I

    if-le v3, v2, :cond_0

    .line 477
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->j:I

    if-eq v2, v4, :cond_0

    .line 478
    iput v4, p0, Lam/sunrise/android/calendar/ui/event/details/v;->j:I

    .line 479
    iget v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->k:I

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->h:I

    .line 480
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->i:I

    goto :goto_0

    .line 487
    :cond_2
    if-le v2, v1, :cond_3

    move v0, v1

    .line 488
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public h()V
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->x:F

    .line 558
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 563
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 203
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->b:Lam/sunrise/android/calendar/ui/event/details/aa;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 204
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 251
    packed-switch p1, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 266
    return-void

    .line 253
    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 254
    const-string v0, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    .line 255
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->b:Lam/sunrise/android/calendar/ui/event/details/aa;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x7e8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/ui/event/details/v;->setHasOptionsMenu(Z)V

    .line 117
    if-eqz p1, :cond_1

    .line 118
    const-string v0, "saved_occurrence_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    .line 121
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iput-boolean v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->t:Z

    .line 123
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.EVENT_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 208
    const v0, 0x7f110005

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 209
    const v0, 0x7f0b0179

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->r:Lcom/actionbarsherlock/view/MenuItem;

    .line 210
    const v0, 0x7f0b017a

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->s:Lcom/actionbarsherlock/view/MenuItem;

    .line 211
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->r:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->q:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->s:Lcom/actionbarsherlock/view/MenuItem;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->q:Z

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 215
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 136
    const v0, 0x7f03005b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEventMainThread(Lam/sunrise/android/calendar/sync/events/EventUpdated;)V
    .locals 4

    .prologue
    .line 305
    if-eqz p1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getCalendarId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getOldEventId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-virtual {p1}, Lam/sunrise/android/calendar/sync/events/EventUpdated;->getNewEventId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;->b:Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->b:Lam/sunrise/android/calendar/ui/event/details/aa;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 312
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 219
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 246
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 221
    :sswitch_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->finish()V

    goto :goto_0

    .line 225
    :sswitch_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->t:Z

    if-nez v1, :cond_0

    .line 226
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lam/sunrise/android/calendar/ui/event/edit/EditEventActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    const-string v2, "am.sunrise.android.calendar.extra.EVENT_INFO"

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const-string v2, "am.sunrise.android.calendar.extra.OCCURRENCE_INFO"

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    const/16 v2, 0x7e8

    invoke-virtual {p0, v1, v2}, Lam/sunrise/android/calendar/ui/event/details/v;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 234
    :sswitch_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->t:Z

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->u:Z

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3}, Lam/sunrise/android/calendar/ui/event/details/a;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;ZZ)V

    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-static {v1, p0, v2}, Lam/sunrise/android/calendar/ui/event/q;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    goto :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b0179 -> :sswitch_1
        0x7f0b017a -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 277
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 278
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, La/a/a/c;->a(Ljava/lang/Object;[Ljava/lang/Class;)V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 270
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 271
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v1, v2}, La/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 272
    invoke-static {}, La/a/a/c;->a()La/a/a/c;

    move-result-object v0

    const-class v1, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    invoke-virtual {v0, v1}, La/a/a/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/sync/events/EventUpdated;

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->onEventMainThread(Lam/sunrise/android/calendar/sync/events/EventUpdated;)V

    .line 273
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 131
    const-string v0, "saved_occurrence_info"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/v;->c:Lam/sunrise/android/calendar/ui/event/info/OccurrenceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 132
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 141
    const v0, 0x7f0b00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 142
    const v0, 0x7f0b00dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->a:Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

    .line 143
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->a:Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->setOnDraggingChangeListener(Lam/sunrise/android/calendar/ui/widgets/ag;)V

    .line 144
    const v0, 0x7f0b00af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->l:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->l:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardRSVP;->setOnRSVPListener(Lam/sunrise/android/calendar/ui/event/details/cards/l;)V

    .line 146
    const v0, 0x7f0b009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->m:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    .line 147
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->m:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardDateTimeInfo;->setOnEventDescriptionListener(Lam/sunrise/android/calendar/ui/event/details/cards/g;)V

    .line 148
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->n:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    .line 149
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->n:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardLocation;->setOnLocationListener(Lam/sunrise/android/calendar/ui/event/details/cards/j;)V

    .line 150
    const v0, 0x7f0b009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->o:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    .line 151
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->o:Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/event/details/cards/EventDetailsCardAttendees;->setOnAttendeeListener(Lam/sunrise/android/calendar/ui/event/details/cards/e;)V

    .line 152
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    const v2, 0x7f0b00df

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->p:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->p:Landroid/view/View;

    const v2, 0x7f0b00e0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->p:Landroid/view/View;

    new-instance v2, Lam/sunrise/android/calendar/ui/event/details/w;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/event/details/w;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->g:Landroid/view/View;

    const v2, 0x7f0b005c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->q:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->q:Landroid/view/View;

    const v2, 0x7f0b005d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 174
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->q:Landroid/view/View;

    new-instance v2, Lam/sunrise/android/calendar/ui/event/details/x;

    invoke-direct {v2, p0}, Lam/sunrise/android/calendar/ui/event/details/x;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->a:Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/ObservableScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lam/sunrise/android/calendar/ui/event/details/y;

    invoke-direct {v2, p0, v1}, Lam/sunrise/android/calendar/ui/event/details/y;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 196
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/v;->u:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->a(Lam/sunrise/android/calendar/ui/event/info/EventInfo;)V

    .line 197
    return-void
.end method
