.class Lam/sunrise/android/calendar/ui/widgets/schedule/aa;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleViewHourSidebar.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/schedule/y;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/y;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/aa;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/y;Lam/sunrise/android/calendar/ui/widgets/schedule/z;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/aa;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/y;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 209
    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/aa;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/y;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/y;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/y;)V

    .line 216
    :cond_1
    return-void
.end method
