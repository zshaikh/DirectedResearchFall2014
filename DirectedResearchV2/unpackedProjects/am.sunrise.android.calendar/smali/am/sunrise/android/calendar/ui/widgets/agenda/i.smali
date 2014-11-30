.class Lam/sunrise/android/calendar/ui/widgets/agenda/i;
.super Ljava/lang/Object;
.source "AgendaViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)V
    .locals 0

    .prologue
    .line 989
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/i;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 992
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 993
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/i;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)Lam/sunrise/android/calendar/ui/mainview/a/j;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 994
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/i;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/i;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/c;

    move-result-object v1

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/c;->d(Ljava/util/Calendar;)V

    .line 997
    :cond_0
    return-void
.end method
