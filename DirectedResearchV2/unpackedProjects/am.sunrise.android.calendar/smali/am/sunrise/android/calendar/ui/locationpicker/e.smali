.class Lam/sunrise/android/calendar/ui/locationpicker/e;
.super Ljava/lang/Object;
.source "LocationPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/locationpicker/b;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/locationpicker/b;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/locationpicker/e;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/e;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->setResult(I)V

    .line 198
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/locationpicker/e;->a:Lam/sunrise/android/calendar/ui/locationpicker/b;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->finish()V

    .line 199
    return-void
.end method
