.class Lcom/mgeek/android/ui/am;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mgeek/android/ui/am;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mgeek/android/ui/am;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/mgeek/android/ui/am;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mgeek/android/ui/am;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;I)I

    .line 242
    iget-object v0, p0, Lcom/mgeek/android/ui/am;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/mgeek/android/ui/am;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v1}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->b(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;II)V

    .line 243
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/am;->a:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
