.class Lam/sunrise/android/calendar/ui/b/j;
.super Ljava/lang/Object;
.source "SRInputDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/b/i;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/b/i;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/b/j;->a:Lam/sunrise/android/calendar/ui/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/b/j;->a:Lam/sunrise/android/calendar/ui/b/i;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/b/i;->a(Lam/sunrise/android/calendar/ui/b/i;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lam/sunrise/android/calendar/ui/b/k;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/b/k;-><init>(Lam/sunrise/android/calendar/ui/b/j;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    return-void
.end method
