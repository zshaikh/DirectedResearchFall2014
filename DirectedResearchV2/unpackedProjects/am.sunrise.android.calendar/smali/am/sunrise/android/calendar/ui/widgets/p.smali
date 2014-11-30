.class Lam/sunrise/android/calendar/ui/widgets/p;
.super Ljava/lang/Object;
.source "NewNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

.field private b:Z


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V
    .locals 0

    .prologue
    .line 1744
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/p;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/p;Z)V
    .locals 0

    .prologue
    .line 1744
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/p;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .prologue
    .line 1748
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/widgets/p;->b:Z

    .line 1749
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1752
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/p;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/widgets/p;->b:Z

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Z)V

    .line 1753
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/p;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/p;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->k(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1754
    return-void
.end method
