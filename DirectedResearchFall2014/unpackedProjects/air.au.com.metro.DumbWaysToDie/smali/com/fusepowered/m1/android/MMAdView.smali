.class public final Lcom/fusepowered/m1/android/MMAdView;
.super Lcom/fusepowered/m1/android/MMLayout;
.source "MMAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusepowered/m1/android/MMAdView$BannerBounds;,
        Lcom/fusepowered/m1/android/MMAdView$ResizeView;,
        Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;,
        Lcom/fusepowered/m1/android/MMAdView$MMAdViewWebViewClientListener;
    }
.end annotation


# static fields
.field static final DEFAULT_RESIZE_PARAM_VALUES:I = -0x32

.field public static final TRANSITION_DOWN:I = 0x3

.field public static final TRANSITION_FADE:I = 0x1

.field public static final TRANSITION_NONE:I = 0x0

.field public static final TRANSITION_RANDOM:I = 0x4

.field public static final TRANSITION_UP:I = 0x2


# instance fields
.field height:I

.field oldHeight:I

.field oldWidth:I

.field refreshAnimationimageView:Landroid/widget/ImageView;

.field transitionType:I

.field view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/16 v1, -0x32

    .line 59
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/fusepowered/m1/android/MMAdView;->transitionType:I

    .line 45
    iput v2, p0, Lcom/fusepowered/m1/android/MMAdView;->height:I

    .line 46
    iput v2, p0, Lcom/fusepowered/m1/android/MMAdView;->width:I

    .line 528
    iput v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    .line 529
    iput v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    .line 60
    new-instance v0, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/fusepowered/m1/android/MMAdView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    .line 61
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fusepowered/m1/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v4, -0x32

    const/4 v5, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/fusepowered/m1/android/MMLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v3, 0x4

    iput v3, p0, Lcom/fusepowered/m1/android/MMAdView;->transitionType:I

    .line 45
    iput v5, p0, Lcom/fusepowered/m1/android/MMAdView;->height:I

    .line 46
    iput v5, p0, Lcom/fusepowered/m1/android/MMAdView;->width:I

    .line 528
    iput v4, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    .line 529
    iput v4, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    .line 88
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 90
    const-string v3, "Creating MMAdView from XML layout."

    invoke-static {v3}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 91
    new-instance v3, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;

    invoke-direct {v3, p0, p1}, Lcom/fusepowered/m1/android/MMAdView$MMAdViewMMAdImpl;-><init>(Lcom/fusepowered/m1/android/MMAdView;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    .line 92
    if-eqz p2, :cond_3

    .line 94
    const-string v1, "http://millennialmedia.com/android/schema"

    .line 95
    .local v1, "namespace":Ljava/lang/String;
    const-string v3, "apid"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/MMAdView;->setApid(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const-string v4, "ignoreDensityScaling"

    invoke-interface {p2, v1, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/fusepowered/m1/android/MMAdImpl;->ignoreDensityScaling:Z

    .line 97
    const-string v3, "height"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "heightIn":Ljava/lang/String;
    const-string v3, "width"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "widthIn":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/fusepowered/m1/android/MMAdView;->height:I

    .line 105
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/fusepowered/m1/android/MMAdView;->width:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    if-eqz v3, :cond_2

    .line 116
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "age"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->age:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "children"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->children:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "education"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->education:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "ethnicity"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->ethnicity:Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "gender"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->gender:Ljava/lang/String;

    .line 121
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "income"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->income:Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "keywords"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->keywords:Ljava/lang/String;

    .line 123
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "orientation"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->orientation:Ljava/lang/String;

    .line 124
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "marital"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->marital:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "politics"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->politics:Ljava/lang/String;

    .line 126
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "vendor"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->vendor:Ljava/lang/String;

    .line 127
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v3, v3, Lcom/fusepowered/m1/android/MMAdImpl;->mmRequest:Lcom/fusepowered/m1/android/MMRequest;

    const-string v4, "zip"

    invoke-interface {p2, v1, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/fusepowered/m1/android/MMRequest;->zip:Ljava/lang/String;

    .line 129
    :cond_2
    const-string v3, "goalId"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->goalId:Ljava/lang/String;

    .line 131
    .end local v0    # "heightIn":Ljava/lang/String;
    .end local v1    # "namespace":Ljava/lang/String;
    .end local v2    # "widthIn":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/fusepowered/m1/android/MMAdImpl;->xmlLayout:Z

    .line 132
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdView;->init(Landroid/content/Context;)V

    .line 137
    :goto_1
    return-void

    .line 135
    :cond_4
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdView;->initEclipseAd(Landroid/content/Context;)V

    goto :goto_1

    .line 109
    .restart local v0    # "heightIn":Ljava/lang/String;
    .restart local v1    # "namespace":Ljava/lang/String;
    .restart local v2    # "widthIn":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/fusepowered/m1/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/MMAdView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fusepowered/m1/android/MMAdView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m1/android/MMAdView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    return-void
.end method

.method private declared-synchronized attachToWindow(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/fusepowered/m1/android/MMAdView;->detachFromParent(Landroid/view/View;)V

    .line 588
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 589
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    instance-of v6, v2, Landroid/app/Activity;

    if-eqz v6, :cond_0

    .line 591
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 592
    .local v1, "activity":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 593
    .local v5, "win":Landroid/view/Window;
    if-eqz v5, :cond_0

    .line 595
    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 596
    .local v3, "decorView":Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    .line 598
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 599
    .local v4, "group":Landroid/view/ViewGroup;
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v3    # "decorView":Landroid/view/View;
    .end local v4    # "group":Landroid/view/ViewGroup;
    .end local v5    # "win":Landroid/view/Window;
    :cond_0
    monitor-exit p0

    return-void

    .line 587
    .end local v2    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private callSetTranslationX(I)V
    .locals 6
    .param p1, "translationX"    # I

    .prologue
    .line 696
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setTranslationX"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 697
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 698
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private callSetTranslationY(I)V
    .locals 6
    .param p1, "translationY"    # I

    .prologue
    .line 707
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "setTranslationY"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 708
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized detachFromParent(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 571
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 574
    .local v2, "parent":Landroid/view/ViewParent;
    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 576
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 577
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 579
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_0
    monitor-exit p0

    return-void

    .line 571
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getAdInternal()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->requestAd()V

    .line 504
    :cond_0
    return-void
.end method

.method private hasDefaultResizeParams()Z
    .locals 2

    .prologue
    const/16 v1, -0x32

    .line 734
    iget v0, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMAdView;->setBackgroundColor(I)V

    .line 153
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    const-string v1, "b"

    iput-object v1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->adType:Ljava/lang/String;

    .line 154
    invoke-virtual {p0, p0}, Lcom/fusepowered/m1/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMAdView;->setFocusable(Z)V

    .line 159
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m1/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    return-void
.end method

.method private initEclipseAd(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    new-instance v8, Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v8, "logoForXML":Landroid/widget/ImageView;
    const-string v6, "http://images.millennialmedia.com/9513/192134.gif"

    .line 170
    .local v6, "imageUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 171
    .local v7, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 174
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_0
    const-string v11, "java.io.tmpdir"

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "dir":Ljava/lang/String;
    if-eqz v4, :cond_0

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "millenial355jns6u3l1nmedia.png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 183
    new-instance v11, Ljava/net/URL;

    const-string v12, "http://images.millennialmedia.com/9513/192134.gif"

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 184
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 185
    const/16 v11, 0x2710

    invoke-virtual {v3, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 186
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 188
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 189
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v9    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    const/16 v11, 0x400

    :try_start_1
    new-array v1, v11, [B

    .line 191
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 192
    .local v2, "bytesRead":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_3

    .line 194
    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 203
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    :catch_0
    move-exception v11

    move-object v9, v10

    .line 210
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :goto_1
    if-eqz v7, :cond_1

    .line 212
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_1
    if-eqz v9, :cond_2

    .line 216
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 222
    :cond_2
    :goto_2
    invoke-virtual {p0, v8}, Lcom/fusepowered/m1/android/MMAdView;->addView(Landroid/view/View;)V

    .line 223
    return-void

    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :cond_3
    move-object v9, v10

    .line 197
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :cond_4
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    .line 201
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    :cond_5
    if-eqz v7, :cond_6

    .line 212
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_6
    if-eqz v9, :cond_2

    .line 216
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 218
    :catch_1
    move-exception v11

    goto :goto_2

    .line 208
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :catchall_0
    move-exception v11

    .line 210
    :goto_3
    if-eqz v7, :cond_7

    .line 212
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 214
    :cond_7
    if-eqz v9, :cond_8

    .line 216
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 220
    :cond_8
    :goto_4
    throw v11

    .line 218
    :catch_2
    move-exception v12

    goto :goto_4

    .line 208
    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v10    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 218
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :catch_3
    move-exception v11

    goto :goto_2

    .line 203
    :catch_4
    move-exception v11

    goto :goto_1
.end method

.method private setUnresizeParameters()V
    .locals 2

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 719
    .local v0, "oldParams":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    .line 720
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    .line 721
    iget v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    if-gtz v1, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    .line 725
    :cond_0
    iget v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    if-gtz v1, :cond_1

    .line 727
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    .line 730
    .end local v0    # "oldParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic addBlackView()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMLayout;->addBlackView()V

    return-void
.end method

.method closeAreaTouched()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMAdImpl;->unresizeToDefault()V

    .line 297
    return-void
.end method

.method public getAd()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMAdView;->getAd(Lcom/fusepowered/m1/android/RequestListener;)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdView;->getAdInternal()V

    goto :goto_0
.end method

.method public getAd(Lcom/fusepowered/m1/android/RequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fusepowered/m1/android/RequestListener;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iput-object p1, v0, Lcom/fusepowered/m1/android/MMAdImpl;->requestListener:Lcom/fusepowered/m1/android/RequestListener;

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdView;->getAdInternal()V

    .line 496
    return-void
.end method

.method public bridge synthetic getApid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMLayout;->getApid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIgnoresDensityScaling()Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMLayout;->getIgnoresDensityScaling()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getListener()Lcom/fusepowered/m1/android/RequestListener;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMLayout;->getListener()Lcom/fusepowered/m1/android/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMMRequest()Lcom/fusepowered/m1/android/MMRequest;
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMLayout;->getMMRequest()Lcom/fusepowered/m1/android/MMRequest;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized handleMraidResize(Lcom/fusepowered/m1/android/DTOResizeParameters;)V
    .locals 12
    .param p1, "resizeParams"    # Lcom/fusepowered/m1/android/DTOResizeParameters;

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 614
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 616
    iget-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    if-nez v8, :cond_0

    .line 618
    new-instance v8, Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;-><init>(Lcom/fusepowered/m1/android/MMAdView;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    .line 619
    iget-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    const v9, 0x121f0dbe

    invoke-virtual {v8, v9}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->setId(I)V

    .line 620
    iget-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    iget-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->setBackgroundColor(I)V

    .line 623
    :cond_0
    iget-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    invoke-virtual {v8}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 624
    .local v5, "parent":Landroid/view/ViewParent;
    if-nez v5, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 627
    .local v0, "adViewParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v8, v0, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 629
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "adViewParent":Landroid/view/ViewParent;
    iget-object v8, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 632
    :cond_1
    new-instance v1, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;

    invoke-direct {v1, p0, p1}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;-><init>(Lcom/fusepowered/m1/android/MMAdView;Lcom/fusepowered/m1/android/DTOResizeParameters;)V

    .line 634
    .local v1, "bounds":Lcom/fusepowered/m1/android/MMAdView$BannerBounds;
    iget-boolean v8, p1, Lcom/fusepowered/m1/android/DTOResizeParameters;->allowOffScreen:Z

    if-nez v8, :cond_2

    .line 636
    invoke-virtual {v1}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->calculateOnScreenBounds()V

    .line 639
    :cond_2
    const/4 v8, 0x2

    new-array v4, v8, [I

    .line 640
    .local v4, "location":[I
    invoke-virtual {p0, v4}, Lcom/fusepowered/m1/android/MMAdView;->getLocationInWindow([I)V

    .line 642
    invoke-direct {p0, p0}, Lcom/fusepowered/m1/android/MMAdView;->attachToWindow(Landroid/view/View;)V

    .line 643
    const/4 v8, 0x2

    new-array v3, v8, [I

    .line 644
    .local v3, "locAfterAttach":[I
    invoke-virtual {p0, v3}, Lcom/fusepowered/m1/android/MMAdView;->getLocationInWindow([I)V

    .line 646
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdView;->setUnresizeParameters()V

    .line 648
    const/4 v8, 0x0

    aget v8, v4, v8

    const/4 v9, 0x0

    aget v9, v3, v9

    sub-int v6, v8, v9

    .line 649
    .local v6, "xOld":I
    const/4 v8, 0x1

    aget v8, v4, v8

    const/4 v9, 0x1

    aget v9, v3, v9

    sub-int v7, v8, v9

    .line 651
    .local v7, "yOld":I
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 652
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->modifyLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 653
    iget v8, v1, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->translationX:I

    add-int/2addr v8, v6

    invoke-direct {p0, v8}, Lcom/fusepowered/m1/android/MMAdView;->callSetTranslationX(I)V

    .line 654
    iget v8, v1, Lcom/fusepowered/m1/android/MMAdView$BannerBounds;->translationY:I

    add-int/2addr v8, v7

    invoke-direct {p0, v8}, Lcom/fusepowered/m1/android/MMAdView;->callSetTranslationY(I)V

    .line 655
    iget-object v8, p1, Lcom/fusepowered/m1/android/DTOResizeParameters;->customClosePosition:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/fusepowered/m1/android/MMAdView;->setCloseArea(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    .end local v1    # "bounds":Lcom/fusepowered/m1/android/MMAdView$BannerBounds;
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "locAfterAttach":[I
    .end local v4    # "location":[I
    .end local v5    # "parent":Landroid/view/ViewParent;
    .end local v6    # "xOld":I
    .end local v7    # "yOld":I
    :cond_3
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method declared-synchronized handleUnresize()V
    .locals 5

    .prologue
    .line 661
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/fusepowered/m1/android/MMSDK;->hasSetTranslationMethod()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->removeCloseTouchDelegate()V

    .line 664
    invoke-direct {p0}, Lcom/fusepowered/m1/android/MMAdView;->hasDefaultResizeParams()Z

    move-result v4

    if-nez v4, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 667
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v4, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 668
    iget v4, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 669
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/fusepowered/m1/android/MMAdView;->callSetTranslationX(I)V

    .line 670
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/fusepowered/m1/android/MMAdView;->callSetTranslationY(I)V

    .line 671
    const/16 v4, -0x32

    iput v4, p0, Lcom/fusepowered/m1/android/MMAdView;->oldWidth:I

    .line 672
    const/16 v4, -0x32

    iput v4, p0, Lcom/fusepowered/m1/android/MMAdView;->oldHeight:I

    .line 674
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    if-eqz v4, :cond_2

    .line 676
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/fusepowered/m1/android/MMAdView;->isResizing:Z

    .line 677
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    invoke-virtual {v4, p0}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->attachToContext(Landroid/view/View;)V

    .line 678
    invoke-virtual {p0}, Lcom/fusepowered/m1/android/MMAdView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 679
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 681
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    .line 682
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    invoke-virtual {v4}, Lcom/fusepowered/m1/android/MMAdView$ResizeView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 684
    iget-object v4, p0, Lcom/fusepowered/m1/android/MMAdView;->view:Lcom/fusepowered/m1/android/MMAdView$ResizeView;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 687
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/fusepowered/m1/android/MMAdView;->isResizing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_2
    monitor-exit p0

    return-void

    .line 661
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->refreshAnimationimageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "On click for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " view, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " adimpl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fusepowered/m1/android/MMSDK$Log;->d(Ljava/lang/String;)V

    .line 235
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 241
    invoke-super/range {p0 .. p5}, Lcom/fusepowered/m1/android/MMLayout;->onLayout(ZIIII)V

    .line 243
    new-instance v0, Lcom/fusepowered/m1/android/MMAdView$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/m1/android/MMAdView$1;-><init>(Lcom/fusepowered/m1/android/MMAdView;)V

    invoke-static {v0}, Lcom/fusepowered/m1/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "x0"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "windowInFocus"    # Z

    .prologue
    .line 509
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->onWindowFocusChanged(Z)V

    .line 510
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    invoke-static {v1}, Lcom/fusepowered/m1/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/fusepowered/m1/android/MMAdImpl;)Lcom/fusepowered/m1/android/MMWebView;

    move-result-object v1

    iput-object v1, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    iget-object v1, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-wide v1, v1, Lcom/fusepowered/m1/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2}, Lcom/fusepowered/m1/android/MMWebView;->isCurrentParent(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0}, Lcom/fusepowered/m1/android/MMWebView;->removeFromParent()V

    .line 520
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {p0, v0}, Lcom/fusepowered/m1/android/MMAdView;->addView(Landroid/view/View;)V

    .line 526
    :cond_1
    return-void
.end method

.method public bridge synthetic removeBlackView()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lcom/fusepowered/m1/android/MMLayout;->removeBlackView()V

    return-void
.end method

.method public bridge synthetic setApid(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->setBackgroundColor(I)V

    .line 143
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/fusepowered/m1/android/MMAdView;->adImpl:Lcom/fusepowered/m1/android/MMAdImpl;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImpl;->controller:Lcom/fusepowered/m1/android/MMAdImplController;

    iget-object v0, v0, Lcom/fusepowered/m1/android/MMAdImplController;->webView:Lcom/fusepowered/m1/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/fusepowered/m1/android/MMWebView;->setBackgroundColor(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/fusepowered/m1/android/MMAdView;->height:I

    .line 271
    return-void
.end method

.method public bridge synthetic setIgnoresDensityScaling(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->setIgnoresDensityScaling(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/fusepowered/m1/android/RequestListener;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m1/android/RequestListener;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->setListener(Lcom/fusepowered/m1/android/RequestListener;)V

    return-void
.end method

.method public bridge synthetic setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V
    .locals 0
    .param p1, "x0"    # Lcom/fusepowered/m1/android/MMRequest;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/fusepowered/m1/android/MMLayout;->setMMRequest(Lcom/fusepowered/m1/android/MMRequest;)V

    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/fusepowered/m1/android/MMAdView;->transitionType:I

    .line 291
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/fusepowered/m1/android/MMAdView;->width:I

    .line 283
    return-void
.end method
