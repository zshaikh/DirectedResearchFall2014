.class Lcom/fusepowered/m1/android/MMWebView$WebGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebGestureListener"
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
.method public constructor <init>(Lcom/fusepowered/m1/android/MMWebView;)V
    .locals 1
    .param p1, "webView"    # Lcom/fusepowered/m1/android/MMWebView;

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 135
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMWebView$WebGestureListener;->webRef:Ljava/lang/ref/WeakReference;

    .line 136
    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 125
    iget-object v1, p0, Lcom/fusepowered/m1/android/MMWebView$WebGestureListener;->webRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m1/android/MMWebView;

    .line 126
    .local v0, "webView":Lcom/fusepowered/m1/android/MMWebView;
    if-eqz v0, :cond_0

    .line 127
    iget-wide v1, v0, Lcom/fusepowered/m1/android/MMWebView;->creatorAdImplId:J

    invoke-static {v1, v2}, Lcom/fusepowered/m1/android/MMAdImplController;->getAdImplWithId(J)Lcom/fusepowered/m1/android/MMAdImpl;

    move-result-object v1

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMSDK$Event;->adSingleTap(Lcom/fusepowered/m1/android/MMAdImpl;)V

    .line 130
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
