.class Lam/sunrise/android/calendar/ui/event/edit/t;
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
    .line 337
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/edit/t;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/t;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->c(Lam/sunrise/android/calendar/ui/event/edit/c;)Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    move-result-object v1

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/edit/t;->a:Lam/sunrise/android/calendar/ui/event/edit/c;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/edit/c;->c(Lam/sunrise/android/calendar/ui/event/edit/c;)Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setChecked(Z)V

    .line 341
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
