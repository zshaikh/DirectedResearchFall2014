.class Lam/sunrise/android/calendar/ui/widgets/m;
.super Ljava/lang/Object;
.source "NewNumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/m;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 523
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/m;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->clearFocus()V

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00ff

    if-ne v0, v1, :cond_0

    .line 525
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/m;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Z)V

    .line 529
    :goto_0
    return v2

    .line 527
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/m;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;Z)V

    goto :goto_0
.end method
