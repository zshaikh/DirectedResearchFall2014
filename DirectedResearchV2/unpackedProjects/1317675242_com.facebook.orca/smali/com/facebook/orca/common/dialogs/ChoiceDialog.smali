.class public Lcom/facebook/orca/common/dialogs/ChoiceDialog;
.super Landroid/app/Dialog;
.source "ChoiceDialog.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/orca/common/dialogs/ChoiceDialog$Listener;

.field private d:I


# direct methods
.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    const v0, 0x7f08001e

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->d:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/dialogs/ChoiceDialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 51
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->setContentView(I)V

    .line 56
    new-instance v4, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;

    invoke-direct {v4, p0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog$1;-><init>(Lcom/facebook/orca/common/dialogs/ChoiceDialog;)V

    .line 63
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {p0}, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    move v5, v7

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v5, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;

    .line 67
    const v3, 0x7f030005

    invoke-virtual {v1, v3, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 68
    invoke-static {v2}, Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;->a(Lcom/facebook/orca/common/dialogs/ChoiceDialog$ButtonSpec;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v2, 0x7f08001e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 70
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->c:Lcom/facebook/orca/common/dialogs/ChoiceDialog$Listener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->c:Lcom/facebook/orca/common/dialogs/ChoiceDialog$Listener;

    iget v1, p0, Lcom/facebook/orca/common/dialogs/ChoiceDialog;->d:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ChoiceDialog$Listener;->a(I)V

    .line 83
    :cond_0
    return-void
.end method
