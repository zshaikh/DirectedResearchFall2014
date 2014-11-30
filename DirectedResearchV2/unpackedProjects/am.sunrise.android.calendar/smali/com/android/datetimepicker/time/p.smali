.class Lcom/android/datetimepicker/time/p;
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
    .line 280
    iput-object p1, p0, Lcom/android/datetimepicker/time/p;->a:Lcom/android/datetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 283
    iget-object v1, p0, Lcom/android/datetimepicker/time/p;->a:Lcom/android/datetimepicker/time/l;

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/l;->a()V

    .line 284
    iget-object v1, p0, Lcom/android/datetimepicker/time/p;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v1}, Lcom/android/datetimepicker/time/l;->d(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v1

    .line 285
    if-nez v1, :cond_0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/android/datetimepicker/time/p;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/time/l;->a(Lcom/android/datetimepicker/time/l;I)V

    .line 291
    iget-object v1, p0, Lcom/android/datetimepicker/time/p;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v1}, Lcom/android/datetimepicker/time/l;->d(Lcom/android/datetimepicker/time/l;)Lcom/android/datetimepicker/time/RadialPickerLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->setAmOrPm(I)V

    .line 292
    return-void

    .line 287
    :cond_0
    if-ne v1, v0, :cond_1

    .line 288
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
