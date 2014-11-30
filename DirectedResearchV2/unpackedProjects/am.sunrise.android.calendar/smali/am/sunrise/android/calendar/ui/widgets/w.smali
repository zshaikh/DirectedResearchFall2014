.class Lam/sunrise/android/calendar/ui/widgets/w;
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
    .line 119
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/w;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;II)V
    .locals 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0xb

    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/w;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 122
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/w;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    if-ne p2, v1, :cond_0

    if-eq p3, v2, :cond_1

    :cond_0
    if-ne p2, v2, :cond_2

    if-ne p3, v1, :cond_2

    .line 125
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/w;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/w;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;Z)Z

    .line 126
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/w;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 129
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/w;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 130
    return-void

    .line 125
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
