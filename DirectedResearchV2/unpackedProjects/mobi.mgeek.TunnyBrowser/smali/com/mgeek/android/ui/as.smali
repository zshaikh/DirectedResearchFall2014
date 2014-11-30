.class Lcom/mgeek/android/ui/as;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/PopupWindow;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/PopupWindow;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 125
    iget-object v0, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    invoke-static {v0}, Lcom/mgeek/android/ui/PopupWindow;->a(Lcom/mgeek/android/ui/PopupWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 126
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    invoke-static {v1}, Lcom/mgeek/android/ui/PopupWindow;->b(Lcom/mgeek/android/ui/PopupWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    invoke-static {v1}, Lcom/mgeek/android/ui/PopupWindow;->b(Lcom/mgeek/android/ui/PopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 130
    iget-object v1, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    iget-object v4, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    iget-object v5, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    invoke-static {v5}, Lcom/mgeek/android/ui/PopupWindow;->c(Lcom/mgeek/android/ui/PopupWindow;)I

    move-result v5

    iget-object v6, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    invoke-static {v6}, Lcom/mgeek/android/ui/PopupWindow;->d(Lcom/mgeek/android/ui/PopupWindow;)I

    move-result v6

    invoke-static {v4, v0, v2, v5, v6}, Lcom/mgeek/android/ui/PopupWindow;->a(Lcom/mgeek/android/ui/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/mgeek/android/ui/PopupWindow;->a(Lcom/mgeek/android/ui/PopupWindow;Z)V

    .line 131
    iget-object v0, p0, Lcom/mgeek/android/ui/as;->a:Lcom/mgeek/android/ui/PopupWindow;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mgeek/android/ui/PopupWindow;->a(IIIIZ)V

    .line 133
    :cond_0
    return-void
.end method
