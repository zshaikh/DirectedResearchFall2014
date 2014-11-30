.class public Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;
.super Landroid/view/TouchDelegate;
.source "CompoundTouchDelegate.java"


# instance fields
.field private final a:[Landroid/view/TouchDelegate;


# direct methods
.method public varargs constructor <init>(Landroid/view/View;[Landroid/view/TouchDelegate;)V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 23
    iput-object p2, p0, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;->a:[Landroid/view/TouchDelegate;

    .line 24
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v0, p0, Lcom/facebook/orca/common/ui/util/CompoundTouchDelegate;->a:[Landroid/view/TouchDelegate;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 29
    invoke-virtual {v3, p1}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 33
    :goto_1
    return v0

    .line 28
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    .line 33
    goto :goto_1
.end method
