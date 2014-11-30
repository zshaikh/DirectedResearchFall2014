.class public Lam/sunrise/android/calendar/ui/event/details/g;
.super Landroid/os/AsyncTask;
.source "DeleteEventTask.java"


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
            "Lam/sunrise/android/calendar/ui/event/details/v;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Calendar;

.field private j:Z


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/event/details/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Calendar;Z)V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->a:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->b:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->c:Landroid/content/ContentResolver;

    .line 60
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/details/g;->d:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/details/g;->e:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/event/details/g;->f:Ljava/lang/String;

    .line 63
    iput-boolean p5, p0, Lam/sunrise/android/calendar/ui/event/details/g;->g:Z

    .line 64
    iput-object p6, p0, Lam/sunrise/android/calendar/ui/event/details/g;->h:Ljava/lang/String;

    .line 65
    iput-object p7, p0, Lam/sunrise/android/calendar/ui/event/details/g;->i:Ljava/util/Calendar;

    .line 66
    iput-boolean p8, p0, Lam/sunrise/android/calendar/ui/event/details/g;->j:Z

    .line 67
    return-void
.end method

.method public static a(Lam/sunrise/android/calendar/ui/event/details/v;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;Ljava/util/Calendar;Z)Lam/sunrise/android/calendar/ui/event/details/g;
    .locals 9

    .prologue
    .line 48
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/g;

    iget-object v3, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v4, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    iget-boolean v5, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    iget-object v6, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->g:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Lam/sunrise/android/calendar/ui/event/details/g;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Calendar;Z)V

    return-object v0
.end method

.method public static a(Lam/sunrise/android/calendar/ui/event/details/v;Ljava/lang/String;Lam/sunrise/android/calendar/ui/event/info/EventInfo;Z)Lam/sunrise/android/calendar/ui/event/details/g;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 40
    new-instance v0, Lam/sunrise/android/calendar/ui/event/details/g;

    iget-object v3, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->b:Ljava/lang/String;

    iget-object v4, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->a:Ljava/lang/String;

    iget-boolean v5, p2, Lam/sunrise/android/calendar/ui/event/info/EventInfo;->p:Z

    move-object v1, p0

    move-object v2, p1

    move-object v7, v6

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lam/sunrise/android/calendar/ui/event/details/g;-><init>(Lam/sunrise/android/calendar/ui/event/details/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Calendar;Z)V

    return-object v0
.end method

.method private a()Lam/sunrise/android/calendar/ui/event/details/v;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/details/v;

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/g;->c:Landroid/content/ContentResolver;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->e:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/g;->f:Ljava/lang/String;

    invoke-static {v0, v4}, Lam/sunrise/android/calendar/provider/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->j:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 92
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 81
    :cond_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 82
    const-string v0, "event_recurrence_exceptions"

    iget-boolean v3, p0, Lam/sunrise/android/calendar/ui/event/details/g;->g:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/g;->i:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    div-long/2addr v3, v6

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/g;->c:Landroid/content/ContentResolver;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->e:Ljava/lang/String;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/details/g;->h:Ljava/lang/String;

    invoke-static {v0, v4}, Lam/sunrise/android/calendar/provider/i;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/details/g;->j:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-static {v4, v0}, Lam/sunrise/android/calendar/provider/l;->a(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 82
    :cond_3
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/g;->i:Ljava/util/Calendar;

    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    div-long/2addr v3, v6

    goto :goto_2

    :cond_4
    move v0, v2

    .line 86
    goto :goto_3

    .line 92
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/g;->a()Lam/sunrise/android/calendar/ui/event/details/v;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;)V

    .line 118
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->finish()V

    .line 124
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/g;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/event/details/g;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    .line 106
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/details/g;->a()Lam/sunrise/android/calendar/ui/event/details/v;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    const v2, 0x7f0f00a3

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/event/details/v;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/b/m;->a(Landroid/support/v4/app/i;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method
