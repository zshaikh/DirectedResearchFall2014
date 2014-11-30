.class Lcom/android/datetimepicker/time/c;
.super Ljava/lang/Object;
.source "RadialPickerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/time/RadialPickerLayout;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/time/RadialPickerLayout;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/datetimepicker/time/c;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/datetimepicker/time/c;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->b(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/datetimepicker/time/c;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v1}, Lcom/android/datetimepicker/time/RadialPickerLayout;->a(Lcom/android/datetimepicker/time/RadialPickerLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/time/a;->setAmOrPmPressed(I)V

    .line 598
    iget-object v0, p0, Lcom/android/datetimepicker/time/c;->a:Lcom/android/datetimepicker/time/RadialPickerLayout;

    invoke-static {v0}, Lcom/android/datetimepicker/time/RadialPickerLayout;->b(Lcom/android/datetimepicker/time/RadialPickerLayout;)Lcom/android/datetimepicker/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/a;->invalidate()V

    .line 599
    return-void
.end method
