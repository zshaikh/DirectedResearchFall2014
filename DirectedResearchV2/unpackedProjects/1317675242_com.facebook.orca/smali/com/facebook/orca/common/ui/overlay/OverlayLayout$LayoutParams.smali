.class public Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "OverlayLayout.java"


# instance fields
.field private a:Z

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    sget-object v0, Lcom/facebook/orca/R$styleable;->d:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a:Z

    .line 128
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b:I

    .line 129
    const/16 v1, 0x81

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c:I

    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;)Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->b:I

    return v0
.end method

.method static synthetic c(Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/facebook/orca/common/ui/overlay/OverlayLayout$LayoutParams;->c:I

    return v0
.end method
