.class Lcom/fusepowered/m2/m2l/MraidDisplayController;
.super Lcom/fusepowered/m2/m2l/MraidAbstractController;
.source "MraidDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m2/m2l/MraidDisplayController$MoPubMediaScannerConnectionClient;,
        Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final CLOSE_BUTTON_SIZE_DP:I = 0x32

.field private static final DATE_FORMATS:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "MraidDisplayController"

.field private static final MAX_NUMBER_DAYS_IN_MONTH:I = 0x1f

.field private static final VIEWABILITY_TIMER_MILLIS:J = 0xbb8L


# instance fields
.field private mAdContainerLayout:Landroid/widget/FrameLayout;

.field private mAdWantsCustomCloseButton:Z

.field private mCheckViewabilityTask:Ljava/lang/Runnable;

.field private mCloseButton:Landroid/widget/ImageView;

.field protected mDensity:F

.field private mExpansionLayout:Landroid/widget/RelativeLayout;

.field private final mExpansionStyle:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

.field private mHandler:Landroid/os/Handler;

.field private mIsViewable:Z

.field private final mNativeCloseButtonStyle:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

.field private mOrientationBroadcastReceiver:Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;

.field private final mOriginalRequestedOrientation:I

.field private mPlaceholderView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field private mTwoPartExpansionView:Lcom/fusepowered/m2/m2l/MraidView;

.field private mViewIndexInParent:I

.field private mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 111
    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 112
    const-string v2, "yyyy-MM-dd\'T\'HH:mmZZZZZ"

    aput-object v2, v0, v1

    .line 110
    sput-object v0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->DATE_FORMATS:[Ljava/lang/String;

    .line 114
    return-void
.end method

.method constructor <init>(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;)V
    .locals 3
    .param p1, "view"    # Lcom/fusepowered/m2/m2l/MraidView;
    .param p2, "expStyle"    # Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;
    .param p3, "buttonStyle"    # Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    .prologue
    const/4 v2, -0x1

    .line 183
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidAbstractController;-><init>(Lcom/fusepowered/m2/m2l/MraidView;)V

    .line 117
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 135
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$1;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    .line 148
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;

    .line 155
    new-instance v1, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;)V

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mOrientationBroadcastReceiver:Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;

    .line 167
    iput v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenWidth:I

    .line 170
    iput v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenHeight:I

    .line 184
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionStyle:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    .line 185
    iput-object p3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    .line 187
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 189
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 188
    :goto_0
    iput v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mOriginalRequestedOrientation:I

    .line 192
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->createAdContainerLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    .line 193
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->createExpansionLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    .line 194
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->createPlaceholderView()Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    .line 196
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->initialize()V

    .line 197
    return-void

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    move v1, v2

    .line 190
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mIsViewable:Z

    return v0
.end method

.method static synthetic access$1(Lcom/fusepowered/m2/m2l/MraidDisplayController;Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mIsViewable:Z

    return-void
.end method

.method static synthetic access$2(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/fusepowered/m2/m2l/MraidDisplayController;)I
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getDisplayRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/fusepowered/m2/m2l/MraidDisplayController;I)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->onOrientationChanged(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/fusepowered/m2/m2l/MraidDisplayController;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    invoke-direct {p0, p1, p2}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->showUserToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->downloadImage(Ljava/lang/String;)V

    return-void
.end method

.method private dayNumberToDayOfMonthString(I)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 669
    if-eqz p1, :cond_0

    const/16 v1, -0x1f

    if-lt p1, v1, :cond_0

    const/16 v1, 0x1f

    if-gt p1, v1, :cond_0

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "dayOfMonth":Ljava/lang/String;
    return-object v0

    .line 672
    .end local v0    # "dayOfMonth":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid day of month "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private dayNumberToDayOfWeekString(I)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 653
    packed-switch p1, :pswitch_data_0

    .line 661
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invalid day of week "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :pswitch_0
    const-string v0, "SU"

    .line 663
    .local v0, "dayOfWeek":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 655
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_1
    const-string v0, "MO"

    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 656
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_2
    const-string v0, "TU"

    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 657
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_3
    const-string v0, "WE"

    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 658
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_4
    const-string v0, "TH"

    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 659
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_5
    const-string v0, "FR"

    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 660
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    :pswitch_6
    const-string v0, "SA"

    .restart local v0    # "dayOfWeek":Ljava/lang/String;
    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private downloadImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getPictureStoragePath()Ljava/io/File;

    move-result-object v0

    .line 378
    .local v0, "pictureStoragePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 380
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$4;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 430
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 431
    return-void
.end method

.method private expandLayouts(Landroid/view/View;II)V
    .locals 6
    .param p1, "expansionContentView"    # Landroid/view/View;
    .param p2, "expandWidth"    # I
    .param p3, "expandHeight"    # I

    .prologue
    const/4 v5, -0x1

    .line 694
    const/high16 v3, 0x42480000

    iget v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mDensity:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 695
    .local v0, "closeButtonSize":I
    if-ge p2, v0, :cond_0

    move p2, v0

    .line 696
    :cond_0
    if-ge p3, v0, :cond_1

    move p3, v0

    .line 698
    :cond_1
    new-instance v1, Landroid/view/View;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 699
    .local v1, "dimmingView":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 700
    new-instance v3, Lcom/fusepowered/m2/m2l/MraidDisplayController$6;

    invoke-direct {v3, p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$6;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 706
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 707
    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 706
    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 710
    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 709
    invoke-virtual {v3, p1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 713
    .local v2, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 714
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 790
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayRotation()I
    .locals 3

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 237
    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 236
    check-cast v0, Landroid/view/WindowManager;

    .line 238
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    return v1
.end method

.method private getFileNameForUriAndHttpResponse(Ljava/net/URI;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 9
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 809
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 811
    .local v5, "path":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 812
    const/4 v6, 0x0

    .line 832
    :goto_0
    return-object v6

    .line 815
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 817
    .local v3, "filename":Ljava/lang/String;
    const-string v6, "Content-Type"

    invoke-interface {p2, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 818
    .local v4, "header":Lorg/apache/http/Header;
    if-eqz v4, :cond_1

    .line 819
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 820
    .local v2, "fields":[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v6, :cond_2

    .end local v2    # "fields":[Ljava/lang/String;
    :cond_1
    :goto_2
    move-object v6, v3

    .line 832
    goto :goto_0

    .line 820
    .restart local v2    # "fields":[Ljava/lang/String;
    :cond_2
    aget-object v1, v2, v7

    .line 822
    .local v1, "field":Ljava/lang/String;
    const-string v8, "image/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 823
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 825
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 827
    goto :goto_2

    .line 820
    .end local v0    # "extension":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method private getPictureStoragePath()Ljava/io/File;
    .locals 3

    .prologue
    .line 805
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "Pictures"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->LOADING:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 201
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->initializeScreenMetrics()V

    .line 202
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->initializeViewabilityTimer()V

    .line 203
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mOrientationBroadcastReceiver:Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method private initializeScreenMetrics()V
    .locals 19

    .prologue
    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 208
    .local v4, "context":Landroid/content/Context;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    const-string v13, "window"

    invoke-virtual {v4, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 210
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 211
    iget v13, v6, Landroid/util/DisplayMetrics;->density:F

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mDensity:F

    .line 213
    const/4 v8, 0x0

    .local v8, "statusBarHeight":I
    const/4 v9, 0x0

    .line 214
    .local v9, "titleBarHeight":I
    instance-of v13, v4, Landroid/app/Activity;

    if-eqz v13, :cond_0

    .line 215
    move-object v0, v4

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    .line 216
    .local v2, "activity":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 217
    .local v11, "window":Landroid/view/Window;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 218
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 219
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 220
    const v13, 0x1020002

    invoke-virtual {v11, v13}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v3

    .line 221
    .local v3, "contentViewTop":I
    sub-int v9, v3, v8

    .line 224
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "contentViewTop":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v11    # "window":Landroid/view/Window;
    :cond_0
    iget v10, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 225
    .local v10, "widthPixels":I
    iget v13, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v13, v8

    sub-int v5, v13, v9

    .line 226
    .local v5, "heightPixels":I
    int-to-double v13, v10

    const-wide/high16 v15, 0x4064000000000000L

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-int v13, v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenWidth:I

    .line 227
    int-to-double v13, v5

    const-wide/high16 v15, 0x4064000000000000L

    move-object v0, v6

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v15, v15, v17

    mul-double/2addr v13, v15

    double-to-int v13, v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenHeight:I

    .line 228
    return-void
.end method

.method private initializeViewabilityTimer()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 3
    .param p1, "currentRotation"    # I

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->initializeScreenMetrics()V

    .line 243
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    .line 244
    iget v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;->createWithSize(II)Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    .line 245
    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 555
    .local v1, "result":Ljava/util/Date;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/fusepowered/m2/m2l/MraidDisplayController;->DATE_FORMATS:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 565
    :cond_0
    return-object v1

    .line 557
    :cond_1
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Lcom/fusepowered/m2/m2l/MraidDisplayController;->DATE_FORMATS:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 558
    if-nez v1, :cond_0

    .line 555
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private parseRecurrenceRule(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, -0x1

    const-string v10, "daysInWeek"

    const-string v9, "daysInMonth"

    const-string v8, "INTERVAL="

    const-string v7, ";"

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v3, "rule":Ljava/lang/StringBuilder;
    const-string v5, "frequency"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 571
    const-string v5, "frequency"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 572
    .local v0, "frequency":Ljava/lang/String;
    const/4 v1, -0x1

    .line 573
    .local v1, "interval":I
    const-string v5, "interval"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 574
    const-string v5, "interval"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 576
    :cond_0
    const-string v5, "daily"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 577
    const-string v5, "FREQ=DAILY;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    if-eq v1, v6, :cond_1

    .line 579
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INTERVAL="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .end local v0    # "frequency":Ljava/lang/String;
    .end local v1    # "interval":I
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 581
    .restart local v0    # "frequency":Ljava/lang/String;
    .restart local v1    # "interval":I
    :cond_2
    const-string v5, "weekly"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 582
    const-string v5, "FREQ=WEEKLY;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    if-eq v1, v6, :cond_3

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INTERVAL="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_3
    const-string v5, "daysInWeek"

    invoke-interface {p1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 587
    const-string v5, "daysInWeek"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->translateWeekIntegersToDays(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "weekdays":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 589
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid "

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 591
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BYDAY="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 593
    .end local v4    # "weekdays":Ljava/lang/String;
    :cond_5
    const-string v5, "monthly"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 594
    const-string v5, "FREQ=MONTHLY;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    if-eq v1, v6, :cond_6

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "INTERVAL="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :cond_6
    const-string v5, "daysInMonth"

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 599
    const-string v5, "daysInMonth"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->translateMonthIntegersToDays(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "monthDays":Ljava/lang/String;
    if-nez v2, :cond_7

    .line 601
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 603
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BYMONTHDAY="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 606
    .end local v2    # "monthDays":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "frequency is only supported for daily, weekly, and monthly."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private resetViewToDefaultState()V
    .locals 3

    .prologue
    .line 291
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    .line 292
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 293
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    .line 294
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 296
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->requestLayout()V

    .line 298
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 299
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    iget v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewIndexInParent:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 300
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 301
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 302
    return-void
.end method

.method private setOrientationLockEnabled(Z)V
    .locals 7
    .param p1, "enabled"    # Z

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 719
    .local v2, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 721
    .local v1, "activity":Landroid/app/Activity;
    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 722
    if-eqz p1, :cond_0

    .line 723
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    move v4, v5

    .line 725
    .local v4, "requestedOrientation":I
    :goto_0
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 729
    .end local v4    # "requestedOrientation":I
    :goto_1
    return-void

    .line 724
    :cond_0
    iget v5, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mOriginalRequestedOrientation:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    .line 726
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 727
    .local v3, "e":Ljava/lang/ClassCastException;
    const-string v5, "MraidDisplayController"

    const-string v6, "Unable to modify device orientation."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showUserDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 434
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .local v0, "alertDialogDownloadImage":Landroid/app/AlertDialog$Builder;
    const-string v1, "Save Image"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 437
    const-string v2, "Download image to Picture gallery?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 438
    const-string v2, "Cancel"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 439
    const-string v2, "Okay"

    new-instance v3, Lcom/fusepowered/m2/m2l/MraidDisplayController$5;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController$5;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 445
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 446
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 447
    return-void
.end method

.method private showUserToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fusepowered/m2/m2l/MraidDisplayController$3;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController$3;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method

.method private swapViewWithPlaceholderView()V
    .locals 7

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/MraidView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 679
    .local v2, "parent":Landroid/view/ViewGroup;
    if-nez v2, :cond_0

    .line 691
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 683
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_2

    .line 687
    :cond_1
    iput v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewIndexInParent:I

    .line 688
    iget-object v3, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mPlaceholderView:Landroid/widget/FrameLayout;

    .line 689
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fusepowered/m2/m2l/MraidView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fusepowered/m2/m2l/MraidView;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 688
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 690
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 684
    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private translateJSParamsToAndroidCalendarEventMapping(Ljava/util/Map;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "summary"

    const-string v8, "location"

    const-string v7, "end"

    const-string v6, "description"

    const-string v5, "start"

    .line 504
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    .local v2, "validatedParamsMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "description"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "start"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 506
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing start and description fields"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 509
    :cond_1
    const-string v3, "title"

    const-string v4, "description"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v3, "start"

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "start"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 512
    const-string v3, "start"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 513
    .local v1, "startDateTime":Ljava/util/Date;
    if-eqz v1, :cond_6

    .line 514
    const-string v3, "beginTime"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v3, "end"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "end"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 523
    const-string v3, "end"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 524
    .local v0, "endDateTime":Ljava/util/Date;
    if-eqz v0, :cond_8

    .line 525
    const-string v3, "endTime"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .end local v0    # "endDateTime":Ljava/util/Date;
    :cond_2
    const-string v3, "location"

    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    const-string v3, "eventLocation"

    const-string v4, "location"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    :cond_3
    const-string v3, "summary"

    invoke-interface {p1, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 536
    const-string v3, "description"

    const-string v3, "summary"

    invoke-interface {p1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_4
    const-string v3, "transparency"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 541
    const-string v4, "availability"

    .line 542
    const-string v3, "transparency"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "transparent"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 543
    const/4 v3, 0x1

    .line 542
    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 540
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    :cond_5
    const-string v3, "rrule"

    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->parseRecurrenceRule(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-object v2

    .line 516
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid calendar event: start time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 519
    .end local v1    # "startDateTime":Ljava/util/Date;
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid calendar event: start is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 527
    .restart local v0    # "endDateTime":Ljava/util/Date;
    .restart local v1    # "startDateTime":Ljava/util/Date;
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid calendar event: end time is malformed. Date format expecting (yyyy-MM-DDTHH:MM:SS-xx:xx) or (yyyy-MM-DDTHH:MM-xx:xx) i.e. 2013-08-14T09:00:01-08:00"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 544
    .end local v0    # "endDateTime":Ljava/util/Date;
    :cond_9
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private translateMonthIntegersToDays(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-string v8, ","

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v3, "daysResult":Ljava/lang/StringBuilder;
    const/16 v5, 0x3f

    new-array v2, v5, [Z

    .line 635
    .local v2, "daysAlreadyCounted":[Z
    const-string v5, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, "days":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 644
    array-length v5, v1

    if-nez v5, :cond_2

    .line 645
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "must have at least 1 day of the month if specifying repeating weekly"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 638
    :cond_0
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 639
    .local v0, "dayNumber":I
    add-int/lit8 v5, v0, 0x1f

    aget-boolean v5, v2, v5

    if-nez v5, :cond_1

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->dayNumberToDayOfMonthString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    add-int/lit8 v5, v0, 0x1f

    aput-boolean v7, v2, v5

    .line 637
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 647
    .end local v0    # "dayNumber":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private translateWeekIntegersToDays(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const-string v9, ","

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v3, "daysResult":Ljava/lang/StringBuilder;
    new-array v2, v8, [Z

    .line 615
    .local v2, "daysAlreadyCounted":[Z
    const-string v5, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "days":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 625
    array-length v5, v1

    if-nez v5, :cond_3

    .line 626
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "must have at least 1 day of the week if specifying repeating weekly"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 618
    :cond_0
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 619
    .local v0, "dayNumber":I
    if-ne v0, v8, :cond_1

    const/4 v5, 0x0

    move v0, v5

    .line 620
    :cond_1
    aget-boolean v5, v2, v0

    if-nez v5, :cond_2

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->dayNumberToDayOfWeekString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    aput-boolean v7, v2, v0

    .line 617
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    .end local v0    # "dayNumber":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected checkViewable()Z
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x1

    return v0
.end method

.method protected close()V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->EXPANDED:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    if-ne v0, v1, :cond_2

    .line 275
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->resetViewToDefaultState()V

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->setOrientationLockEnabled(Z)V

    .line 277
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->DEFAULT:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 278
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidStateProperty;->createWithViewState(Lcom/fusepowered/m2/m2l/MraidView$ViewState;)Lcom/fusepowered/m2/m2l/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    .line 285
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getMraidListener()Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getMraidListener()Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView$MraidListener;->onClose(Lcom/fusepowered/m2/m2l/MraidView;Lcom/fusepowered/m2/m2l/MraidView$ViewState;)V

    .line 288
    :cond_1
    return-void

    .line 279
    :cond_2
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->DEFAULT:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->setVisibility(I)V

    .line 281
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 282
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidStateProperty;->createWithViewState(Lcom/fusepowered/m2/m2l/MraidView$ViewState;)Lcom/fusepowered/m2/m2l/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    goto :goto_0
.end method

.method createAdContainerLayout()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 778
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected createCalendarEvent(Ljava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "could not create calendar event"

    const-string v11, "MraidDisplayController"

    .line 470
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fusepowered/m2/m2l/MraidView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 471
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Lcom/fusepowered/m2/m2l/util/Mraids;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 473
    :try_start_0
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->translateJSParamsToAndroidCalendarEventMapping(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 474
    .local v1, "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.INSERT"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "vnd.android.cursor.item/event"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 475
    .local v5, "intent":Landroid/content/Intent;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 485
    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    invoke-virtual {v2, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 501
    .end local v1    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 475
    .restart local v1    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 476
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 477
    .local v7, "value":Ljava/lang/Object;
    instance-of v9, v7, Ljava/lang/Long;

    if-eqz v9, :cond_1

    .line 478
    check-cast v7, Ljava/lang/Long;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 487
    .end local v1    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "key":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 488
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v8, "MraidDisplayController"

    const-string v8, "no calendar app installed"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v10, "Action is unsupported on this device - no calendar app installed"

    invoke-virtual {v8, v9, v10}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_1

    .line 479
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v9, v7, Ljava/lang/Integer;

    if-eqz v9, :cond_2

    .line 480
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 490
    .end local v1    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "key":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v4, v8

    .line 491
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    const-string v8, "MraidDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "create calendar: invalid parameters "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_1

    .line 482
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_2
    check-cast v7, Ljava/lang/String;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 493
    .end local v1    # "calendarParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "key":Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v3, v8

    .line 494
    .local v3, "exception":Ljava/lang/Exception;
    const-string v8, "MraidDisplayController"

    const-string v8, "could not create calendar event"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v10, "could not create calendar event"

    invoke-virtual {v8, v9, v12}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_1

    .line 498
    .end local v3    # "exception":Ljava/lang/Exception;
    :cond_3
    const-string v8, "MraidDisplayController"

    const-string v8, "unsupported action createCalendarEvent for devices pre-ICS"

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v8

    sget-object v9, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v10, "Action is unsupported on this device (need Android version Ice Cream Sandwich or above)"

    invoke-virtual {v8, v9, v10}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method createExpansionLayout()Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 782
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method createPlaceholderView()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 786
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCheckViewabilityTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mOrientationBroadcastReceiver:Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;

    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController$OrientationBroadcastReceiver;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    return-void

    .line 251
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 252
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    throw v0
.end method

.method protected expand(Ljava/lang/String;IIZZ)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "shouldUseCustomClose"    # Z
    .param p5, "shouldLockOrientation"    # Z

    .prologue
    const/4 v7, -0x1

    .line 306
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionStyle:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->DISABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    if-ne v0, v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 309
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->EXPAND:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "URL passed to expand() was invalid."

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    .line 318
    invoke-virtual {p0, p4}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->useCustomClose(Z)V

    .line 319
    invoke-direct {p0, p5}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->setOrientationLockEnabled(Z)V

    .line 320
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->swapViewWithPlaceholderView()V

    .line 322
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v6

    .line 323
    .local v6, "expansionContentView":Landroid/view/View;
    if-eqz p1, :cond_3

    .line 324
    new-instance v0, Lcom/fusepowered/m2/m2l/MraidView;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fusepowered/m2/m2l/MraidView;->getAdConfiguration()Lcom/fusepowered/m2/m2l/AdConfiguration;

    move-result-object v2

    sget-object v3, Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;->DISABLED:Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;

    .line 325
    sget-object v4, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->AD_CONTROLLED:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    sget-object v5, Lcom/fusepowered/m2/m2l/MraidView$PlacementType;->INLINE:Lcom/fusepowered/m2/m2l/MraidView$PlacementType;

    invoke-direct/range {v0 .. v5}, Lcom/fusepowered/m2/m2l/MraidView;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/m2l/AdConfiguration;Lcom/fusepowered/m2/m2l/MraidView$ExpansionStyle;Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;Lcom/fusepowered/m2/m2l/MraidView$PlacementType;)V

    .line 324
    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mTwoPartExpansionView:Lcom/fusepowered/m2/m2l/MraidView;

    .line 326
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mTwoPartExpansionView:Lcom/fusepowered/m2/m2l/MraidView;

    new-instance v1, Lcom/fusepowered/m2/m2l/MraidDisplayController$2;

    invoke-direct {v1, p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$2;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;)V

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->setMraidListener(Lcom/fusepowered/m2/m2l/MraidView$MraidListener;)V

    .line 331
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mTwoPartExpansionView:Lcom/fusepowered/m2/m2l/MraidView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m2/m2l/MraidView;->loadUrl(Ljava/lang/String;)V

    .line 332
    iget-object v6, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mTwoPartExpansionView:Lcom/fusepowered/m2/m2l/MraidView;

    .line 335
    :cond_3
    int-to-float v0, p2

    iget v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, p3

    iget v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v6, v0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->expandLayouts(Landroid/view/View;II)V

    .line 336
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mExpansionLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 337
    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ALWAYS_VISIBLE:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_4

    .line 340
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    if-nez v0, :cond_5

    .line 341
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mNativeCloseButtonStyle:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;->ALWAYS_HIDDEN:Lcom/fusepowered/m2/m2l/MraidView$NativeCloseButtonStyle;

    if-eq v0, v1, :cond_5

    .line 342
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->setNativeCloseButtonEnabled(Z)V

    .line 345
    :cond_5
    sget-object v0, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->EXPANDED:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 346
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidStateProperty;->createWithViewState(Lcom/fusepowered/m2/m2l/MraidView$ViewState;)Lcom/fusepowered/m2/m2l/MraidStateProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    .line 347
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getMraidListener()Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/MraidView;->getMraidListener()Lcom/fusepowered/m2/m2l/MraidView$MraidListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/fusepowered/m2/m2l/MraidView$MraidListener;->onExpand(Lcom/fusepowered/m2/m2l/MraidView;)V

    goto/16 :goto_0
.end method

.method protected getCurrentPosition()V
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_CURRENT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getCurrentPosition"

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method protected getDefaultPosition()V
    .locals 3

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_DEFAULT_POSITION:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getDefaultPosition"

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method protected getMaxSize()V
    .locals 3

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_MAX_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getMaxSize"

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method protected getScreenSize()V
    .locals 3

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v0

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->GET_SCREEN_SIZE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v2, "Unsupported action getScreenSize"

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method protected initializeJavaScriptState()V
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "properties":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fusepowered/m2/m2l/MraidProperty;>;"
    iget v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenWidth:I

    iget v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;->createWithSize(II)Lcom/fusepowered/m2/m2l/MraidScreenSizeProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-boolean v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mIsViewable:Z

    invoke-static {v1}, Lcom/fusepowered/m2/m2l/MraidViewableProperty;->createWithViewable(Z)Lcom/fusepowered/m2/m2l/MraidViewableProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperties(Ljava/util/ArrayList;)V

    .line 264
    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->DEFAULT:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    iput-object v1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    .line 265
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    invoke-static {v2}, Lcom/fusepowered/m2/m2l/MraidStateProperty;->createWithViewState(Lcom/fusepowered/m2/m2l/MraidView$ViewState;)Lcom/fusepowered/m2/m2l/MraidStateProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    .line 266
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->initializeSupportedFunctionsProperty()V

    .line 267
    return-void
.end method

.method protected initializeSupportedFunctionsProperty()V
    .locals 4

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 795
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    .line 796
    new-instance v2, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;

    invoke-direct {v2}, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;-><init>()V

    .line 797
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Mraids;->isTelAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->withTel(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;

    move-result-object v2

    .line 798
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Mraids;->isSmsAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->withSms(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;

    move-result-object v2

    .line 799
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Mraids;->isCalendarAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->withCalendar(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;

    move-result-object v2

    .line 800
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Mraids;->isInlineVideoAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->withInlineVideo(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;

    move-result-object v2

    .line 801
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/fusepowered/m2/m2l/MraidSupportsProperty;->withStorePicture(Z)Lcom/fusepowered/m2/m2l/MraidSupportsProperty;

    move-result-object v2

    .line 795
    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/MraidView;->fireChangeEventForProperty(Lcom/fusepowered/m2/m2l/MraidProperty;)V

    .line 802
    return-void
.end method

.method protected isExpanded()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mViewState:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    sget-object v1, Lcom/fusepowered/m2/m2l/MraidView$ViewState;->EXPANDED:Lcom/fusepowered/m2/m2l/MraidView$ViewState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setNativeCloseButtonEnabled(Z)V
    .locals 9
    .param p1, "enabled"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 732
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    if-nez v4, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    if-eqz p1, :cond_3

    .line 735
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    if-nez v4, :cond_2

    .line 736
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 737
    .local v2, "states":Landroid/graphics/drawable/StateListDrawable;
    new-array v4, v8, [I

    const v5, -0x10100a7

    aput v5, v4, v7

    sget-object v5, Lcom/fusepowered/m2/m2l/resource/Drawables;->INTERSTITIAL_CLOSE_BUTTON_NORMAL:Lcom/fusepowered/m2/m2l/resource/Drawables;

    iget-object v6, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 738
    new-array v4, v8, [I

    const v5, 0x10100a7

    aput v5, v4, v7

    sget-object v5, Lcom/fusepowered/m2/m2l/resource/Drawables;->INTERSTITIAL_CLOSE_BUTTON_PRESSED:Lcom/fusepowered/m2/m2l/resource/Drawables;

    iget-object v6, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fusepowered/m2/m2l/resource/Drawables;->decodeImage(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 739
    new-instance v4, Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    .line 740
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 742
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/fusepowered/m2/m2l/MraidDisplayController$7;

    invoke-direct {v5, p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController$7;-><init>(Lcom/fusepowered/m2/m2l/MraidDisplayController;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    .end local v2    # "states":Landroid/graphics/drawable/StateListDrawable;
    :cond_2
    const/high16 v4, 0x42480000

    iget v5, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mDensity:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 750
    .local v1, "buttonSize":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 751
    const/4 v4, 0x5

    .line 750
    invoke-direct {v0, v1, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 752
    .local v0, "buttonLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 757
    .end local v0    # "buttonLayout":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "buttonSize":I
    :goto_1
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v3

    .line 758
    .local v3, "view":Lcom/fusepowered/m2/m2l/MraidView;
    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/MraidView;->getOnCloseButtonStateChangeListener()Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 759
    invoke-virtual {v3}, Lcom/fusepowered/m2/m2l/MraidView;->getOnCloseButtonStateChangeListener()Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v4

    invoke-interface {v4, v3, p1}, Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/fusepowered/m2/m2l/MraidView;Z)V

    goto :goto_0

    .line 754
    .end local v3    # "view":Lcom/fusepowered/m2/m2l/MraidView;
    :cond_3
    iget-object v4, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdContainerLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected showUserDownloadImageAlert(Ljava/lang/String;)V
    .locals 5
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    const-string v4, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    .line 351
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/fusepowered/m2/m2l/util/Mraids;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    sget-object v2, Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;->STORE_PICTURE:Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;

    const-string v3, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-virtual {v1, v2, v4}, Lcom/fusepowered/m2/m2l/MraidView;->fireErrorEvent(Lcom/fusepowered/m2/m2l/MraidCommandFactory$MraidJavascriptCommand;Ljava/lang/String;)V

    .line 354
    const-string v1, "MoPub"

    const-string v2, "Error downloading file - the device does not have an SD card mounted, or the Android permission is not granted."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 358
    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 359
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->showUserDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_1
    const-string v1, "Downloading image to Picture gallery..."

    invoke-direct {p0, v1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->showUserToast(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->downloadImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected showVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoUrl"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fusepowered/m2/m2l/M2RvpActivity;->startMraid(Landroid/content/Context;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method protected useCustomClose(Z)V
    .locals 3
    .param p1, "shouldUseCustomCloseButton"    # Z

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/fusepowered/m2/m2l/MraidDisplayController;->mAdWantsCustomCloseButton:Z

    .line 766
    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/MraidDisplayController;->getMraidView()Lcom/fusepowered/m2/m2l/MraidView;

    move-result-object v1

    .line 767
    .local v1, "view":Lcom/fusepowered/m2/m2l/MraidView;
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v0, v2

    .line 768
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getOnCloseButtonStateChangeListener()Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 769
    invoke-virtual {v1}, Lcom/fusepowered/m2/m2l/MraidView;->getOnCloseButtonStateChangeListener()Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/fusepowered/m2/m2l/MraidView$OnCloseButtonStateChangeListener;->onCloseButtonStateChange(Lcom/fusepowered/m2/m2l/MraidView;Z)V

    .line 771
    :cond_0
    return-void

    .line 767
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method
