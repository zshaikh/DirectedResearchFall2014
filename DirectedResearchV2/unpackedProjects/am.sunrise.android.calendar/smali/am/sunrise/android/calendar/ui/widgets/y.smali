.class Lam/sunrise/android/calendar/ui/widgets/y;
.super Ljava/lang/Object;
.source "NewTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/y;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 179
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/y;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/y;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;Z)Z

    .line 180
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/y;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 181
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
