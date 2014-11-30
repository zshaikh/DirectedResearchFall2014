.class Lcom/android/datetimepicker/date/g;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/datetimepicker/date/f;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/date/f;I)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/datetimepicker/date/g;->b:Lcom/android/datetimepicker/date/f;

    iput p2, p0, Lcom/android/datetimepicker/date/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/datetimepicker/date/g;->b:Lcom/android/datetimepicker/date/f;

    iget v1, p0, Lcom/android/datetimepicker/date/g;->a:I

    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/f;->setSelection(I)V

    .line 244
    return-void
.end method
