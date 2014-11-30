.class public Landroid/support/v4/view/bs;
.super Ljava/lang/Object;
.source "ViewParentCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 63
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Landroid/support/v4/view/bt;

    invoke-direct {v0}, Landroid/support/v4/view/bt;-><init>()V

    sput-object v0, Landroid/support/v4/view/bs;->a:Landroid/support/v4/view/bu;

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Landroid/support/v4/view/bv;

    invoke-direct {v0}, Landroid/support/v4/view/bv;-><init>()V

    sput-object v0, Landroid/support/v4/view/bs;->a:Landroid/support/v4/view/bu;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/support/v4/view/bs;->a:Landroid/support/v4/view/bu;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/view/bu;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
