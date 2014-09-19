.class public Lcom/fusepowered/m2/m2l/AdAlertGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AdAlertGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState:[I = null

.field private static final MAXIMUM_THRESHOLD_X_IN_DIPS:F = 100.0f

.field private static final MAXIMUM_THRESHOLD_Y_IN_DIPS:F = 50.0f

.field private static final MINIMUM_NUMBER_OF_ZIGZAGS_TO_FLAG:I = 0x4


# instance fields
.field private mAdAlertReporter:Lcom/fusepowered/m2/m2l/AdAlertReporter;

.field private mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

.field private mCurrentThresholdInDips:F

.field private mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

.field private mHasCrossedLeftThreshold:Z

.field private mHasCrossedRightThreshold:Z

.field private mNumberOfZigZags:I

.field private mPivotPositionX:F

.field private mPreviousPositionX:F

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState()[I
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->$SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->values()[Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->$SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)V
    .locals 3
    .parameter "view"
    .parameter "adConfiguration"

    .prologue
    const/high16 v2, 0x42c8

    .line 59
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 44
    iput v2, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentThresholdInDips:F

    .line 53
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    .line 60
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentThresholdInDips:F

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mView:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    .line 65
    return-void
.end method

.method private incrementNumberOfZigZags()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mNumberOfZigZags:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mNumberOfZigZags:I

    .line 141
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mNumberOfZigZags:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 142
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    .line 144
    :cond_0
    return-void
.end method

.method private isMovingLeft(F)Z
    .locals 1
    .parameter "currentPositionX"

    .prologue
    .line 176
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPreviousPositionX:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMovingRight(F)Z
    .locals 1
    .parameter "currentPositionX"

    .prologue
    .line 172
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPreviousPositionX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchOutOfBoundsOnYAxis(FF)Z
    .locals 2
    .parameter "initialY"
    .parameter "currentY"

    .prologue
    .line 116
    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x4248

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftThresholdReached(F)Z
    .locals 4
    .parameter "currentPosition"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 159
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 167
    :goto_0
    return v0

    .line 161
    :cond_0
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPivotPositionX:F

    iget v1, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentThresholdInDips:F

    sub-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 162
    iput-boolean v3, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    .line 163
    iput-boolean v2, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    .line 164
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->incrementNumberOfZigZags()V

    move v0, v2

    .line 165
    goto :goto_0

    :cond_1
    move v0, v3

    .line 167
    goto :goto_0
.end method

.method private rightThresholdReached(F)Z
    .locals 4
    .parameter "currentPosition"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 147
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 154
    :goto_0
    return v0

    .line 149
    :cond_0
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPivotPositionX:F

    iget v1, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentThresholdInDips:F

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 150
    iput-boolean v3, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mHasCrossedLeftThreshold:Z

    .line 151
    iput-boolean v2, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mHasCrossedRightThreshold:Z

    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v0, v3

    .line 154
    goto :goto_0
.end method

.method private updateInitialState(F)V
    .locals 1
    .parameter "currentPositionX"

    .prologue
    .line 120
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPivotPositionX:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 121
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    .line 123
    :cond_0
    return-void
.end method

.method private updateZag(F)V
    .locals 1
    .parameter "currentPositionX"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->leftThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->isMovingRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_RIGHT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    .line 135
    iput p1, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPivotPositionX:F

    .line 137
    :cond_0
    return-void
.end method

.method private updateZig(F)V
    .locals 1
    .parameter "currentPositionX"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->rightThresholdReached(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->isMovingLeft(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->GOING_LEFT:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    .line 128
    iput p1, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPivotPositionX:F

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method finishGestureDetection()V
    .locals 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    if-ne v0, v1, :cond_0

    .line 104
    new-instance v0, Lcom/fusepowered/m2/m2l/AdAlertReporter;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mAdConfiguration:Lcom/fusepowered/m2/m2l/AdConfiguration;

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/m2/m2l/AdAlertReporter;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/fusepowered/m2/m2l/AdConfiguration;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mAdAlertReporter:Lcom/fusepowered/m2/m2l/AdAlertReporter;

    .line 105
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mAdAlertReporter:Lcom/fusepowered/m2/m2l/AdAlertReporter;

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdAlertReporter;->send()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->reset()V

    .line 108
    return-void
.end method

.method getAdAlertReporter()Lcom/fusepowered/m2/m2l/AdAlertReporter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mAdAlertReporter:Lcom/fusepowered/m2/m2l/AdAlertReporter;

    return-object v0
.end method

.method getCurrentZigZagState()Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    return-object v0
.end method

.method getMinimumDipsInZigZag()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentThresholdInDips:F

    return v0
.end method

.method getNumberOfZigzags()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 181
    iget v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mNumberOfZigZags:I

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    sget-object v1, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FINISHED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    if-ne v0, v1, :cond_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->isTouchOutOfBoundsOnYAxis(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->FAILED:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->$SWITCH_TABLE$com$mopub$mobileads$AdAlertGestureListener$ZigZagState()[I

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPreviousPositionX:F

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mPivotPositionX:F

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->updateInitialState(F)V

    goto :goto_1

    .line 86
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->updateZig(F)V

    goto :goto_1

    .line 89
    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->updateZag(F)V

    goto :goto_1

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mNumberOfZigZags:I

    .line 112
    sget-object v0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;->UNSET:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdAlertGestureListener;->mCurrentZigZagState:Lcom/fusepowered/m2/m2l/AdAlertGestureListener$ZigZagState;

    .line 113
    return-void
.end method
