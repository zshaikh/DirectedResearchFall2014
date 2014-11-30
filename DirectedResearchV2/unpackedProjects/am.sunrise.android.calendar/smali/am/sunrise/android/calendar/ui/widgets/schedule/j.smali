.class Lam/sunrise/android/calendar/ui/widgets/schedule/j;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;


# direct methods
.method private constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Lam/sunrise/android/calendar/ui/widgets/schedule/e;)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/schedule/j;-><init>(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 258
    const-string v0, "INTERACTIVE"

    const-string v1, "Long Pressing!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/b/i;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;Z)Z

    .line 260
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)F

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/j;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/ScheduleView;->a(FF)Z

    .line 261
    return-void
.end method
