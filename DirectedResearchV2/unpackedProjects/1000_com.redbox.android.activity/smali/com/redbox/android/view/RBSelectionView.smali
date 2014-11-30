.class public Lcom/redbox/android/view/RBSelectionView;
.super Landroid/widget/RelativeLayout;
.source "RBSelectionView.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput-object p1, p0, Lcom/redbox/android/view/RBSelectionView;->context:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/redbox/android/view/RBSelectionView;->refreshSelectedKiosk()V

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/redbox/android/view/RBSelectionView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/redbox/android/view/RBSelectionView;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public refreshSelectedKiosk()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 51
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/redbox/android/model/SelectedKioskManager;->selectionExists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 52
    const-string v7, "Selected kiosk exists"

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/redbox/android/model/SelectedKioskManager;->getSelected()Lcom/redbox/android/model/Kiosk;

    move-result-object v1

    .line 54
    .local v1, "current":Lcom/redbox/android/model/Kiosk;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Current selected Kiosk: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v7, p0, Lcom/redbox/android/view/RBSelectionView;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 56
    const v8, 0x7f030011

    .line 55
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 58
    .local v3, "layout":Landroid/widget/RelativeLayout;
    const v7, 0x7f070062

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 59
    .local v5, "title":Landroid/widget/TextView;
    const v7, 0x7f070063

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    .local v2, "description":Landroid/widget/TextView;
    const v7, 0x7f050024

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/redbox/android/model/SelectedKioskManager;->getSelected()Lcom/redbox/android/model/Kiosk;

    move-result-object v8

    invoke-virtual {v8}, Lcom/redbox/android/model/Kiosk;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/redbox/android/model/SelectedKioskManager;->getSelected()Lcom/redbox/android/model/Kiosk;

    move-result-object v8

    invoke-virtual {v8}, Lcom/redbox/android/model/Kiosk;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v7, 0x7f070065

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "button":Landroid/view/View;
    const v7, 0x7f070061

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ToggleButton;

    .line 64
    .local v6, "toggle":Landroid/widget/ToggleButton;
    invoke-static {}, Lcom/redbox/android/model/SelectedKioskManager;->getInstance()Lcom/redbox/android/model/SelectedKioskManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/redbox/android/model/SelectedKioskManager;->isSelected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 87
    :goto_0
    const v7, 0x7f070037

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 98
    .end local v1    # "current":Lcom/redbox/android/model/Kiosk;
    .local v4, "linearLayoutParent":Landroid/view/View;
    :goto_1
    new-instance v7, Lcom/redbox/android/view/RBSelectionView$1;

    invoke-direct {v7, p0}, Lcom/redbox/android/view/RBSelectionView$1;-><init>(Lcom/redbox/android/view/RBSelectionView;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 108
    if-eqz v4, :cond_3

    .line 109
    invoke-virtual {p0, v4}, Lcom/redbox/android/view/RBSelectionView;->addView(Landroid/view/View;)V

    .line 114
    :goto_2
    invoke-virtual {p0, v0}, Lcom/redbox/android/view/RBSelectionView;->addView(Landroid/view/View;)V

    .line 115
    if-eqz v6, :cond_0

    .line 116
    invoke-virtual {p0, v6}, Lcom/redbox/android/view/RBSelectionView;->addView(Landroid/view/View;)V

    .line 117
    :cond_0
    return-void

    .line 67
    .end local v4    # "linearLayoutParent":Landroid/view/View;
    .restart local v1    # "current":Lcom/redbox/android/model/Kiosk;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 89
    .end local v0    # "button":Landroid/view/View;
    .end local v1    # "current":Lcom/redbox/android/model/Kiosk;
    .end local v2    # "description":Landroid/widget/TextView;
    .end local v3    # "layout":Landroid/widget/RelativeLayout;
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "toggle":Landroid/widget/ToggleButton;
    :cond_2
    const-string v7, "Selected kiosk does exists"

    invoke-static {p0, v7}, Lcom/redbox/android/utils/RBLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v7, p0, Lcom/redbox/android/view/RBSelectionView;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 91
    const v8, 0x7f030010

    .line 90
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 92
    .restart local v3    # "layout":Landroid/widget/RelativeLayout;
    const v7, 0x7f07005e

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 93
    .restart local v5    # "title":Landroid/widget/TextView;
    const v7, 0x7f07005f

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 94
    .restart local v2    # "description":Landroid/widget/TextView;
    const v7, 0x7f070060

    invoke-virtual {v3, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .restart local v0    # "button":Landroid/view/View;
    const/4 v6, 0x0

    .line 96
    .restart local v6    # "toggle":Landroid/widget/ToggleButton;
    const/4 v4, 0x0

    .restart local v4    # "linearLayoutParent":Landroid/view/View;
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p0, v5}, Lcom/redbox/android/view/RBSelectionView;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/redbox/android/view/RBSelectionView;->addView(Landroid/view/View;)V

    goto :goto_2
.end method
