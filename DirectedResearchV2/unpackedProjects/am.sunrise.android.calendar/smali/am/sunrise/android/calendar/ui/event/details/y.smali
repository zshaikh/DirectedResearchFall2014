.class Lam/sunrise/android/calendar/ui/event/details/y;
.super Ljava/lang/Object;
.source "EventDetailsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lam/sunrise/android/calendar/ui/event/details/v;


# direct methods
.method constructor <init>(Lam/sunrise/android/calendar/ui/event/details/v;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/details/y;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/y;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 185
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/details/v;->c(Lam/sunrise/android/calendar/ui/event/details/v;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 186
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/details/v;->d(Lam/sunrise/android/calendar/ui/event/details/v;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/ui/event/details/v;->a(Lam/sunrise/android/calendar/ui/event/details/v;Z)Z

    .line 188
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/ui/event/details/v;->a(Lam/sunrise/android/calendar/ui/event/details/v;I)I

    .line 189
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/v;->b(Lam/sunrise/android/calendar/ui/event/details/v;I)I

    .line 190
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/event/details/v;->c(Lam/sunrise/android/calendar/ui/event/details/v;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/details/v;->e(Lam/sunrise/android/calendar/ui/event/details/v;)I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/details/v;->f(Lam/sunrise/android/calendar/ui/event/details/v;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v1}, Lam/sunrise/android/calendar/ui/event/details/v;->e(Lam/sunrise/android/calendar/ui/event/details/v;)I

    move-result v1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/details/y;->b:Lam/sunrise/android/calendar/ui/event/details/v;

    invoke-static {v2}, Lam/sunrise/android/calendar/ui/event/details/v;->f(Lam/sunrise/android/calendar/ui/event/details/v;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/event/details/v;->c(Lam/sunrise/android/calendar/ui/event/details/v;I)I

    .line 193
    :cond_0
    return-void
.end method
