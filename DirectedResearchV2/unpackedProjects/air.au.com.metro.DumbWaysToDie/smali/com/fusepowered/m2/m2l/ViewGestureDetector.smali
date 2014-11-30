.class public Lcom/fusepowered/m2/m2l/ViewGestureDetector;
.super Landroid/view/GestureDetector;
.source "ViewGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;
    }
.end annotation


# instance fields
.field private mAdAlertGestureListener:Lcom/fusepowered/m2/m2l/AdAlertGestureListener;

.field private mUserClickListener:Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdAlertGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "adAlertGestureListener"    # Lcom/fusepowered/m2/m2l/AdAlertGestureListener;

    .prologue
    .line 58
    invoke-direct {p0, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 60
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mAdAlertGestureListener:Lcom/fusepowered/m2/m2l/AdAlertGestureListener;

    .line 61
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mView:Landroid/view/View;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->setIsLongpressEnabled(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "adConfiguration"    # Lcom/fusepowered/m2/m2l/AdConfiguration;

    .prologue
    .line 54
    new-instance v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;

    invoke-direct {v0, p2, p3}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;-><init>(Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdAlertGestureListener;)V

    .line 55
    return-void
.end method

.method private isMotionEventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 5
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 103
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v4

    .line 110
    :goto_0
    return v2

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 108
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 110
    .local v1, "y":F
    cmpl-float v2, v0, v3

    if-ltz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 111
    cmpl-float v2, v1, v3

    if-ltz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 110
    cmpg-float v2, v1, v2

    if-gtz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method


# virtual methods
.method resetAdFlaggingGesture()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mAdAlertGestureListener:Lcom/fusepowered/m2/m2l/AdAlertGestureListener;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->reset()V

    .line 100
    return-void
.end method

.method sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mUserClickListener:Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mUserClickListener:Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;

    invoke-interface {v0}, Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;->onUserClick()V

    .line 74
    :goto_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mAdAlertGestureListener:Lcom/fusepowered/m2/m2l/AdAlertGestureListener;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->finishGestureDetection()V

    goto :goto_0

    .line 72
    :cond_0
    const-string v0, "MoPub"

    const-string v1, "View\'s onUserClick() is not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 78
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 82
    :pswitch_2
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->isMotionEventInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->resetAdFlaggingGesture()V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setAdAlertGestureListener(Lcom/fusepowered/m2/m2l/AdAlertGestureListener;)V
    .locals 0
    .param p1, "adAlertGestureListener"    # Lcom/fusepowered/m2/m2l/AdAlertGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mAdAlertGestureListener:Lcom/fusepowered/m2/m2l/AdAlertGestureListener;

    .line 117
    return-void
.end method

.method setUserClickListener(Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/ViewGestureDetector;->mUserClickListener:Lcom/fusepowered/m2/m2l/ViewGestureDetector$UserClickListener;

    .line 96
    return-void
.end method
