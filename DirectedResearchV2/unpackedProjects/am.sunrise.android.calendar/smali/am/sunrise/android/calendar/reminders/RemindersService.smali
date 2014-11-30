.class public Lam/sunrise/android/calendar/reminders/RemindersService;
.super Landroid/app/IntentService;
.source "RemindersService.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/reminders/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 188
    const-string v0, "RemindersService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 228
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/authenticator/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->b()V

    .line 253
    :goto_0
    return-void

    .line 234
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "am.sunrise.android.calendar.action.REMINDER_SENTINEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    sget-object v1, Lam/sunrise/android/calendar/provider/m;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 237
    const/high16 v1, 0x20000000

    invoke-static {p0, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_1

    .line 240
    iget-object v2, p0, Lam/sunrise/android/calendar/reminders/RemindersService;->a:Lam/sunrise/android/calendar/reminders/a;

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 243
    :cond_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 244
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 245
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 246
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 250
    const/high16 v2, 0x8000000

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 252
    iget-object v2, p0, Lam/sunrise/android/calendar/reminders/RemindersService;->a:Lam/sunrise/android/calendar/reminders/a;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2, v5, v3, v4, v0}, Lam/sunrise/android/calendar/reminders/a;->a(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private a(Lam/sunrise/android/calendar/reminders/h;)V
    .locals 8

    .prologue
    .line 297
    iget-object v0, p1, Lam/sunrise/android/calendar/reminders/h;->i:[J

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lam/sunrise/android/calendar/reminders/h;->e:Z

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p1, Lam/sunrise/android/calendar/reminders/h;->i:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 300
    new-instance v1, Lc/a/a/b;

    iget-object v2, p1, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lc/a/a/b;-><init>(J)V

    .line 301
    iget-object v2, p1, Lam/sunrise/android/calendar/reminders/h;->i:[J

    aget-wide v2, v2, v0

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lc/a/a/b;->a(I)Lc/a/a/b;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lc/a/a/b;->b(I)Lc/a/a/b;

    move-result-object v1

    .line 305
    invoke-virtual {v1}, Lc/a/a/b;->e()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    iget-object v2, p1, Lam/sunrise/android/calendar/reminders/h;->i:[J

    aget-wide v2, v2, v0

    invoke-virtual {p0, p1, v2, v3, v1}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Lam/sunrise/android/calendar/reminders/h;JLc/a/a/b;)V

    .line 299
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 308
    :cond_0
    const-string v2, "RemindersService"

    const-string v3, "scheduleReminders: alarm for \'%s\' / %d min before [%s] is already too old {now=%s}"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lam/sunrise/android/calendar/reminders/h;->d:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lam/sunrise/android/calendar/reminders/h;->i:[J

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Lc/a/a/b;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x3

    invoke-static {}, Lc/a/a/b;->c_()Lc/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lc/a/a/b;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 314
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 68
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->r(Landroid/content/Context;)Lam/sunrise/android/calendar/d;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    sget-object v1, Lam/sunrise/android/calendar/d;->a:Lam/sunrise/android/calendar/d;

    if-ne v0, v1, :cond_1

    .line 70
    :cond_0
    invoke-static {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->b(Landroid/content/Context;)V

    .line 91
    :goto_0
    return-void

    .line 74
    :cond_1
    sget-object v1, Lam/sunrise/android/calendar/provider/m;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "reminderType"

    const-string v3, "alldays"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 79
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 81
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 82
    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 83
    const/16 v4, 0xb

    invoke-virtual {v0}, Lam/sunrise/android/calendar/d;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x6

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 89
    :cond_2
    const/4 v0, 0x2

    const-string v2, "am.sunrise.android.calendar.action.REMINDER_ALLDAYS"

    invoke-static {p0, v0, v2, v1, v3}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 171
    new-instance v0, Lam/sunrise/android/calendar/reminders/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/reminders/a;-><init>(Landroid/content/Context;)V

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    const/high16 v2, 0x20000000

    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 183
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;Ljava/util/Calendar;)V
    .locals 5

    .prologue
    .line 152
    new-instance v0, Lam/sunrise/android/calendar/reminders/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/reminders/a;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    const/high16 v2, 0x20000000

    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_0

    .line 160
    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 166
    :cond_0
    const/high16 v2, 0x8000000

    invoke-static {p0, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 167
    const/4 v2, 0x0

    invoke-virtual {p4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4, v1}, Lam/sunrise/android/calendar/reminders/a;->a(IJLandroid/app/PendingIntent;)V

    .line 168
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "am.sunrise.android.calendar.action.REMINDER_SENTINEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    sget-object v1, Lam/sunrise/android/calendar/provider/m;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 259
    const/4 v1, 0x1

    const/high16 v2, 0x20000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/RemindersService;->a:Lam/sunrise/android/calendar/reminders/a;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 264
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 94
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->r(Landroid/content/Context;)Lam/sunrise/android/calendar/d;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    sget-object v1, Lam/sunrise/android/calendar/d;->a:Lam/sunrise/android/calendar/d;

    if-eq v0, v1, :cond_0

    .line 96
    invoke-static {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Landroid/content/Context;)V

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/provider/m;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "reminderType"

    const-string v2, "alldays"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 105
    const/4 v1, 0x2

    const-string v2, "am.sunrise.android.calendar.action.REMINDER_ALLDAYS"

    invoke-static {p0, v1, v2, v0}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 267
    invoke-static {p0}, Lam/sunrise/android/calendar/reminders/g;->a(Landroid/content/Context;)Lam/sunrise/android/calendar/reminders/g;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_2

    .line 269
    const-string v1, "RemindersService"

    const-string v2, "scheduleReminders: %d potential reminders to schedule"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/reminders/g;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/b/i;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    :cond_0
    invoke-virtual {v0}, Lam/sunrise/android/calendar/reminders/g;->d()Lam/sunrise/android/calendar/reminders/h;

    move-result-object v1

    .line 282
    iget-object v2, v1, Lam/sunrise/android/calendar/reminders/h;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    iget-object v2, v1, Lam/sunrise/android/calendar/reminders/h;->f:Ljava/util/Calendar;

    iget-object v3, v1, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-nez v2, :cond_1

    .line 284
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Lam/sunrise/android/calendar/reminders/h;)V

    .line 291
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lam/sunrise/android/calendar/reminders/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 292
    invoke-virtual {v0}, Lam/sunrise/android/calendar/reminders/g;->c()V

    .line 294
    :cond_2
    return-void

    .line 287
    :cond_3
    iget-object v2, v1, Lam/sunrise/android/calendar/reminders/h;->c:Ljava/lang/String;

    const-string v3, "birthday"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 288
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Lam/sunrise/android/calendar/reminders/h;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 109
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->s(Landroid/content/Context;)Lam/sunrise/android/calendar/f;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    sget-object v1, Lam/sunrise/android/calendar/f;->a:Lam/sunrise/android/calendar/f;

    if-ne v0, v1, :cond_1

    .line 111
    :cond_0
    invoke-static {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->d(Landroid/content/Context;)V

    .line 132
    :goto_0
    return-void

    .line 115
    :cond_1
    sget-object v1, Lam/sunrise/android/calendar/provider/m;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "reminderType"

    const-string v3, "birthdays"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 120
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 122
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 123
    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 124
    const/16 v4, 0xb

    invoke-virtual {v0}, Lam/sunrise/android/calendar/f;->a()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 126
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x6

    const/4 v2, 0x1

    invoke-virtual {v3, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 130
    :cond_2
    const/4 v0, 0x3

    const-string v2, "am.sunrise.android.calendar.action.REMINDER_BIRTHDAYS"

    invoke-static {p0, v0, v2, v1, v3}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;Ljava/util/Calendar;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 135
    invoke-static {p0}, Lam/sunrise/android/calendar/c;->s(Landroid/content/Context;)Lam/sunrise/android/calendar/f;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_0

    sget-object v1, Lam/sunrise/android/calendar/f;->a:Lam/sunrise/android/calendar/f;

    if-eq v0, v1, :cond_0

    .line 137
    invoke-static {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->c(Landroid/content/Context;)V

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    sget-object v0, Lam/sunrise/android/calendar/provider/m;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "reminderType"

    const-string v2, "birthdays"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 146
    const/4 v1, 0x3

    const-string v2, "am.sunrise.android.calendar.action.REMINDER_BIRTHDAYS"

    invoke-static {p0, v1, v2, v0}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Landroid/content/Context;ILjava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/reminders/h;JLc/a/a/b;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 318
    const-string v0, "RemindersService"

    const-string v1, "createReminder: alarm set for \'%s\' / %d min before should happen at %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lam/sunrise/android/calendar/reminders/h;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p4}, Lc/a/a/b;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 322
    const-string v1, "reminder_event_id"

    iget-object v2, p1, Lam/sunrise/android/calendar/reminders/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v1, "reminder_alarm_time"

    invoke-virtual {p4}, Lc/a/a/b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v1, "reminder_value"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 325
    const-string v1, "reminder_occurrence_start_date"

    iget-object v2, p1, Lam/sunrise/android/calendar/reminders/h;->k:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 331
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p1, Lam/sunrise/android/calendar/reminders/h;->b:Ljava/lang/String;

    invoke-static {v2}, Lam/sunrise/android/calendar/provider/m;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "am.sunrise.android.calendar.action.REMINDER_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v1, p1, Lam/sunrise/android/calendar/reminders/h;->b:Ljava/lang/String;

    invoke-virtual {p4}, Lc/a/a/b;->a()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lam/sunrise/android/calendar/provider/m;->a(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 338
    const-string v1, "am.sunrise.android.calendar.extra.REMINDER_VALUE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 340
    const/high16 v1, 0x20000000

    invoke-static {p0, v6, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_0

    .line 342
    iget-object v2, p0, Lam/sunrise/android/calendar/reminders/RemindersService;->a:Lam/sunrise/android/calendar/reminders/a;

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 344
    :cond_0
    const/high16 v1, 0x10000000

    invoke-static {p0, v6, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lam/sunrise/android/calendar/reminders/RemindersService;->a:Lam/sunrise/android/calendar/reminders/a;

    invoke-virtual {p4}, Lc/a/a/b;->a()J

    move-result-wide v2

    invoke-virtual {v1, v6, v2, v3, v0}, Lam/sunrise/android/calendar/reminders/a;->a(IJLandroid/app/PendingIntent;)V

    .line 346
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 224
    new-instance v0, Lam/sunrise/android/calendar/reminders/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/reminders/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/reminders/RemindersService;->a:Lam/sunrise/android/calendar/reminders/a;

    .line 225
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    if-nez p1, :cond_1

    .line 194
    const-string v0, "RemindersService"

    const-string v1, "onHandleIntent: intent == null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    const-string v0, "RemindersService"

    const-string v1, "onHandleIntent: action == null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Landroid/content/Context;)V

    .line 208
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/reminders/RemindersService;->c(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->a()V

    .line 210
    invoke-direct {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->c()V

    goto :goto_0

    .line 211
    :cond_3
    const-string v1, "am.sunrise.android.calendar.action.PERFORM_REMINDERS_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "am.sunrise.android.calendar.action.REMINDER_SENTINEL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :cond_4
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/reminders/RemindersService;->a(Landroid/content/Context;)V

    .line 214
    invoke-virtual {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/reminders/RemindersService;->c(Landroid/content/Context;)V

    .line 215
    invoke-direct {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->a()V

    .line 217
    invoke-direct {p0}, Lam/sunrise/android/calendar/reminders/RemindersService;->c()V

    goto :goto_0
.end method
