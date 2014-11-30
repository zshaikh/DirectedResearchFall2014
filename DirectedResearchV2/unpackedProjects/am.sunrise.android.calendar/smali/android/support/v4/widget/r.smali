.class Landroid/support/v4/widget/r;
.super Landroid/support/v4/view/a/t;
.source "ExploreByTouchHelper.java"


# instance fields
.field final synthetic a:Landroid/support/v4/widget/p;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/p;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/p;

    invoke-direct {p0}, Landroid/support/v4/view/a/t;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/p;Landroid/support/v4/widget/q;)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0, p1}, Landroid/support/v4/widget/r;-><init>(Landroid/support/v4/widget/p;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/v4/view/a/j;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/p;

    invoke-static {v0, p1}, Landroid/support/v4/widget/p;->a(Landroid/support/v4/widget/p;I)Landroid/support/v4/view/a/j;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Landroid/support/v4/widget/r;->a:Landroid/support/v4/widget/p;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/p;->a(Landroid/support/v4/widget/p;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
