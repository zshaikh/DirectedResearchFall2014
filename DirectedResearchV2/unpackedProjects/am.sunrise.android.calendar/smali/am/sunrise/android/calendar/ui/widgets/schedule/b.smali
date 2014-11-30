.class Lam/sunrise/android/calendar/ui/widgets/schedule/b;
.super Ljava/lang/Object;
.source "ScheduleAllDayEventsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/schedule/a;II)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->a:I

    iput p3, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/a;)Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 116
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->a:I

    if-eq v1, v2, :cond_1

    .line 117
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->a:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/a;)Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/a;)Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->requestLayout()V

    .line 121
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->b:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->a(Lam/sunrise/android/calendar/ui/widgets/schedule/a;)Lam/sunrise/android/calendar/ui/widgets/schedule/c;

    move-result-object v0

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/c;->getWrappedListView()Lam/sunrise/android/calendar/ui/widgets/aj;

    move-result-object v1

    .line 127
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 130
    iget v4, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->a:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->c:Lam/sunrise/android/calendar/ui/widgets/schedule/a;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/schedule/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/schedule/f;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/schedule/b;->b:I

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/schedule/f;->a(I)V

    .line 136
    :cond_1
    return-void
.end method
