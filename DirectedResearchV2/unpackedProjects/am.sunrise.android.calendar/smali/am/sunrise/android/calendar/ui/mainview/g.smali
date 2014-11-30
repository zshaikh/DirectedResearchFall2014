.class Lam/sunrise/android/calendar/ui/mainview/g;
.super Ljava/lang/Object;
.source "MainViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/f;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/g;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/g;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/f;->a(Lam/sunrise/android/calendar/ui/mainview/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getNonObscuredFirstPosition()I

    move-result v0

    .line 127
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/g;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/f;->b(Lam/sunrise/android/calendar/ui/mainview/f;)Lam/sunrise/android/calendar/ui/mainview/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/c;->a()Lam/sunrise/android/calendar/ui/mainview/a/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 130
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 131
    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/g;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/f;->c(Lam/sunrise/android/calendar/ui/mainview/f;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/g;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/g;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/f;->c(Lam/sunrise/android/calendar/ui/mainview/f;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/f;->a(Ljava/util/Calendar;)V

    .line 133
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/g;->a:Lam/sunrise/android/calendar/ui/mainview/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/f;->a(Lam/sunrise/android/calendar/ui/mainview/f;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 136
    :cond_1
    return-void
.end method
