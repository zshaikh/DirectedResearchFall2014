.class Lam/sunrise/android/calendar/ui/f;
.super Ljava/lang/Object;
.source "DateRangeSelectionActivity.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/widgets/aa;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/f;->a:Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;II)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/f;->a:Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/f;->a:Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;

    invoke-static {v0, p2, p3}, Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;->a(Lam/sunrise/android/calendar/ui/DateRangeSelectionActivity;II)V

    .line 108
    :cond_0
    return-void
.end method
