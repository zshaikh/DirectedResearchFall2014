.class Lam/sunrise/android/calendar/ui/widgets/calendar/c;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

.field private b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/c;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/c;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    .line 499
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/calendar/c;)Lam/sunrise/android/calendar/ui/widgets/calendar/k;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/c;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/c;->a:Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/c;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/k;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/k;)V

    .line 504
    return-void
.end method
