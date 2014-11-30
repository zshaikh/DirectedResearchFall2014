.class Lcom/mgeek/android/ui/DraggableListView$ChildHeights;
.super Landroid/graphics/Point;
.source "DraggableListView.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 880
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mgeek/android/ui/m;)V
    .locals 0

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;-><init>()V

    return-void
.end method


# virtual methods
.method a(Z)I
    .locals 1

    .prologue
    .line 883
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->x:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mgeek/android/ui/DraggableListView$ChildHeights;->y:I

    goto :goto_0
.end method
