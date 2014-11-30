.class Lam/sunrise/android/calendar/ui/widgets/g;
.super Ljava/lang/Object;
.source "BugFixedSlidingPaneLayout.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/widgets/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/BugFixedSlidingPaneLayout;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1372
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Landroid/support/v4/view/ak;->a(Landroid/view/View;IIII)V

    .line 1374
    return-void
.end method
