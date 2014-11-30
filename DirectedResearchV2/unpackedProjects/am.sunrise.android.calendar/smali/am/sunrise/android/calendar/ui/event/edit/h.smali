.class Lam/sunrise/android/calendar/ui/event/edit/h;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/edit/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/edit/c;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/h;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 426
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 427
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/edit/h;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/event/edit/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/edit/h;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/edit/h;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/event/edit/c;->k(Lam/sunrise/android/calendar/ui/event/edit/c;)[Z

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lam/sunrise/android/calendar/ui/event/a;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;[ZI)V

    .line 432
    return-void
.end method
