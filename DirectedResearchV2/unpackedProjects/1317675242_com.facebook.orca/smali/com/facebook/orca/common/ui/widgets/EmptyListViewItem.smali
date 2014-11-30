.class public Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "EmptyListViewItem.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p2}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a(Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b()Lcom/facebook/orca/app/OrcaInjector;

    move-result-object v0

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a:Landroid/view/LayoutInflater;

    .line 48
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030014

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b:Landroid/view/View;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->c:Landroid/widget/ProgressBar;

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->b:Landroid/view/View;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->c:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 67
    return-void

    .line 66
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setMessage(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/EmptyListViewItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 63
    return-void
.end method
