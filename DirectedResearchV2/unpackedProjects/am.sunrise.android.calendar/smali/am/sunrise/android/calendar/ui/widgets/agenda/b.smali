.class public Lam/sunrise/android/calendar/ui/widgets/agenda/b;
.super Landroid/view/View;
.source "AgendaView.java"


# instance fields
.field final synthetic a:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

.field private b:I


# direct methods
.method public constructor <init>(Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    .line 317
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 318
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 337
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->b:I

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 339
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->b:I

    if-eq v0, p1, :cond_0

    .line 330
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->b:I

    .line 331
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/b;->requestLayout()V

    .line 333
    :cond_0
    return-void
.end method
