.class Lam/sunrise/android/calendar/ui/widgets/calendar/j;
.super Landroid/content/BroadcastReceiver;
.source "CalendarView.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)V
    .locals 0

    .prologue
    .line 964
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/j;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Lam/sunrise/android/calendar/ui/widgets/calendar/b;)V
    .locals 0

    .prologue
    .line 964
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/calendar/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 967
    if-eqz p2, :cond_1

    .line 968
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 969
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

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/j;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->b(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;)V

    .line 976
    :cond_1
    return-void
.end method
