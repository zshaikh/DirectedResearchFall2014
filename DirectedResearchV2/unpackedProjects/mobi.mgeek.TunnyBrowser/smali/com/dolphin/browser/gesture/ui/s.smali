.class Lcom/dolphin/browser/gesture/ui/s;
.super Ljava/lang/Object;
.source "GestureListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 144
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->b(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 146
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/s;->a:Lcom/dolphin/browser/gesture/ui/GestureListActivity;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/gesture/ui/GestureListActivity;->a(Lcom/dolphin/browser/gesture/ui/GestureListActivity;Landroid/view/View;)V

    .line 155
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
