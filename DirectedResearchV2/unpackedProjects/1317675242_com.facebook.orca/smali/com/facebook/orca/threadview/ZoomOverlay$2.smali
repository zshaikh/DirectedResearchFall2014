.class Lcom/facebook/orca/threadview/ZoomOverlay$2;
.super Ljava/lang/Object;
.source "ZoomOverlay.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/facebook/orca/threadview/ZoomOverlay;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ZoomOverlay;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/facebook/orca/threadview/ZoomOverlay$2;->a:Lcom/facebook/orca/threadview/ZoomOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/threadview/ZoomOverlay$2;->a:Lcom/facebook/orca/threadview/ZoomOverlay;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ZoomOverlay;->a(Lcom/facebook/orca/threadview/ZoomOverlay;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
