.class Lcom/android/datetimepicker/time/m;
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
    .line 234
    iput-object p1, p0, Lcom/android/datetimepicker/time/m;->a:Lcom/android/datetimepicker/time/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/datetimepicker/time/m;->a:Lcom/android/datetimepicker/time/l;

    invoke-static {v0, v1, v2, v1, v2}, Lcom/android/datetimepicker/time/l;->a(Lcom/android/datetimepicker/time/l;IZZZ)V

    .line 238
    iget-object v0, p0, Lcom/android/datetimepicker/time/m;->a:Lcom/android/datetimepicker/time/l;

    invoke-virtual {v0}, Lcom/android/datetimepicker/time/l;->a()V

    .line 239
    return-void
.end method
