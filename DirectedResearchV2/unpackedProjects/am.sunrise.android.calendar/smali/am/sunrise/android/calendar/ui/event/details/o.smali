.class Lam/sunrise/android/calendar/ui/event/details/o;
.super Ljava/lang/Object;
.source "EventDetailsAttendeesFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/details/n;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/n;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/o;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    .line 138
    add-int v0, p2, p3

    add-int/lit8 v0, v0, 0x5

    if-lt v0, p4, :cond_0

    .line 139
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/o;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->a(Lam/sunrise/android/calendar/ui/event/details/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/o;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ae;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/o;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/event/details/n;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/details/o;->a:Lam/sunrise/android/calendar/ui/event/details/n;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/details/n;->b(Lam/sunrise/android/calendar/ui/event/details/n;)Lam/sunrise/android/calendar/ui/event/details/t;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->b(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 143
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
