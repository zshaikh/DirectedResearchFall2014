.class Lam/sunrise/android/calendar/ui/mainview/c;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/mainview/MainView;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/mainview/MainView;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->d(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->d(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->e(Lam/sunrise/android/calendar/ui/mainview/MainView;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 352
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->d(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->a(I)Ljava/util/Calendar;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_2

    .line 354
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/calendar/CalendarView;->a(Ljava/util/Calendar;)V

    .line 360
    :cond_2
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->f(Lam/sunrise/android/calendar/ui/mainview/MainView;)V

    .line 362
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->g(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/mainview/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/mainview/MainView;->g(Lam/sunrise/android/calendar/ui/mainview/MainView;)Lam/sunrise/android/calendar/ui/mainview/e;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lam/sunrise/android/calendar/ui/mainview/e;->a(II)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(Lam/sunrise/android/calendar/ui/mainview/MainView;Z)Z

    goto :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/c;->a:Lam/sunrise/android/calendar/ui/mainview/MainView;

    invoke-virtual {v0, p2}, Lam/sunrise/android/calendar/ui/mainview/MainView;->a(I)V

    .line 337
    return-void
.end method
