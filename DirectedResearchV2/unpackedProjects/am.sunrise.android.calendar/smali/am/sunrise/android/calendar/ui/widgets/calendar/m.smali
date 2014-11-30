.class Lam/sunrise/android/calendar/ui/widgets/calendar/m;
.super Ljava/lang/Object;
.source "CalendarViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field final synthetic b:Lam/sunrise/android/calendar/ui/widgets/calendar/l;


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/calendar/l;Z)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/m;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-boolean p2, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/m;->a:Z

    .line 220
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/m;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/m;->a:Z

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->a(Lam/sunrise/android/calendar/ui/widgets/calendar/l;Z)Z

    .line 225
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/calendar/m;->b:Lam/sunrise/android/calendar/ui/widgets/calendar/l;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/l;->notifyDataSetChanged()V

    .line 226
    return-void
.end method
