.class public Lam/sunrise/android/calendar/widget/agenda/TimeObserver;
.super Landroid/content/BroadcastReceiver;
.source "TimeObserver.java"


# static fields
.field private static final a:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "am.sunrise.android.calendar.action.TIME_TICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/TimeObserver;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 34
    new-instance v0, Lam/sunrise/android/calendar/reminders/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/reminders/a;-><init>(Landroid/content/Context;)V

    .line 36
    sget-object v1, Lam/sunrise/android/calendar/widget/agenda/TimeObserver;->a:Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-static {p0, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 42
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 43
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 44
    const/16 v2, 0xe

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 45
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->add(II)V

    .line 47
    sget-object v2, Lam/sunrise/android/calendar/widget/agenda/TimeObserver;->a:Landroid/content/Intent;

    const/high16 v3, 0x40000000

    invoke-static {p0, v5, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 49
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0, v5, v3, v4, v2}, Lam/sunrise/android/calendar/reminders/a;->a(IJLandroid/app/PendingIntent;)V

    .line 50
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lam/sunrise/android/calendar/reminders/a;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/reminders/a;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v1, 0x1

    sget-object v2, Lam/sunrise/android/calendar/widget/agenda/TimeObserver;->a:Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/reminders/a;->a(Landroid/app/PendingIntent;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 64
    invoke-static {p1}, Lam/sunrise/android/calendar/widget/agenda/AgendaAppWidgetProvider;->c(Landroid/content/Context;)V

    .line 65
    invoke-static {p1}, Lam/sunrise/android/calendar/widget/agenda/TimeObserver;->a(Landroid/content/Context;)V

    .line 66
    return-void
.end method
