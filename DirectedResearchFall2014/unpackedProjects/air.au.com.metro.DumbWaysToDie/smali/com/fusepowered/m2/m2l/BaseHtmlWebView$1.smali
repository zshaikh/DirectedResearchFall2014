.class Lcom/fusepowered/m2/m2l/BaseHtmlWebView$1;
.super Ljava/lang/Object;
.source "BaseHtmlWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->initializeOnTouchListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

.field private final synthetic val$isScrollable:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/m2l/BaseHtmlWebView;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView$1;->this$0:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

    iput-boolean p2, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView$1;->val$isScrollable:Z

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView$1;->this$0:Lcom/fusepowered/m2/m2l/BaseHtmlWebView;

    # getter for: Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->mViewGestureDetector:Lcom/fusepowered/m2/m2l/ViewGestureDetector;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/BaseHtmlWebView;->access$0(Lcom/fusepowered/m2/m2l/BaseHtmlWebView;)Lcom/fusepowered/m2/m2l/ViewGestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/BaseHtmlWebView$1;->val$isScrollable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
