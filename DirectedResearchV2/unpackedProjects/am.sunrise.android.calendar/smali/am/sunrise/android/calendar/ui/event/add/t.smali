.class Lam/sunrise/android/calendar/ui/event/add/t;
.super Ljava/lang/Object;
.source "AddEventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/event/add/c;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/t;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/t;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->f(Lam/sunrise/android/calendar/ui/event/add/c;)Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    move-result-object v1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/t;->a:Lam/sunrise/android/calendar/ui/event/add/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/add/c;->f(Lam/sunrise/android/calendar/ui/event/add/c;)Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setChecked(Z)V

    .line 400
    return-void

    .line 399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
