.class Lcom/mgeek/android/ui/ao;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/mgeek/android/ui/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/mgeek/android/ui/ao;->b:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    iput p2, p0, Lcom/mgeek/android/ui/ao;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mgeek/android/ui/ao;->b:Lcom/mgeek/android/ui/PagerSlidingTabStrip;

    invoke-static {v0}, Lcom/mgeek/android/ui/PagerSlidingTabStrip;->a(Lcom/mgeek/android/ui/PagerSlidingTabStrip;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/mgeek/android/ui/ao;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->a(I)V

    .line 277
    return-void
.end method
