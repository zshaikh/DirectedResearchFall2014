.class Lcom/android/datetimepicker/date/s;
.super Landroid/widget/ArrayAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/datetimepicker/date/q;


# direct methods
.method public constructor <init>(Lcom/android/datetimepicker/date/q;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/datetimepicker/date/s;->a:Lcom/android/datetimepicker/date/q;

    .line 106
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 107
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 113
    invoke-virtual {v0}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->requestLayout()V

    .line 114
    invoke-static {v0}, Lcom/android/datetimepicker/date/q;->a(Landroid/widget/TextView;)I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/android/datetimepicker/date/s;->a:Lcom/android/datetimepicker/date/q;

    invoke-static {v2}, Lcom/android/datetimepicker/date/q;->a(Lcom/android/datetimepicker/date/q;)Lcom/android/datetimepicker/date/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/datetimepicker/date/a;->a()Lcom/android/datetimepicker/date/j;

    move-result-object v2

    iget v2, v2, Lcom/android/datetimepicker/date/j;->a:I

    if-ne v2, v1, :cond_1

    const/4 v1, 0x1

    .line 116
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;->a(Z)V

    .line 117
    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/datetimepicker/date/s;->a:Lcom/android/datetimepicker/date/q;

    invoke-static {v1, v0}, Lcom/android/datetimepicker/date/q;->a(Lcom/android/datetimepicker/date/q;Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;)Lcom/android/datetimepicker/date/TextViewWithCircularIndicator;

    .line 120
    :cond_0
    return-object v0

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
