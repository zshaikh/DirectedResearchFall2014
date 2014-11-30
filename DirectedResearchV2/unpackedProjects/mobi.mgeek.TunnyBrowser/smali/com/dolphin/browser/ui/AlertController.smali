.class public Lcom/dolphin/browser/ui/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field private A:Landroid/os/Message;

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Landroid/content/res/ColorStateList;

.field private D:Landroid/widget/ScrollView;

.field private E:I

.field private F:Landroid/graphics/drawable/Drawable;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/view/View;

.field private K:Z

.field private L:Landroid/widget/ListAdapter;

.field private M:I

.field private N:Landroid/os/Handler;

.field private O:Z

.field a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/DialogInterface;

.field private final d:Landroid/view/Window;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/view/View;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Landroid/widget/Button;

.field private p:Ljava/lang/CharSequence;

.field private q:Landroid/os/Message;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/content/res/ColorStateList;

.field private t:Landroid/widget/Button;

.field private u:Ljava/lang/CharSequence;

.field private v:Landroid/os/Message;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/content/res/ColorStateList;

.field private y:Landroid/widget/Button;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController;->n:Z

    .line 102
    iput v1, p0, Lcom/dolphin/browser/ui/AlertController;->E:I

    .line 118
    iput v1, p0, Lcom/dolphin/browser/ui/AlertController;->M:I

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController;->O:Z

    .line 124
    new-instance v0, Lcom/dolphin/browser/ui/g;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/g;-><init>(Lcom/dolphin/browser/ui/AlertController;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->a:Landroid/view/View$OnClickListener;

    .line 177
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->b:Landroid/content/Context;

    .line 178
    iput-object p2, p0, Lcom/dolphin/browser/ui/AlertController;->c:Landroid/content/DialogInterface;

    .line 179
    iput-object p3, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    .line 180
    new-instance v0, Lcom/dolphin/browser/ui/p;

    invoke-direct {v0, p2}, Lcom/dolphin/browser/ui/p;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->N:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/AlertController;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/dolphin/browser/ui/AlertController;->M:I

    return p1
.end method

.method private a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 340
    if-nez p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$color;->dialog_button_text_color:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->L:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    return-object p1
.end method

.method private a(Landroid/widget/Button;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 620
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 621
    const/high16 v1, 0x3f000000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 622
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->leftSpacer:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->rightSpacer:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 626
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 627
    return-void
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;)V
    .locals 18

    .prologue
    .line 632
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v15

    .line 634
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_full_dark:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 635
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_top_dark:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 636
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_center_dark:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 637
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_bottom_dark:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 638
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_full_bright:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 639
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_top_bright:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 640
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_center_bright:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 641
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_bottom_bright:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 642
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_bottom_medium:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 643
    sget v1, Lcom/dolphin/browser/core/R$drawable;->popup_center_medium:I

    invoke-virtual {v15, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    .line 654
    const/4 v1, 0x4

    new-array v0, v1, [Landroid/view/View;

    move-object/from16 v16, v0

    .line 655
    const/4 v1, 0x4

    new-array v0, v1, [Z

    move-object/from16 v17, v0

    .line 656
    const/4 v4, 0x0

    .line 657
    const/4 v3, 0x0

    .line 659
    const/4 v1, 0x0

    .line 660
    if-eqz p5, :cond_0

    .line 661
    aput-object p1, v16, v1

    .line 662
    const/4 v2, 0x0

    aput-boolean v2, v17, v1

    .line 663
    const/4 v1, 0x1

    .line 671
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    const/16 p2, 0x0

    :cond_1
    aput-object p2, v16, v1

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_0
    aput-boolean v2, v17, v1

    .line 674
    add-int/lit8 v1, v1, 0x1

    .line 675
    if-eqz p3, :cond_2

    .line 676
    aput-object p3, v16, v1

    .line 677
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/dolphin/browser/ui/AlertController;->K:Z

    aput-boolean v2, v17, v1

    .line 678
    add-int/lit8 v1, v1, 0x1

    .line 680
    :cond_2
    if-eqz p4, :cond_3

    .line 681
    aput-object p6, v16, v1

    .line 682
    const/4 v2, 0x1

    aput-boolean v2, v17, v1

    .line 685
    :cond_3
    const/4 v1, 0x0

    .line 686
    const/4 v2, 0x0

    move v5, v2

    move v2, v3

    move-object v3, v4

    :goto_1
    move-object/from16 v0, v16

    array-length v4, v0

    if-ge v5, v4, :cond_a

    .line 687
    aget-object v4, v16, v5

    .line 688
    if-nez v4, :cond_5

    .line 686
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 673
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 691
    :cond_5
    if-eqz v3, :cond_6

    .line 692
    if-nez v1, :cond_8

    .line 693
    if-eqz v2, :cond_7

    move-object v1, v6

    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 697
    :goto_4
    const/4 v1, 0x1

    .line 700
    :cond_6
    aget-boolean v2, v17, v5

    move-object v3, v4

    goto :goto_2

    :cond_7
    move-object v1, v7

    .line 693
    goto :goto_3

    .line 695
    :cond_8
    if-eqz v2, :cond_9

    move-object v1, v8

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    move-object v1, v9

    goto :goto_5

    .line 703
    :cond_a
    if-eqz v3, :cond_b

    .line 704
    if-eqz v1, :cond_f

    .line 709
    if-eqz v2, :cond_e

    if-eqz p4, :cond_d

    move-object v1, v10

    :goto_6
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 741
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/AlertController;->L:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_c

    .line 742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dolphin/browser/ui/AlertController;->L:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->alert_dialog_list_divider:I

    invoke-virtual {v15, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    sget v2, Lcom/dolphin/browser/core/R$drawable;->dialog_item_selector_background:I

    invoke-virtual {v15, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 746
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dolphin/browser/ui/AlertController;->M:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_c

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/ui/AlertController;->M:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 748
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/dolphin/browser/ui/AlertController;->M:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 751
    :cond_c
    return-void

    :cond_d
    move-object v1, v11

    .line 709
    goto :goto_6

    :cond_e
    move-object v1, v12

    goto :goto_6

    .line 712
    :cond_f
    if-eqz v2, :cond_10

    move-object v1, v13

    :goto_8
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    :cond_10
    move-object v1, v14

    goto :goto_8
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :goto_0
    return v0

    .line 188
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 194
    :cond_2
    if-lez v2, :cond_3

    .line 195
    add-int/lit8 v2, v2, -0x1

    .line 196
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 197
    invoke-static {v3}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 457
    .line 458
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 459
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->J:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 461
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 464
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->J:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :cond_0
    :goto_0
    return v2

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 472
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v5, Lcom/dolphin/browser/core/R$id;->icon:I

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    .line 473
    if-eqz v1, :cond_5

    .line 475
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    .line 478
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v5, Lcom/dolphin/browser/core/R$style;->DialogTitleAppearence:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 480
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    sget v1, Lcom/dolphin/browser/core/R$color;->dialog_title_text_color:I

    invoke-virtual {v4, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    sget v1, Lcom/dolphin/browser/core/R$drawable;->ic_dialog_menu_generic:I

    invoke-virtual {v4, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 487
    iget v0, p0, Lcom/dolphin/browser/ui/AlertController;->E:I

    if-lez v0, :cond_3

    .line 488
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dolphin/browser/ui/AlertController;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 470
    goto :goto_1

    .line 490
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 491
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 493
    :cond_4
    iget v0, p0, Lcom/dolphin/browser/ui/AlertController;->E:I

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 502
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 507
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->title_template:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move v2, v3

    .line 510
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/AlertController;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/AlertController;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->q:Landroid/os/Message;

    return-object v0
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 517
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->D:Landroid/widget/ScrollView;

    .line 518
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->D:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 521
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    .line 522
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/ui/AlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    sget v2, Lcom/dolphin/browser/core/R$color;->dialog_message_text_color:I

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->D:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 533
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 535
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 537
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 345
    if-nez p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->button_background:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    const/4 v10, -0x1

    const/16 v12, 0x8

    .line 404
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->contentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 405
    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/AlertController;->b(Landroid/widget/LinearLayout;)V

    .line 406
    invoke-direct {p0}, Lcom/dolphin/browser/ui/AlertController;->d()Z

    move-result v4

    .line 408
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 409
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/widget/LinearLayout;)Z

    move-result v5

    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v3, Lcom/dolphin/browser/core/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 412
    if-nez v4, :cond_0

    .line 413
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->i:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v3, Lcom/dolphin/browser/core/R$id;->customPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 419
    iget-object v3, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v8, Lcom/dolphin/browser/core/R$id;->custom:I

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 420
    iget-object v8, p0, Lcom/dolphin/browser/ui/AlertController;->i:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-boolean v8, p0, Lcom/dolphin/browser/ui/AlertController;->n:Z

    if-eqz v8, :cond_1

    .line 422
    iget v8, p0, Lcom/dolphin/browser/ui/AlertController;->j:I

    iget v9, p0, Lcom/dolphin/browser/ui/AlertController;->k:I

    iget v10, p0, Lcom/dolphin/browser/ui/AlertController;->l:I

    iget v11, p0, Lcom/dolphin/browser/ui/AlertController;->m:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 426
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    move-object v3, v0

    .line 436
    :goto_0
    if-eqz v5, :cond_3

    .line 437
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v7, Lcom/dolphin/browser/core/R$id;->titleDivider:I

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    .line 438
    check-cast v0, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/dolphin/browser/ui/AlertController;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 442
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v8, Lcom/dolphin/browser/core/R$id;->last_line_divider:I

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 443
    iget-object v8, p0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    if-eqz v8, :cond_5

    if-eqz v4, :cond_5

    .line 444
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v8

    sget v9, Lcom/dolphin/browser/core/R$drawable;->alert_dialog_list_divider:I

    invoke-virtual {v8, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 445
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 451
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/view/View;)V

    move-object v0, p0

    .line 453
    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;)V

    .line 454
    return-void

    .line 429
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v3, Lcom/dolphin/browser/core/R$id;->customPanel:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    move-object v3, v7

    goto :goto_0

    .line 447
    :cond_5
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->v:Landroid/os/Message;

    return-object v0
.end method

.method private d()Z
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 545
    const/4 v1, 0x0

    .line 546
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    .line 548
    const/4 v5, 0x2

    .line 549
    const/4 v6, 0x4

    .line 551
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v4, Lcom/dolphin/browser/core/R$id;->button1:I

    invoke-virtual {v0, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    .line 552
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    iget-object v4, p0, Lcom/dolphin/browser/ui/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->p:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    move-object v4, v1

    move v1, v2

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v7, Lcom/dolphin/browser/core/R$id;->button2:I

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    .line 568
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->u:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 585
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v7, Lcom/dolphin/browser/core/R$id;->button3:I

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    .line 586
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->z:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 589
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 607
    :goto_2
    if-ne v1, v3, :cond_6

    .line 608
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/widget/Button;)V

    .line 615
    :cond_0
    :goto_3
    if-eqz v1, :cond_8

    :goto_4
    return v3

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->p:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 558
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    move v1, v3

    move-object v4, v0

    .line 564
    goto :goto_0

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->u:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 574
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 576
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 577
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 579
    if-nez v4, :cond_3

    .line 580
    iget-object v4, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    .line 582
    :cond_3
    or-int/2addr v1, v5

    goto :goto_1

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->z:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    iget-object v7, p0, Lcom/dolphin/browser/ui/AlertController;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 597
    if-nez v4, :cond_5

    .line 598
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    .line 600
    :cond_5
    or-int/2addr v1, v6

    goto :goto_2

    .line 609
    :cond_6
    if-ne v1, v5, :cond_7

    .line 610
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    .line 611
    :cond_7
    if-ne v1, v6, :cond_0

    .line 612
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/widget/Button;)V

    goto :goto_3

    :cond_8
    move v3, v2

    .line 615
    goto :goto_4
.end method

.method static synthetic e(Lcom/dolphin/browser/ui/AlertController;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->A:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/ui/AlertController;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController;->O:Z

    return v0
.end method

.method static synthetic h(Lcom/dolphin/browser/ui/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->c:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/browser/ui/AlertController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->N:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->i:Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->d:Landroid/view/Window;

    sget v1, Lcom/dolphin/browser/core/R$layout;->alert_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 218
    invoke-direct {p0}, Lcom/dolphin/browser/ui/AlertController;->c()V

    .line 219
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 355
    iput p1, p0, Lcom/dolphin/browser/ui/AlertController;->E:I

    .line 356
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 357
    if-lez p1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dolphin/browser/ui/AlertController;->E:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    if-nez p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 286
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 287
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 307
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->N:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 311
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :pswitch_0
    iput-object p2, p0, Lcom/dolphin/browser/ui/AlertController;->p:Ljava/lang/CharSequence;

    .line 315
    iput-object p4, p0, Lcom/dolphin/browser/ui/AlertController;->q:Landroid/os/Message;

    .line 316
    invoke-direct {p0, p5}, Lcom/dolphin/browser/ui/AlertController;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->r:Landroid/graphics/drawable/Drawable;

    .line 317
    invoke-direct {p0, p6}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->s:Landroid/content/res/ColorStateList;

    .line 337
    :goto_0
    return-void

    .line 321
    :pswitch_1
    iput-object p2, p0, Lcom/dolphin/browser/ui/AlertController;->u:Ljava/lang/CharSequence;

    .line 322
    iput-object p4, p0, Lcom/dolphin/browser/ui/AlertController;->v:Landroid/os/Message;

    .line 323
    invoke-direct {p0, p5}, Lcom/dolphin/browser/ui/AlertController;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->w:Landroid/graphics/drawable/Drawable;

    .line 324
    invoke-direct {p0, p6}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->x:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 328
    :pswitch_2
    iput-object p2, p0, Lcom/dolphin/browser/ui/AlertController;->z:Ljava/lang/CharSequence;

    .line 329
    iput-object p4, p0, Lcom/dolphin/browser/ui/AlertController;->A:Landroid/os/Message;

    .line 330
    invoke-direct {p0, p5}, Lcom/dolphin/browser/ui/AlertController;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->B:Landroid/graphics/drawable/Drawable;

    .line 331
    invoke-direct {p0, p6}, Lcom/dolphin/browser/ui/AlertController;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->C:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 222
    if-nez p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget v1, Lcom/dolphin/browser/core/R$drawable;->dialog_title_divider:I

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->g:Landroid/graphics/drawable/Drawable;

    .line 224
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 264
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->i:Landroid/view/View;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController;->n:Z

    .line 266
    iput p2, p0, Lcom/dolphin/browser/ui/AlertController;->j:I

    .line 267
    iput p3, p0, Lcom/dolphin/browser/ui/AlertController;->k:I

    .line 268
    iput p4, p0, Lcom/dolphin/browser/ui/AlertController;->l:I

    .line 269
    iput p5, p0, Lcom/dolphin/browser/ui/AlertController;->m:I

    .line 270
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 227
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->e:Ljava/lang/CharSequence;

    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->H:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 373
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/AlertController;->K:Z

    .line 374
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->D:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->D:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Landroid/widget/Button;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 381
    packed-switch p1, :pswitch_data_0

    .line 389
    :cond_0
    :goto_0
    return-object v0

    .line 383
    :pswitch_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->q:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->o:Landroid/widget/Button;

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->v:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->t:Landroid/widget/Button;

    goto :goto_0

    .line 387
    :pswitch_2
    iget-object v1, p0, Lcom/dolphin/browser/ui/AlertController;->A:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->y:Landroid/widget/Button;

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 366
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->F:Landroid/graphics/drawable/Drawable;

    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->F:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->J:Landroid/view/View;

    .line 242
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 245
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->f:Ljava/lang/CharSequence;

    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->I:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->D:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/AlertController;->D:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 400
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 255
    iput-object p1, p0, Lcom/dolphin/browser/ui/AlertController;->i:Landroid/view/View;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/AlertController;->n:Z

    .line 257
    return-void
.end method
