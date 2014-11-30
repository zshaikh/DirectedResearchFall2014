.class Lam/sunrise/android/calendar/ui/widgets/schedule/h;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/h;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 948
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 949
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/h;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    .line 950
    invoke-virtual {p1, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 952
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 953
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 955
    :cond_0
    invoke-virtual {v0, p2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 959
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .prologue
    .line 944
    return-void
.end method
