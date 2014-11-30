.class public Lcom/dolphin/browser/tabbar/HighLightLinearLayout;
.super Landroid/widget/LinearLayout;
.source "HighLightLinearLayout.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->a:I

    .line 38
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->b()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, -0x1

    iput v0, p0, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->a:I

    .line 44
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->b()V

    .line 45
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    const-string v1, "mGroupFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "FLAG_USE_CHILD_DRAWING_ORDER"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 28
    or-int/2addr v1, v2

    .line 29
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 51
    iput v0, p0, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->a:I

    .line 52
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->a:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/dolphin/browser/tabbar/HighLightLinearLayout;->a:I

    .line 65
    if-ltz v0, :cond_0

    if-lt v0, p1, :cond_2

    :cond_0
    move v0, p2

    .line 77
    :cond_1
    :goto_0
    return v0

    .line 69
    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-eq p2, v1, :cond_1

    .line 72
    add-int/lit8 v1, p1, -0x1

    sub-int/2addr v1, p2

    .line 73
    if-gt v1, v0, :cond_3

    .line 74
    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
