.class public Lcom/facebook/orca/share/ShareViewName;
.super Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;
.source "ShareViewName.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/ui/widgets/text/MultilineEllipsizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareViewName;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 36
    instance-of v2, v1, Lcom/facebook/orca/share/ShareView;

    if-eqz v2, :cond_0

    .line 37
    move-object v0, v1

    check-cast v0, Lcom/facebook/orca/share/ShareView;

    move-object p0, v0

    .line 38
    invoke-virtual {p0}, Lcom/facebook/orca/share/ShareView;->a()V

    .line 40
    :cond_0
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    .line 42
    :cond_1
    return-void
.end method
