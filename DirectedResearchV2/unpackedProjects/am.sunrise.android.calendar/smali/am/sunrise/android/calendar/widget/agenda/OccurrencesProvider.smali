.class public Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;
.super Landroid/content/BroadcastReceiver;
.source "OccurrencesProvider.java"

# interfaces
.implements Lam/sunrise/android/calendar/widget/agenda/g;
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field private static final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static h:Ljava/lang/Object;

.field private static i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile k:I

.field private static l:J


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Lam/sunrise/android/calendar/widget/agenda/f;

.field private m:I

.field private final n:Landroid/os/Handler;

.field private final o:Ljava/util/concurrent/ExecutorService;

.field private p:Lam/sunrise/android/calendar/widget/agenda/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->h:Ljava/lang/Object;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->i:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->j:Ljava/util/ArrayList;

    .line 61
    sput v1, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->k:I

    .line 62
    const-wide/16 v0, -0x1

    sput-wide v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->l:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->m:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->n:Landroid/os/Handler;

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->o:Ljava/util/concurrent/ExecutorService;

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->m:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->n:Landroid/os/Handler;

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->o:Ljava/util/concurrent/ExecutorService;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    .line 80
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->b:Landroid/content/res/Resources;

    .line 82
    const-string v0, "appWidgetId"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->c:I

    .line 83
    const-string v0, "am.sunrise.android.calendar.extra.IS_LOCKSCREEN"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->d:Z

    .line 84
    const-string v0, "am.sunrise.android.calendar.extra.IS_EXPANDED"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->e:Z

    .line 86
    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->d:Z

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Lam/sunrise/android/calendar/widget/agenda/d;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    iget v2, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->c:I

    iget-boolean v3, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->e:Z

    invoke-direct {v0, v1, v2, v3}, Lam/sunrise/android/calendar/widget/agenda/d;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/widget/agenda/b;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    iget v2, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->c:I

    invoke-direct {v0, v1, v2}, Lam/sunrise/android/calendar/widget/agenda/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)Lam/sunrise/android/calendar/widget/agenda/f;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->f:Lam/sunrise/android/calendar/widget/agenda/f;

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lam/sunrise/android/calendar/widget/agenda/f;

    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lam/sunrise/android/calendar/widget/agenda/f;-><init>(Landroid/content/Context;Lam/sunrise/android/calendar/widget/agenda/g;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->f:Lam/sunrise/android/calendar/widget/agenda/f;

    .line 202
    sget-object v1, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    sget v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->k:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->k:I

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->m:I

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->f:Lam/sunrise/android/calendar/widget/agenda/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-void

    .line 204
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->b()V

    return-void
.end method

.method static synthetic c(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->n:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    sget-object v1, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :try_start_0
    iget v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->m:I

    sget v2, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->k:I

    if-eq v0, v2, :cond_0

    .line 270
    const-string v0, "OccurrencesProvider"

    const-string v2, "onOccurrencedLoaded: lastVersionRequest=%d versionRequest=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget v5, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    monitor-exit v1

    .line 300
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->d(Landroid/content/Context;)V

    .line 277
    sput-object p1, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->i:Ljava/util/ArrayList;

    .line 278
    sput-object p2, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->j:Ljava/util/ArrayList;

    .line 280
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 282
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sget-wide v4, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->l:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 283
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 284
    sget-wide v3, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->l:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 285
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    sput-wide v3, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->l:J

    .line 287
    invoke-static {v0, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->b(Landroid/content/Context;)V

    .line 292
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 294
    iget-object v2, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-static {v2}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->a(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 295
    const v3, 0x102000a

    invoke-virtual {v0, v2, v3}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V

    .line 299
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->d:Z

    if-eqz v0, :cond_1

    .line 119
    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->e:Z

    if-nez v0, :cond_1

    .line 120
    const/4 v0, 0x4

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 192
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/widget/agenda/m;->a()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    .line 129
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 130
    :cond_0
    const/4 v1, 0x0

    .line 177
    :cond_1
    :goto_0
    return-object v1

    .line 136
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_9

    .line 137
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 138
    iget v2, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->c:I

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    .line 139
    if-eqz v2, :cond_9

    .line 141
    const-string v0, "appWidgetMinWidth"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    if-lez v0, :cond_8

    .line 143
    int-to-float v0, v0

    iget-object v3, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->b:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 145
    :goto_1
    const-string v3, "appWidgetMinHeight"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 146
    if-lez v2, :cond_7

    .line 147
    int-to-float v1, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->b:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    move v6, v1

    move v5, v0

    .line 153
    :goto_2
    new-instance v1, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f03006e

    invoke-direct {v1, v0, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 154
    const v0, 0x7f0b010b

    invoke-virtual {v1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 156
    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->d:Z

    if-eqz v0, :cond_4

    sget-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->e:Z

    if-nez v0, :cond_4

    .line 159
    if-nez p1, :cond_1

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/m;->a(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/m;->b(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 166
    :cond_4
    sget-object v0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 167
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/m;->a(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 170
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/m;->b(Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 173
    :cond_6
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    sget-object v2, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->i:Ljava/util/ArrayList;

    sget-object v3, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->j:Ljava/util/ArrayList;

    move v4, p1

    invoke-virtual/range {v0 .. v6}, Lam/sunrise/android/calendar/widget/agenda/m;->a(Landroid/widget/RemoteViews;Ljava/util/ArrayList;Ljava/util/ArrayList;III)V

    goto/16 :goto_0

    :cond_7
    move v6, v1

    move v5, v0

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    move v6, v1

    move v5, v1

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->b()V

    .line 96
    return-void
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->p:Lam/sunrise/android/calendar/widget/agenda/m;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/widget/agenda/m;->b()V

    .line 101
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->f:Lam/sunrise/android/calendar/widget/agenda/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/a;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->f:Lam/sunrise/android/calendar/widget/agenda/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/widget/agenda/f;->cancel(Z)Z

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->f:Lam/sunrise/android/calendar/widget/agenda/f;

    .line 110
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->a:Landroid/content/Context;

    .line 219
    if-eqz p2, :cond_1

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "am.sunrise.android.calendar.action.UPDATE_WIDGET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lam/sunrise/android/calendar/widget/agenda/i;

    invoke-direct {v2, p0, v0}, Lam/sunrise/android/calendar/widget/agenda/i;-><init>(Lam/sunrise/android/calendar/widget/agenda/OccurrencesProvider;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 263
    :cond_1
    return-void
.end method
