.class Lcom/dolphin/browser/ui/view/a;
.super Ljava/lang/Object;
.source "ContentWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/ui/view/ContentWrapper;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/ui/view/ContentWrapper;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 124
    iget-object v2, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/ui/view/ContentWrapper;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 125
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 126
    if-gez v1, :cond_1

    .line 141
    :cond_0
    return-void

    .line 129
    :cond_1
    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-virtual {v2}, Lcom/dolphin/browser/ui/view/ContentWrapper;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 130
    div-int/lit8 v0, v0, 0x3

    if-le v1, v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->a(Lcom/dolphin/browser/ui/view/ContentWrapper;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->a(Lcom/dolphin/browser/ui/view/ContentWrapper;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v1, :cond_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dolphin/browser/ui/view/ContentWrapper;->a(Lcom/dolphin/browser/ui/view/ContentWrapper;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 133
    iget-object v0, p0, Lcom/dolphin/browser/ui/view/a;->a:Lcom/dolphin/browser/ui/view/ContentWrapper;

    invoke-static {v0}, Lcom/dolphin/browser/ui/view/ContentWrapper;->b(Lcom/dolphin/browser/ui/view/ContentWrapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/e;

    .line 134
    if-eqz v1, :cond_4

    .line 135
    invoke-interface {v0}, Lcom/dolphin/browser/ui/view/e;->a()V

    goto :goto_1

    .line 130
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 137
    :cond_4
    invoke-interface {v0}, Lcom/dolphin/browser/ui/view/e;->b()V

    goto :goto_1
.end method
