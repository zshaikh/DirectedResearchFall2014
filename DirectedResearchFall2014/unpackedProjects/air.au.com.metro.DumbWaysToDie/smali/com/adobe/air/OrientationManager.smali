.class Lcom/adobe/air/OrientationManager;
.super Ljava/lang/Object;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/OrientationManager$EAspectRatio;,
        Lcom/adobe/air/OrientationManager$EDefault;,
        Lcom/adobe/air/OrientationManager$EOrientation;
    }
.end annotation


# static fields
.field private static final AIR_NAMESPACE_VERSION_3_3:F = 3.3f

.field private static final AIR_NAMESPACE_VERSION_3_8:F = 3.8f

.field private static final LOG_TAG:Ljava/lang/String; = "OrientationManager"

.field private static sMgr:Lcom/adobe/air/OrientationManager;


# instance fields
.field public mAfterOrientation:I

.field private mAutoOrients:Z

.field public mBeforeOrientation:I

.field private mDeviceDefault:I

.field private mDeviceOrientation:I

.field public mDispatchOrientationChangePending:Z

.field private mFinalOrientation:I

.field private mFirstCreate:Z

.field private mHardKeyboardHidden:I

.field private mNamespaceVersion:F

.field private mOldDeviceOrientation:I

.field private mOrientation:I

.field private mOrientationEventListner:Landroid/view/OrientationEventListener;

.field private mOsDefaultOrientation:I

.field private mOsReversedOrientation:I

.field private mOsRotatedLeftOrientation:I

.field private mOsRotatedRightOrientation:I

.field private mRequestedAspectRatio:I

.field private mSetOrientation:Z

.field private mView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private m_activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    .line 46
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 48
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    .line 49
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    .line 50
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    .line 51
    sget-object v0, Lcom/adobe/air/OrientationManager$EDefault;->PORTRAIT:Lcom/adobe/air/OrientationManager$EDefault;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EDefault;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceDefault:I

    .line 52
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    .line 53
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    .line 56
    iput-object v3, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    .line 57
    iput-object v3, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 59
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 60
    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 61
    const/16 v0, 0x8

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 62
    const/16 v0, 0x9

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    .line 66
    iput-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/OrientationManager;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/air/OrientationManager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/OrientationManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/air/OrientationManager;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    return v0
.end method

.method static synthetic access$202(Lcom/adobe/air/OrientationManager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    return p1
.end method

.method static synthetic access$300(Lcom/adobe/air/OrientationManager;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/air/OrientationManager;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/OrientationManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->isReOrientingAllowed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/adobe/air/OrientationManager;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    return p1
.end method

.method static synthetic access$700(Lcom/adobe/air/OrientationManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setSensorBasedOrientation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/adobe/air/OrientationManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    return v0
.end method

.method static synthetic access$802(Lcom/adobe/air/OrientationManager;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/OrientationManager;)F
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    return v0
.end method

.method private applyLastOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x40533333

    const/4 v2, 0x1

    .line 756
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-nez v0, :cond_3

    .line 758
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 761
    :cond_0
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setOrientation(I)V

    .line 817
    :cond_1
    :goto_0
    return-void

    .line 765
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto :goto_0

    .line 774
    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOldDeviceOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    .line 780
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    .line 782
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    .line 783
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    .line 786
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    if-eq v0, v1, :cond_1

    .line 789
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 791
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanging(II)Z

    move-result v0

    .line 793
    :goto_1
    if-eqz v0, :cond_5

    .line 795
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    goto :goto_0

    .line 799
    :cond_5
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 801
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 806
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 807
    iput-boolean v4, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_0

    .line 811
    :cond_6
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method private getCurrentOrientation()I
    .locals 3

    .prologue
    .line 627
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 629
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v0

    .line 632
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 634
    if-nez v1, :cond_2

    .line 636
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    .line 638
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 640
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    .line 642
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 644
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    .line 646
    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 648
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0
.end method

.method public static getOrientationManager()Lcom/adobe/air/OrientationManager;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/adobe/air/OrientationManager;

    invoke-direct {v0}, Lcom/adobe/air/OrientationManager;-><init>()V

    sput-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager;->sMgr:Lcom/adobe/air/OrientationManager;

    return-object v0
.end method

.method private isReOrientingAllowed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    const/4 v0, 0x0

    .line 95
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v2, 0x40533333

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    .line 97
    iget-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v1, v3, :cond_2

    .line 99
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 101
    iget-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    if-eqz v1, :cond_0

    move v0, v3

    .line 104
    :cond_0
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v2, :cond_3

    .line 106
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    move v0, v3

    .line 133
    :cond_2
    :goto_0
    return v0

    .line 113
    :cond_3
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_4

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_4
    move v0, v3

    .line 116
    goto :goto_0

    :cond_5
    move v0, v3

    .line 121
    goto :goto_0

    :cond_6
    move v0, v3

    .line 128
    goto :goto_0
.end method

.method private setDeviceDefault()V
    .locals 7

    .prologue
    const/16 v6, 0x9

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 659
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 660
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 661
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 662
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 663
    if-lt v2, v0, :cond_3

    move v0, v4

    .line 664
    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    :cond_0
    move v1, v4

    .line 665
    :goto_1
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 667
    :cond_2
    iput v4, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 668
    iput v3, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 669
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_5

    .line 671
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 672
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    .line 695
    :goto_2
    return-void

    :cond_3
    move v0, v3

    .line 663
    goto :goto_0

    :cond_4
    move v1, v3

    .line 664
    goto :goto_1

    .line 676
    :cond_5
    iput v5, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 677
    iput v6, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_2

    .line 682
    :cond_6
    iput v3, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    .line 683
    iput v4, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    .line 684
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v5, :cond_7

    .line 686
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 687
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_2

    .line 691
    :cond_7
    iput v6, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    .line 692
    iput v5, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    goto :goto_2
.end method

.method private setOrientationParamsFromMetaData()V
    .locals 5

    .prologue
    const v4, 0x40733333

    .line 701
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 702
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 705
    if-nez v2, :cond_1

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    const-string v0, "autoOrients"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 709
    const-string v1, "aspectRatio"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 716
    const-string v3, "namespaceVersion"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    .line 720
    if-eqz v1, :cond_2

    .line 722
    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 724
    sget-object v2, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    .line 732
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 734
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    goto :goto_0

    .line 726
    :cond_3
    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 728
    sget-object v2, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    goto :goto_1

    .line 738
    :cond_4
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_6

    if-eqz v1, :cond_5

    const-string v0, "any"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 740
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    goto :goto_0

    .line 742
    :cond_6
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    if-nez v1, :cond_0

    .line 744
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private setSensorBasedOrientation()Z
    .locals 5

    .prologue
    const v2, 0x40533333

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 143
    .line 144
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    move v0, v3

    .line 146
    :goto_0
    iget-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v1, v3, :cond_a

    .line 148
    iget-boolean v1, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 149
    iput-boolean v4, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 151
    :cond_0
    if-eqz v0, :cond_9

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_9

    .line 158
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v2, :cond_5

    .line 160
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 162
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v1, v3

    .line 208
    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 210
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    .line 211
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    .line 213
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    if-eq v0, v2, :cond_1

    .line 214
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, v0, v2}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 215
    :cond_1
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 218
    :cond_2
    return v1

    :cond_3
    move v0, v4

    .line 144
    goto :goto_0

    .line 165
    :cond_4
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_a

    .line 167
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v1, v3

    .line 168
    goto :goto_1

    .line 174
    :cond_5
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v3, :cond_6

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    .line 177
    :goto_2
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    if-ne v2, v1, :cond_7

    .line 179
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v2, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v1, v3

    .line 180
    goto :goto_1

    .line 174
    :cond_6
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    goto :goto_2

    .line 186
    :cond_7
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v3, :cond_8

    .line 188
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v1, v3

    goto :goto_1

    .line 192
    :cond_8
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v1, v3

    goto :goto_1

    .line 201
    :cond_9
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move v1, v3

    .line 202
    goto :goto_1

    :cond_a
    move v1, v4

    goto :goto_1
.end method


# virtual methods
.method public enableEventListener(Z)V
    .locals 1
    .parameter

    .prologue
    .line 351
    if-eqz p1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 355
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method public getAutoOrients()Z
    .locals 1

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    return v0
.end method

.method public getDeviceOrientation()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 419
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 421
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v0, v1, :cond_0

    .line 423
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    .line 432
    :goto_0
    return v0

    .line 427
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    goto :goto_0

    .line 432
    :cond_1
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mDeviceOrientation:I

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 411
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    return v0
.end method

.method public getSupportedOrientations()[I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 595
    .line 596
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 598
    new-array v0, v4, [I

    .line 600
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v2, :cond_0

    .line 602
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v3

    .line 603
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v2

    .line 620
    :goto_0
    return-object v0

    .line 607
    :cond_0
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v3

    .line 608
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    .line 613
    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 614
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v3

    .line 615
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v2

    .line 616
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    aput v1, v0, v4

    .line 617
    const/4 v1, 0x3

    sget-object v2, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v2}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method

.method public native nativeOrientationChanged(II)V
.end method

.method public native nativeOrientationChanging(II)Z
.end method

.method public onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 224
    iput-object p1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    .line 225
    iput-object p2, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 228
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    .line 231
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    if-ne v0, v3, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setDeviceDefault()V

    .line 234
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->setOrientationParamsFromMetaData()V

    .line 237
    :cond_0
    new-instance v0, Lcom/adobe/air/OrientationManager$1;

    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/adobe/air/OrientationManager$1;-><init>(Lcom/adobe/air/OrientationManager;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/adobe/air/OrientationManager;->mOrientationEventListner:Landroid/view/OrientationEventListener;

    .line 317
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isScreenOn()Z

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isScreenLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    if-nez v0, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->applyLastOrientation()V

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 330
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mFirstCreate:Z

    .line 332
    return-void
.end method

.method public onActivityDestroyed()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    .line 337
    return-void
.end method

.method public onActivityPaused()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->enableEventListener(Z)V

    .line 347
    return-void
.end method

.method public onActivityResumed()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adobe/air/OrientationManager;->enableEventListener(Z)V

    .line 342
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 359
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    .line 360
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    .line 367
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    .line 369
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mHardKeyboardHidden:I

    .line 370
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    if-ne v0, v2, :cond_1

    .line 372
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 374
    :cond_0
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 378
    :cond_1
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    if-eq v0, v1, :cond_2

    .line 383
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    if-eq v0, v1, :cond_3

    .line 405
    :cond_2
    :goto_0
    return-void

    .line 387
    :cond_3
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UNKNOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mFinalOrientation:I

    .line 389
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 391
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->mView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 396
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 397
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_0

    .line 401
    :cond_4
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    goto :goto_0
.end method

.method public setAspectRatio(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 525
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 529
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v1, 0x40533333

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 530
    iput-boolean v2, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 532
    :cond_0
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->PORTRAIT:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 535
    iput v2, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    .line 557
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 560
    :cond_2
    return-void

    .line 537
    :cond_3
    sget-object v0, Lcom/adobe/air/OrientationManager$EAspectRatio;->LANDSCAPE:Lcom/adobe/air/OrientationManager$EAspectRatio;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EAspectRatio;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 539
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 540
    iput v3, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    goto :goto_0

    .line 545
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    .line 550
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    if-ne v0, v2, :cond_1

    .line 552
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setAutoOrients(Z)V
    .locals 2
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    iput-boolean p1, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    .line 571
    iget-boolean v0, p0, Lcom/adobe/air/OrientationManager;->mAutoOrients:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 573
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v1, 0x40533333

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/adobe/air/OrientationManager;->mRequestedAspectRatio:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setNearestOrientation(I)V
    .locals 2
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 501
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 503
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 507
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedLeftOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 509
    :cond_2
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 511
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsRotatedRightOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 513
    :cond_3
    sget-object v0, Lcom/adobe/air/OrientationManager$EOrientation;->UPSIDE_DOWN:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsReversedOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 439
    iget v0, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 441
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_2

    .line 443
    invoke-virtual {p0, p1}, Lcom/adobe/air/OrientationManager;->setNearestOrientation(I)V

    .line 444
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    .line 445
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/OrientationManager;->mOrientation:I

    .line 488
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/OrientationManager;->getCurrentOrientation()I

    move-result v1

    .line 489
    iget v2, p0, Lcom/adobe/air/OrientationManager;->mNamespaceVersion:F

    const v3, 0x40733333

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    if-eq v1, v0, :cond_1

    .line 490
    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 492
    :cond_1
    return-void

    .line 455
    :cond_2
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->DEFAULT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 457
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 459
    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v3, :cond_3

    .line 461
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 467
    :goto_1
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    goto :goto_0

    .line 465
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 470
    :cond_4
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_RIGHT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 472
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-ne v1, v3, :cond_0

    .line 474
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 475
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    goto :goto_0

    .line 478
    :cond_5
    sget-object v1, Lcom/adobe/air/OrientationManager$EOrientation;->ROTATED_LEFT:Lcom/adobe/air/OrientationManager$EOrientation;

    invoke-virtual {v1}, Lcom/adobe/air/OrientationManager$EOrientation;->ordinal()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/adobe/air/OrientationManager;->mOsDefaultOrientation:I

    if-nez v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/adobe/air/OrientationManager;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 483
    iput-boolean v3, p0, Lcom/adobe/air/OrientationManager;->mSetOrientation:Z

    goto :goto_0
.end method
