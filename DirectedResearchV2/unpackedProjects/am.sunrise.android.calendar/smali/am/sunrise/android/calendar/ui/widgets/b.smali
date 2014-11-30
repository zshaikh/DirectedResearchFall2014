.class Lam/sunrise/android/calendar/ui/widgets/b;
.super Ljava/lang/Object;
.source "BugFixedSlidingPaneLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/view/View;

.field final synthetic b:Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1517
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/b;->b:Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1518
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/b;->a:Landroid/view/View;

    .line 1519
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1523
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/b;->b:Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;

    if-ne v0, v1, :cond_0

    .line 1524
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/b;->a:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/view/ak;->a(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1525
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/b;->b:Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/b;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V

    .line 1527
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/b;->b:Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;->a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1528
    return-void
.end method
