.class Lcom/android/datetimepicker/time/o;
.super Ljava/lang/Object;
.source "TimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/l;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/l;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v0}, Lcom/android/datetimepicker/time/l;->a(Lcom/android/datetimepicker/time/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v0}, Lcom/android/datetimepicker/time/l;->b(Lcom/android/datetimepicker/time/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/datetimepicker/time/l;->a(Lcom/android/datetimepicker/time/l;Z)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v0}, Lcom/android/datetimepicker/time/l;->c(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/s;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v0}, Lcom/android/datetimepicker/time/l;->c(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/s;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v1}, Lcom/android/datetimepicker/time/l;->d(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v2}, Lcom/android/datetimepicker/time/l;->d(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v2

    iget-object v3, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v3}, Lcom/android/datetimepicker/time/l;->d(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/datetimepicker/time/s;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;II)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/l;->dismiss()V

    .line 263
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/datetimepicker/time/o;->a:Lcom/android/datetimepicker/time/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/l;->a()V

    goto :goto_0
.end method
