.class public Lcom/redbox/android/view/HeaderView;
.super Landroid/widget/RelativeLayout;
.source "HeaderView.java"


# instance fields
.field btnDone:Landroid/widget/ImageButton;

.field btnLogin:Landroid/widget/ImageButton;

.field btnTerms:Landroid/widget/ImageButton;

.field logo:Landroid/view/View;

.field title:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object v4, p0, Lcom/redbox/android/view/HeaderView;->btnDone:Landroid/widget/ImageButton;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 31
    const v3, 0x7f030006

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 32
    .local v1, "dummy":Landroid/widget/RelativeLayout;
    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/view/HeaderView;->logo:Landroid/view/View;

    .line 33
    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/redbox/android/view/HeaderView;->title:Landroid/view/View;

    .line 35
    const v2, 0x7f07002a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    .line 36
    const v2, 0x7f07002b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/redbox/android/view/HeaderView;->btnTerms:Landroid/widget/ImageButton;

    .line 37
    const v2, 0x7f07002c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/redbox/android/view/HeaderView;->btnDone:Landroid/widget/ImageButton;

    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "confirmlogoff":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05002a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 41
    const-string v2, "Yes"

    new-instance v3, Lcom/redbox/android/view/HeaderView$1;

    invoke-direct {v3, p0, p1}, Lcom/redbox/android/view/HeaderView$1;-><init>(Lcom/redbox/android/view/HeaderView;Landroid/content/Context;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    const-string v2, "No"

    new-instance v3, Lcom/redbox/android/view/HeaderView$2;

    invoke-direct {v3, p0}, Lcom/redbox/android/view/HeaderView$2;-><init>(Lcom/redbox/android/view/HeaderView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    iget-object v2, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    new-instance v3, Lcom/redbox/android/view/HeaderView$3;

    invoke-direct {v3, p0, v0, p1}, Lcom/redbox/android/view/HeaderView$3;-><init>(Lcom/redbox/android/view/HeaderView;Landroid/app/AlertDialog$Builder;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/redbox/android/view/HeaderView;->btnTerms:Landroid/widget/ImageButton;

    new-instance v3, Lcom/redbox/android/view/HeaderView$4;

    invoke-direct {v3, p0, p1}, Lcom/redbox/android/view/HeaderView$4;-><init>(Lcom/redbox/android/view/HeaderView;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 87
    iget-object v2, p0, Lcom/redbox/android/view/HeaderView;->logo:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/redbox/android/view/HeaderView;->addView(Landroid/view/View;)V

    .line 88
    iget-object v2, p0, Lcom/redbox/android/view/HeaderView;->title:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/redbox/android/view/HeaderView;->addView(Landroid/view/View;)V

    .line 89
    iget-object v2, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    invoke-virtual {p0, v2}, Lcom/redbox/android/view/HeaderView;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0}, Lcom/redbox/android/view/HeaderView;->updateButtons()V

    .line 92
    return-void
.end method


# virtual methods
.method public setDoneButton()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/redbox/android/view/HeaderView;->removeView(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnDone:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/redbox/android/view/HeaderView;->addView(Landroid/view/View;)V

    .line 121
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnDone:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public setTermsButton()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/redbox/android/view/HeaderView;->removeView(Landroid/view/View;)V

    .line 105
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnTerms:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/redbox/android/view/HeaderView;->addView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnTerms:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->logo:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/redbox/android/view/HeaderView;->removeView(Landroid/view/View;)V

    .line 110
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->logo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->title:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public updateButtons()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Runtime cache login state when updating buttons"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/redbox/android/utils/RBLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-boolean v0, Lcom/redbox/android/utils/RuntimeCache;->LOGGED_IN:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/redbox/android/view/HeaderView;->btnLogin:Landroid/widget/ImageButton;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
