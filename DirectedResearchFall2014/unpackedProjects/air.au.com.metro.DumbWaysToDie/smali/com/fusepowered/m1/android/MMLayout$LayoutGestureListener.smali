.class Lcom/fusepowered/m1/android/MMLayout$LayoutGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MMLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m1/android/MMLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutGestureListener"
.end annotation


# instance fields
.field layoutRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/fusepowered/m1/android/MMLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m1/android/MMLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/fusepowered/m1/android/MMLayout;

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMLayout$LayoutGestureListener;->layoutRef:Ljava/lang/ref/WeakReference;

    .line 105
    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v4, 0x0

    .line 110
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v4

    .line 138
    :goto_0
    return v2

    .line 112
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 113
    .local v0, "dx":I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xc8

    if-le v2, v3, :cond_5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 115
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_4

    .line 117
    sget v2, Lcom/fusepowered/m1/android/MMSDK;->logLevel:I

    if-nez v2, :cond_3

    .line 119
    const-string v2, "Enabling debug and verbose logging."

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x3

    sput v2, Lcom/fusepowered/m1/android/MMSDK;->logLevel:I

    .line 136
    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 124
    :cond_3
    const-string v2, "Disabling debug and verbose logging."

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK$Log;->i(Ljava/lang/String;)V

    .line 125
    sput v4, Lcom/fusepowered/m1/android/MMSDK;->logLevel:I

    goto :goto_1

    .line 130
    :cond_4
    iget-object v2, p0, Lcom/fusepowered/m1/android/MMLayout$LayoutGestureListener;->layoutRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fusepowered/m1/android/MMLayout;

    .line 131
    .local v1, "layout":Lcom/fusepowered/m1/android/MMLayout;
    if-eqz v1, :cond_2

    .line 133
    iget-object v2, v1, Lcom/fusepowered/m1/android/MMLayout;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v2}, Lcom/fusepowered/m1/android/MMSDK;->printDiagnostics(Lcom/fusepowered/m1/android/MMAdImpl;)V

    goto :goto_1

    .end local v1    # "layout":Lcom/fusepowered/m1/android/MMLayout;
    :cond_5
    move v2, v4

    .line 138
    goto :goto_0
.end method
