.class public Lam/sunrise/android/calendar/ui/event/edit/aa;
.super Landroid/os/AsyncTask;
.source "UpdateEventTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/event/edit/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

.field private f:Z

.field private g:Ljava/util/Calendar;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;ZLjava/util/Calendar;ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->a:Ljava/lang/ref/WeakReference;

    .line 73
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->b:Landroid/content/Context;

    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->c:Landroid/content/ContentResolver;

    .line 75
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->d:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    .line 77
    iput-boolean p4, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->f:Z

    .line 78
    iput-object p5, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->g:Ljava/util/Calendar;

    .line 79
    iput-boolean p6, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->h:Z

    .line 80
    iput-object p7, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->i:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;Z)Lam/sunrise/android/calendar/ui/event/edit/aa;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 57
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/aa;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lam/sunrise/android/calendar/ui/event/edit/aa;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;ZLjava/util/Calendar;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static a(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;ZLjava/util/Calendar;ZLjava/lang/String;)Lam/sunrise/android/calendar/ui/event/edit/aa;
    .locals 8

    .prologue
    .line 65
    new-instance v0, Lam/sunrise/android/calendar/ui/event/edit/aa;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lam/sunrise/android/calendar/ui/event/edit/aa;-><init>(Lam/sunrise/android/calendar/ui/event/edit/c;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;ZLjava/util/Calendar;ZLjava/lang/String;)V

    return-object v0
.end method

.method private a()Lam/sunrise/android/calendar/ui/event/edit/c;
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/edit/c;

    .line 259
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12

    .prologue
    .line 85
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    .line 86
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->B:[J

    array-length v4, v3

    const/4 v0, 0x0

    move v11, v0

    move v0, v1

    move v1, v11

    :goto_0
    if-ge v1, v4, :cond_1

    aget-wide v5, v3, v1

    .line 93
    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 98
    :goto_1
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const-string v7, "|"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 109
    :goto_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->g:Ljava/util/Calendar;

    if-eqz v0, :cond_5

    .line 110
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 112
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->d:Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/provider/g;->e(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->f:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->g:Ljava/lang/String;

    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->h:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->g:Ljava/util/Calendar;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v9, 0x3e8

    div-long/2addr v3, v9

    :goto_4
    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->i:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->s:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->t:Ljava/lang/String;

    move-object v1, v7

    .line 135
    :goto_5
    const-string v2, "event_id"

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 136
    const-string v2, "event_calendar_id"

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 137
    const-string v2, "event_source_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 138
    const-string v1, "event_type"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 139
    const-string v1, "event_title"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 140
    const-string v1, "event_description"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 142
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    if-eqz v1, :cond_7

    .line 143
    const-string v1, "event_start_date"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 145
    const-string v1, "event_end_date"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 158
    :goto_6
    const-string v1, "event_timezone"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 159
    const-string v1, "event_is_all_day"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-boolean v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 160
    const-string v1, "event_is_editable"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 161
    const-string v1, "event_rrule"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 162
    const-string v1, "event_exdate"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 163
    const-string v1, "event_recurrence_exceptions"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 165
    const-string v1, "event_icon_overlay"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 166
    const-string v1, "event_icon_base_color"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 167
    const-string v1, "event_user_rsvp_status"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 168
    const-string v1, "event_reminders"

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 170
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 175
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 181
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/provider/i;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->z:[Lam/sunrise/android/calendar/ui/event/info/PersonInfo;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v4, :cond_9

    aget-object v0, v3, v1

    .line 184
    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_facebook_id"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_thumbnail_url"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->h:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_cover_url"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->i:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_name"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->c:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_firstname"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_lastname"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_email_1"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_email_2"

    iget-object v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_is_self"

    iget-boolean v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->b:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_calendar_id"

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v9, v9, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_event_id"

    iget-object v9, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v9, v9, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "person_rsvp_status"

    iget-boolean v9, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->b:Z

    if-eqz v9, :cond_8

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/PersonInfo;->j:Ljava/lang/String;

    :goto_8
    invoke-virtual {v5, v6, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 102
    :cond_2
    const/4 v0, 0x0

    move-object v6, v0

    goto/16 :goto_2

    .line 112
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_4
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->g:Ljava/util/Calendar;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v9, 0x3e8

    div-long/2addr v3, v9

    goto/16 :goto_4

    .line 127
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v7, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->g:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->d:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->f:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_9
    invoke-static {v2, v0}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    goto/16 :goto_5

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    .line 148
    :cond_7
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->m:Ljava/util/Calendar;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->n:Ljava/util/Calendar;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v2

    .line 152
    const-string v3, "event_start_date"

    invoke-static {v1}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v9, 0x3e8

    div-long/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 154
    const-string v1, "event_end_date"

    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_6

    .line 184
    :cond_8
    const-string v0, "notReplied"

    goto/16 :goto_8

    .line 203
    :cond_9
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->d:Ljava/lang/String;

    invoke-static {v0, v7}, Lam/sunrise/android/calendar/provider/i;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 206
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v1, :cond_a

    .line 212
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_name"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_city"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_street"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_state"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_country"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_latitude"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_longitude"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_name"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_nelat"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->i:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_nelng"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->j:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_swlat"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->k:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "location_viewport_swlng"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->A:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->l:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_a
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->c:Landroid/content/ContentResolver;

    const-string v1, "am.sunrise.android.calendar"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 245
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->e:Lam/sunrise/android/calendar/ui/event/info/EventInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->j:Ljava/lang/String;

    .line 246
    iput-object v7, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->k:Ljava/lang/String;

    .line 248
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 254
    :goto_a
    return-object v0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v1, "UpdateEventTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to apply batch. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :goto_b
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_a

    .line 251
    :catch_1
    move-exception v0

    .line 252
    const-string v1, "UpdateEventTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to apply batch. Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/aa;->a()Lam/sunrise/android/calendar/ui/event/edit/c;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/edit/ab;

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->j:Ljava/lang/String;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/aa;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/edit/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/edit/ab;->h()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/edit/aa;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/edit/aa;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/edit/aa;->a()Lam/sunrise/android/calendar/ui/event/edit/c;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_0

    instance-of v1, v0, Lam/sunrise/android/calendar/ui/event/edit/ab;

    if-eqz v1, :cond_0

    .line 272
    invoke-interface {v0}, Lam/sunrise/android/calendar/ui/event/edit/ab;->g()V

    .line 274
    :cond_0
    return-void
.end method
