.class Lcom/mgeek/android/ui/ax;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Lcom/mgeek/android/ui/av;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/TabHost;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Intent;

.field private d:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/mgeek/android/ui/ax;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p2, p0, Lcom/mgeek/android/ui/ax;->b:Ljava/lang/String;

    .line 615
    iput-object p3, p0, Lcom/mgeek/android/ui/ax;->c:Landroid/content/Intent;

    .line 616
    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;Landroid/content/Intent;Lcom/mgeek/android/ui/at;)V
    .locals 0

    .prologue
    .line 606
    invoke-direct {p0, p1, p2, p3}, Lcom/mgeek/android/ui/ax;-><init>(Lcom/mgeek/android/ui/TabHost;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 3

    .prologue
    .line 619
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->a:Lcom/mgeek/android/ui/TabHost;

    iget-object v0, v0, Lcom/mgeek/android/ui/TabHost;->b:Landroid/app/LocalActivityManager;

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did you forget to call \'public void setup(LocalActivityManager activityGroup)\'?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->a:Lcom/mgeek/android/ui/TabHost;

    iget-object v0, v0, Lcom/mgeek/android/ui/TabHost;->b:Landroid/app/LocalActivityManager;

    iget-object v1, p0, Lcom/mgeek/android/ui/ax;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgeek/android/ui/ax;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 625
    :goto_0
    iget-object v1, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 627
    iget-object v1, p0, Lcom/mgeek/android/ui/ax;->a:Lcom/mgeek/android/ui/TabHost;

    invoke-static {v1}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/TabHost;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 630
    :cond_1
    iput-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    .line 638
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 641
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    return-object v0

    .line 624
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/mgeek/android/ui/ax;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_0
    return-void
.end method
