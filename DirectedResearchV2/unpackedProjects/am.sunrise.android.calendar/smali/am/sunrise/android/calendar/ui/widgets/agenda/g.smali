.class Lam/sunrise/android/calendar/ui/widgets/agenda/g;
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
    .line 825
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/g;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 828
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/j;

    .line 829
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/g;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/g;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/c;

    move-result-object v1

    invoke-interface {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/c;->onEventClick(Lam/sunrise/android/calendar/ui/mainview/k;)V

    .line 832
    :cond_0
    return-void
.end method
