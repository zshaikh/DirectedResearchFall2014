.class Lam/sunrise/android/calendar/ui/widgets/schedule/v;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleViewBaseItem.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/schedule/r;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/r;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/v;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/r;Lam/sunrise/android/calendar/ui/widgets/schedule/s;)V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/v;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/r;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 431
    if-eqz p2, :cond_1

    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 433
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

    .line 437
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/v;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/r;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/r;)V

    .line 440
    :cond_1
    return-void
.end method
