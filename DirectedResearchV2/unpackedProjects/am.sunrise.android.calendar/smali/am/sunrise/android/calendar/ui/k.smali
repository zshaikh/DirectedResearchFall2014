.class Lam/sunrise/android/calendar/ui/k;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/HomeActivity;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/HomeActivity;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/k;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 187
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/k;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(Lam/sunrise/android/calendar/ui/HomeActivity;)Lam/sunrise/android/calendar/ui/SRViewPager;

    move-result-object v2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/k;->a:Lam/sunrise/android/calendar/ui/HomeActivity;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/HomeActivity;->a(Lam/sunrise/android/calendar/ui/HomeActivity;)Lam/sunrise/android/calendar/ui/SRViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/SRViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lam/sunrise/android/calendar/ui/SRViewPager;->a(IZ)V

    .line 189
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
