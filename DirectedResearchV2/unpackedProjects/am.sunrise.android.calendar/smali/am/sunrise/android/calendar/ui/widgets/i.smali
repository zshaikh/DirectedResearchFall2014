.class Lam/sunrise/android/calendar/ui/widgets/i;
.super Lam/sunrise/android/calendar/ui/widgets/g;
.source "BugFixedSlidingPaneLayout.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1421
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1424
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/c;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/widgets/c;->d:Landroid/graphics/Paint;

    invoke-static {p2, v0}, Landroid/support/v4/view/ak;->a(Landroid/view/View;Landroid/graphics/Paint;)V

    .line 1425
    return-void
.end method
