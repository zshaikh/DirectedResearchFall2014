.class Lam/sunrise/android/calendar/ui/widgets/z;
.super Ljava/lang/Object;
.source "NewTimePicker.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/widgets/t;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/z;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;II)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/z;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 192
    invoke-virtual {p1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->requestFocus()Z

    .line 193
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/z;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/z;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;Z)Z

    .line 194
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/z;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 195
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/z;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 196
    return-void

    .line 193
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
