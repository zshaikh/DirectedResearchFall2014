.class Lcom/mgeek/android/ui/m;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DraggableListView.java"


# instance fields
.field final synthetic a:Lcom/mgeek/android/ui/DraggableListView;


# direct methods
.method constructor <init>(Lcom/mgeek/android/ui/DraggableListView;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/DraggableListView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 131
    const/high16 v1, 0x447a0000

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1}, Lcom/mgeek/android/ui/DraggableListView;->b(Lcom/mgeek/android/ui/DraggableListView;)Landroid/graphics/Rect;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v2}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/DraggableListView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 134
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/high16 v3, 0x40400000

    div-float/2addr v1, v3

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1}, Lcom/mgeek/android/ui/DraggableListView;->c(Lcom/mgeek/android/ui/DraggableListView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1, v0}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/DraggableListView;Z)Z

    .line 141
    :goto_0
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1}, Lcom/mgeek/android/ui/DraggableListView;->e(Lcom/mgeek/android/ui/DraggableListView;)Lcom/mgeek/android/ui/r;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1}, Lcom/mgeek/android/ui/DraggableListView;->e(Lcom/mgeek/android/ui/DraggableListView;)Lcom/mgeek/android/ui/r;

    move-result-object v1

    iget-object v2, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v2}, Lcom/mgeek/android/ui/DraggableListView;->f(Lcom/mgeek/android/ui/DraggableListView;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/mgeek/android/ui/r;->a(I)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1, v0}, Lcom/mgeek/android/ui/DraggableListView;->b(Lcom/mgeek/android/ui/DraggableListView;Z)V

    .line 150
    :cond_1
    :goto_1
    return v0

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/mgeek/android/ui/m;->a:Lcom/mgeek/android/ui/DraggableListView;

    invoke-static {v1}, Lcom/mgeek/android/ui/DraggableListView;->d(Lcom/mgeek/android/ui/DraggableListView;)V

    goto :goto_0

    .line 150
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
