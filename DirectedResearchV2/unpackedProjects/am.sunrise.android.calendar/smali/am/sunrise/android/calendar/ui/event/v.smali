.class Lam/sunrise/android/calendar/ui/event/v;
.super Ljava/lang/Object;
.source "RecurringRuleEditorDialog.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/widgets/calendar/i;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/s;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/s;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/v;->a:Lam/sunrise/android/calendar/ui/event/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/v;->a:Lam/sunrise/android/calendar/ui/event/s;

    invoke-static {v0, p1}, Lam/sunrise/android/calendar/ui/event/s;->a(Lam/sunrise/android/calendar/ui/event/s;Ljava/util/Calendar;)V

    .line 172
    return-void
.end method
