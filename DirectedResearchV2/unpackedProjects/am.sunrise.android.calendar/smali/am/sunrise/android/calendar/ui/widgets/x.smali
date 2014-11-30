.class Lam/sunrise/android/calendar/ui/widgets/x;
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
    .line 141
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;II)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 144
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getMinValue()I

    move-result v2

    .line 145
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v3}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->e(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    move-result-object v3

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getMaxValue()I

    move-result v3

    .line 146
    if-ne p2, v3, :cond_3

    if-ne p3, v2, :cond_3

    .line 147
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 148
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 149
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-static {v3, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;Z)Z

    .line 150
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 152
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setValue(I)V

    .line 161
    :cond_1
    :goto_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->d(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 162
    return-void

    :cond_2
    move v0, v1

    .line 149
    goto :goto_0

    .line 153
    :cond_3
    if-ne p2, v2, :cond_1

    if-ne p3, v3, :cond_1

    .line 154
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    move-result-object v2

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 155
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 156
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v4}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    invoke-static {v3, v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;Z)Z

    .line 157
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->c(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)V

    .line 159
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/x;->a:Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->f(Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;)Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setValue(I)V

    goto :goto_1

    :cond_5
    move v0, v1

    .line 156
    goto :goto_2
.end method
