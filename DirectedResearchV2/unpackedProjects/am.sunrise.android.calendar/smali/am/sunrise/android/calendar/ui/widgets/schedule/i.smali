.class Lam/sunrise/android/calendar/ui/widgets/schedule/i;
.super Ljava/lang/Object;
.source "ScheduleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)V
    .locals 0

    .prologue
    .line 1009
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x1f4

    .line 1013
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/d;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/d;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v0

    .line 1014
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    move-result-object v1

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    .line 1016
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)I

    move-result v3

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/f;I)I

    .line 1018
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->d(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1021
    if-nez v2, :cond_0

    .line 1037
    :goto_0
    return-void

    .line 1025
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1027
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->e(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1028
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v0, v4, v5}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1029
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {v1, v0, v5}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1036
    :cond_1
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/i;->a:Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->c(Lam/sunrise/android/calendar/ui/widgets/schedule/f;)I

    move-result v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->b(Lam/sunrise/android/calendar/ui/widgets/schedule/f;I)I

    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {v0, v3, v5}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 1032
    invoke-virtual {v1, v3, v5}, Landroid/widget/ListView;->smoothScrollBy(II)V

    goto :goto_1
.end method
