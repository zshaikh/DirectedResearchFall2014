.class Lam/sunrise/android/calendar/ui/widgets/schedule/u;
.super Ljava/lang/Object;
.source "ScheduleViewBaseItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

.field final synthetic b:Lam/sunrise/android/calendar/ui/widgets/schedule/r;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/r;Lam/sunrise/android/calendar/ui/widgets/schedule/ab;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/u;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/u;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    .line 418
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/u;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/r;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/r;)Lam/sunrise/android/calendar/ui/widgets/schedule/t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/u;->b:Lam/sunrise/android/calendar/ui/widgets/schedule/r;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/r;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/r;)Lam/sunrise/android/calendar/ui/widgets/schedule/t;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/u;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/ab;

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/t;->a(Lam/sunrise/android/calendar/ui/mainview/k;)V

    .line 425
    :cond_0
    return-void
.end method
