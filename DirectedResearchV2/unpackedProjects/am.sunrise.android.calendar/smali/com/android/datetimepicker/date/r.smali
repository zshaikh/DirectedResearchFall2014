.class Lcom/android/datetimepicker/date/r;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/android/datetimepicker/date/q;


# direct methods
.method constructor <init>(Lcom/android/datetimepicker/date/q;II)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/datetimepicker/date/r;->c:Lcom/android/datetimepicker/date/q;

    iput p2, p0, Lcom/android/datetimepicker/date/r;->a:I

    iput p3, p0, Lcom/android/datetimepicker/date/r;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/datetimepicker/date/r;->c:Lcom/android/datetimepicker/date/q;

    iget v1, p0, Lcom/android/datetimepicker/date/r;->a:I

    iget v2, p0, Lcom/android/datetimepicker/date/r;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/date/q;->setSelectionFromTop(II)V

    .line 134
    iget-object v0, p0, Lcom/android/datetimepicker/date/r;->c:Lcom/android/datetimepicker/date/q;

    invoke-virtual {v0}, Lcom/android/datetimepicker/date/q;->requestLayout()V

    .line 135
    return-void
.end method
