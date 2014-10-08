.class Lcom/fusepowered/m1/android/MMWebView$WebTouchListener;
.super Ljava/lang/Object;
.source "MMWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebTouchListener"
.end annotation


# instance fields
.field webRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMWebView$WebTouchListener;->webRef:Ljava/lang/ref/WeakReference;

    .line 106
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMWebView$WebTouchListener;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMWebView;

    .line 111
    .local v1, "webView":Lcom/fusepowered/m1/android/MMWebView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v5

    .line 112
    .local v0, "consume":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 113
    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMWebView;->canScroll()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v5

    .line 115
    :cond_0
    :goto_1
    return v0

    .end local v0    # "consume":Z
    :cond_1
    move v0, v4

    .line 111
    goto :goto_0

    .restart local v0    # "consume":Z
    :cond_2
    move v0, v4

    .line 113
    goto :goto_1
.end method
