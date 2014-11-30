.class Lam/sunrise/android/calendar/ui/widgets/o;
.super Ljava/lang/Object;
.source "NewNumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V
    .locals 0

    .prologue
    .line 1723
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1725
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->b(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;I)I

    .line 1726
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1727
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->g(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)V

    .line 1728
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->h(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->a(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;J)V

    .line 1738
    :goto_0
    return-void

    .line 1732
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->e(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I

    move-result v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->f(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I

    move-result v2

    sub-int v4, v0, v2

    .line 1733
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_1

    .line 1734
    if-lez v4, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I

    move-result v0

    neg-int v0, v0

    :goto_1
    add-int/2addr v4, v0

    .line 1736
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->j(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)Landroid/widget/Scroller;

    move-result-object v0

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1737
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->invalidate()V

    goto :goto_0

    .line 1734
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/o;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->i(Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;)I

    move-result v0

    goto :goto_1
.end method
