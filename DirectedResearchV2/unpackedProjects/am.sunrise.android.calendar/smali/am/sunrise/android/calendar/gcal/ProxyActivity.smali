.class public Lam/sunrise/android/calendar/gcal/ProxyActivity;
.super Landroid/support/v4/app/i;
.source "ProxyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->c(Landroid/content/Intent;)J

    move-result-wide v1

    .line 66
    const-string v3, "endTime"

    const-wide/16 v4, -0x1

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 67
    const-string v5, "allDay"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 69
    cmp-long v6, v1, v8

    if-lez v6, :cond_1

    .line 70
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v1

    .line 74
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lam/sunrise/android/calendar/ui/event/add/AddEventActivity;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    cmp-long v6, v3, v8

    if-gtz v6, :cond_2

    .line 77
    const-string v3, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :goto_0
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "am.sunrise.android.calendar.extra.TITLE"

    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    :cond_0
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    const/4 v0, 0x1

    .line 103
    :cond_1
    return v0

    .line 80
    :cond_2
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 81
    invoke-virtual {v6, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    const-string v3, "am.sunrise.android.calendar.extra.START_DATE"

    if-eqz v5, :cond_3

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v3, "am.sunrise.android.calendar.extra.END_DATE"

    if-eqz v5, :cond_4

    invoke-static {v1, v6}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v0, "am.sunrise.android.calendar.extra.IS_ALL_DAY"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 83
    :cond_3
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_4
    invoke-static {v1, v6}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private b(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->c(Landroid/content/Intent;)J

    move-result-wide v0

    .line 109
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 112
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 114
    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 115
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    .line 116
    const-string v1, "am.sunrise.android.calendar.extra.SELECT_DATE"

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_0
    invoke-virtual {p0, v2}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method private c(Landroid/content/Intent;)J
    .locals 8

    .prologue
    const-wide/16 v1, -0x1

    .line 126
    const-string v0, "beginTime"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 127
    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 129
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 140
    :goto_0
    return-wide v0

    .line 134
    :catch_0
    move-exception v0

    move-wide v0, v1

    .line 135
    goto :goto_0

    :cond_0
    move-wide v0, v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->finish()V

    .line 62
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 45
    const/4 v0, 0x0

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 49
    const-string v3, "android.intent.action.INSERT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    .line 57
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->finish()V

    goto :goto_0

    .line 51
    :cond_3
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/gcal/ProxyActivity;->b(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_1
.end method
