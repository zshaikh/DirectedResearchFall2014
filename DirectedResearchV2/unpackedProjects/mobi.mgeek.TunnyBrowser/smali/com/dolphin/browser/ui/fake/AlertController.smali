.class public Lcom/dolphin/browser/ui/fake/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Landroid/os/Message;

.field private C:Landroid/graphics/drawable/Drawable;

.field private D:Landroid/content/res/ColorStateList;

.field private E:Landroid/widget/ScrollView;

.field private F:I

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/view/View;

.field private L:Z

.field private M:Landroid/widget/ListAdapter;

.field private N:I

.field private O:Landroid/os/Handler;

.field private P:Z

.field a:Landroid/view/View$OnClickListener;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/DialogInterface;

.field private final d:Landroid/view/Window;

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/widget/ListView;

.field private j:Landroid/view/View;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Landroid/widget/TextView;

.field private q:Ljava/lang/CharSequence;

.field private r:Landroid/os/Message;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/content/res/ColorStateList;

.field private u:Landroid/widget/TextView;

.field private v:Ljava/lang/CharSequence;

.field private w:Landroid/os/Message;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/content/res/ColorStateList;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->o:Z

    .line 104
    iput v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->F:I

    .line 120
    iput v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->N:I

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->P:Z

    .line 126
    new-instance v0, Lcom/dolphin/browser/ui/fake/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/fake/b;-><init>(Lcom/dolphin/browser/ui/fake/AlertController;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->a:Landroid/view/View$OnClickListener;

    .line 179
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->b:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->c:Landroid/content/DialogInterface;

    .line 181
    iput-object p3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    .line 182
    new-instance v0, Lcom/dolphin/browser/ui/fake/k;

    invoke-direct {v0, p2}, Lcom/dolphin/browser/ui/fake/k;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->O:Landroid/os/Handler;

    .line 183
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/fake/AlertController;I)I
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->N:I

    return p1
.end method

.method private a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 347
    if-nez p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0173

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/fake/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->M:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/fake/AlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;)V
    .locals 12

    .prologue
    .line 822
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v5

    .line 824
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020098

    invoke-virtual {v5, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 826
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 827
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02009a

    invoke-virtual {v5, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 828
    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 832
    :goto_0
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020099

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 833
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020097

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 834
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020096

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 845
    const/4 v1, 0x4

    new-array v10, v1, [Landroid/view/View;

    .line 846
    const/4 v1, 0x4

    new-array v11, v1, [Z

    .line 847
    const/4 v3, 0x0

    .line 850
    const/4 v1, 0x0

    .line 851
    if-eqz p5, :cond_0

    .line 852
    aput-object p1, v10, v1

    .line 853
    const/4 v2, 0x0

    aput-boolean v2, v11, v1

    .line 854
    const/4 v1, 0x1

    .line 862
    :cond_0
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 p2, 0x0

    :cond_1
    aput-object p2, v10, v1

    .line 864
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    :goto_1
    aput-boolean v2, v11, v1

    .line 865
    add-int/lit8 v1, v1, 0x1

    .line 866
    if-eqz p3, :cond_2

    .line 867
    aput-object p3, v10, v1

    .line 868
    iget-boolean v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->L:Z

    aput-boolean v2, v11, v1

    .line 869
    add-int/lit8 v1, v1, 0x1

    .line 871
    :cond_2
    if-eqz p4, :cond_3

    .line 872
    aput-object p6, v10, v1

    .line 873
    const/4 v2, 0x1

    aput-boolean v2, v11, v1

    .line 876
    :cond_3
    const/4 v1, 0x0

    .line 877
    const/4 v2, 0x0

    move v4, v2

    move-object v2, v3

    :goto_2
    array-length v3, v10

    if-ge v4, v3, :cond_a

    .line 878
    aget-object v3, v10, v4

    .line 879
    if-nez v3, :cond_6

    .line 877
    :goto_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_2

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 864
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 882
    :cond_6
    if-eqz v2, :cond_7

    .line 883
    if-nez v1, :cond_9

    .line 884
    if-ne v2, p1, :cond_8

    .line 885
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 892
    :goto_4
    const/4 v1, 0x1

    .line 895
    :cond_7
    aget-boolean v2, v11, v4

    move-object v2, v3

    goto :goto_3

    .line 887
    :cond_8
    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 890
    :cond_9
    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 898
    :cond_a
    if-eqz v2, :cond_b

    .line 899
    if-eqz v1, :cond_d

    .line 904
    invoke-virtual {v2, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 935
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->M:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_c

    .line 936
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->M:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 941
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02001c

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 942
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201b8

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 943
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02033b

    invoke-virtual {v5, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 944
    iget v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->N:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    .line 945
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    iget v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->N:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 946
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    iget v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->N:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 949
    :cond_c
    return-void

    .line 906
    :cond_d
    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 685
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 686
    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 687
    const/high16 v1, 0x3f000000

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 688
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 690
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 692
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 693
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    :goto_0
    return v0

    .line 190
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    move v0, v1

    .line 191
    goto :goto_0

    .line 194
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 196
    :cond_2
    if-lez v2, :cond_3

    .line 197
    add-int/lit8 v2, v2, -0x1

    .line 198
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 199
    invoke-static {v3}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 204
    goto :goto_0
.end method

.method private a(Landroid/widget/LinearLayout;)Z
    .locals 8

    .prologue
    const v7, 0x7f08007f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v6, 0x8

    .line 484
    .line 485
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 486
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->K:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 488
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 491
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->K:Landroid/view/View;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 494
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 499
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v5, 0x7f08002c

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    .line 500
    if-eqz v1, :cond_5

    .line 502
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    .line 505
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Lcom/dolphin/browser/n/a;->m:Lmobi/mgeek/TunnyBrowser/R$style;

    const v5, 0x7f0f000d

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 507
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0046

    invoke-virtual {v4, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 508
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020170

    invoke-virtual {v4, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 514
    iget v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->F:I

    if-lez v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 497
    goto :goto_1

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 518
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 520
    :cond_4
    iget v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->F:I

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 529
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 534
    :cond_5
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 535
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    move v2, v3

    .line 537
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/fake/AlertController;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->P:Z

    return p1
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->r:Landroid/os/Message;

    return-object v0
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 7

    .prologue
    const v6, 0x7f080083

    const/16 v5, 0x8

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 544
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    .line 545
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020331

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 546
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 549
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    .line 550
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->f:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0044

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 562
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 563
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000

    invoke-direct {v0, v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 567
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private c(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 354
    packed-switch p1, :pswitch_data_0

    .line 365
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 356
    :pswitch_0
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 359
    :pswitch_1
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 362
    :pswitch_2
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 354
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->w:Landroid/os/Message;

    return-object v0
.end method

.method private d()V
    .locals 14

    .prologue
    const/4 v7, 0x0

    const v8, 0x7f080085

    const/4 v13, 0x0

    const/4 v11, -0x1

    const/16 v12, 0x8

    .line 426
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 427
    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->b(Landroid/widget/LinearLayout;)V

    .line 428
    invoke-direct {p0}, Lcom/dolphin/browser/ui/fake/AlertController;->e()Z

    move-result v4

    .line 430
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08007e

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 431
    invoke-direct {p0, v1}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/widget/LinearLayout;)Z

    move-result v5

    .line 433
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v3, 0x7f080088

    invoke-virtual {v0, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 434
    if-nez v4, :cond_0

    .line 435
    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->j:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 440
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 441
    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v8, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v8, 0x7f080087

    invoke-virtual {v3, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 442
    iget-object v8, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v9, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v9, 0x7f080086

    invoke-virtual {v8, v9}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v9

    sget-object v10, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v10, 0x7f02032c

    invoke-virtual {v9, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    iget-object v8, p0, Lcom/dolphin/browser/ui/fake/AlertController;->j:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    iget-boolean v8, p0, Lcom/dolphin/browser/ui/fake/AlertController;->o:Z

    if-eqz v8, :cond_1

    .line 445
    iget v8, p0, Lcom/dolphin/browser/ui/fake/AlertController;->k:I

    iget v9, p0, Lcom/dolphin/browser/ui/fake/AlertController;->l:I

    iget v10, p0, Lcom/dolphin/browser/ui/fake/AlertController;->m:I

    iget v11, p0, Lcom/dolphin/browser/ui/fake/AlertController;->n:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 448
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 449
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    iput v8, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    move-object v3, v0

    .line 459
    :goto_0
    if-eqz v5, :cond_3

    .line 460
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v7, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v7, 0x7f080081

    invoke-virtual {v0, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v0, v7

    .line 461
    check-cast v0, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/dolphin/browser/ui/fake/AlertController;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 465
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v8, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v8, 0x7f080089

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 473
    if-eqz v4, :cond_5

    .line 474
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v8

    sget-object v9, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v9, 0x7f0200cb

    invoke-virtual {v8, v9}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    move-object v0, p0

    .line 480
    invoke-direct/range {v0 .. v7}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZZLandroid/view/View;Landroid/view/View;)V

    .line 481
    return-void

    .line 452
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    move-object v3, v7

    goto :goto_0

    .line 477
    :cond_5
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()Z
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x4

    const/4 v5, 0x1

    const/16 v12, 0x8

    const/4 v4, 0x0

    .line 578
    const/4 v3, 0x0

    .line 579
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 582
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 583
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v6, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v6, 0x7f08008e

    invoke-virtual {v1, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 584
    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a00c4

    invoke-virtual {v2, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 585
    sget-object v6, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v6, 0x7f0a00c4

    invoke-virtual {v2, v6}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 587
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v6, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v6, 0x7f08008b

    invoke-virtual {v2, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    .line 588
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/dolphin/browser/ui/fake/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 591
    const/4 v2, -0x2

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 592
    const/4 v2, -0x3

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 593
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 595
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->q:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v6, v3

    move v3, v4

    .line 607
    :goto_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v11, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v11, 0x7f08008f

    invoke-virtual {v2, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    .line 608
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dolphin/browser/ui/fake/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 610
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->v:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    :goto_1
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v11, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v11, 0x7f08008d

    invoke-virtual {v2, v11}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    .line 625
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dolphin/browser/ui/fake/AlertController;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->A:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 628
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    move v6, v3

    .line 645
    :goto_2
    if-ne v6, v5, :cond_5

    .line 646
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/widget/TextView;)V

    move-object v2, v7

    move-object v3, v8

    move-object v8, v9

    .line 656
    :goto_3
    iget-object v7, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/dolphin/browser/ui/fake/AlertController;->s:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_7

    :goto_4
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dolphin/browser/ui/fake/AlertController;->x:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_8

    :goto_5
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/dolphin/browser/ui/fake/AlertController;->C:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_9

    :goto_6
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    const/4 v2, 0x7

    if-ne v6, v2, :cond_a

    .line 661
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 681
    :goto_7
    if-eqz v6, :cond_f

    :goto_8
    return v5

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->q:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 603
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    move v3, v5

    move-object v6, v2

    .line 604
    goto/16 :goto_0

    .line 613
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dolphin/browser/ui/fake/AlertController;->v:Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dolphin/browser/ui/fake/AlertController;->y:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 618
    if-nez v6, :cond_2

    .line 619
    iget-object v6, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    .line 621
    :cond_2
    or-int/lit8 v3, v3, 0x2

    goto/16 :goto_1

    .line 630
    :cond_3
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dolphin/browser/ui/fake/AlertController;->A:Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/dolphin/browser/ui/fake/AlertController;->D:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 635
    if-nez v6, :cond_4

    .line 636
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    .line 638
    :cond_4
    or-int/lit8 v3, v3, 0x4

    move v6, v3

    goto :goto_2

    .line 648
    :cond_5
    if-ne v6, v14, :cond_6

    .line 649
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/widget/TextView;)V

    move-object v2, v7

    move-object v3, v10

    .line 650
    goto :goto_3

    .line 651
    :cond_6
    if-ne v6, v13, :cond_10

    .line 652
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/widget/TextView;)V

    move-object v2, v8

    move-object v3, v10

    move-object v8, v9

    .line 653
    goto/16 :goto_3

    .line 656
    :cond_7
    iget-object v3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->s:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 657
    :cond_8
    iget-object v8, p0, Lcom/dolphin/browser/ui/fake/AlertController;->x:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 658
    :cond_9
    iget-object v2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->C:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 664
    :cond_a
    div-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_c

    .line 665
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    if-le v6, v13, :cond_b

    .line 667
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 669
    :cond_b
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 672
    :cond_c
    if-eq v6, v14, :cond_d

    if-ne v6, v13, :cond_e

    .line 673
    :cond_d
    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    :goto_9
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 675
    :cond_e
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9

    :cond_f
    move v5, v4

    .line 681
    goto/16 :goto_8

    :cond_10
    move-object v2, v7

    move-object v8, v9

    move-object v3, v10

    goto/16 :goto_3
.end method

.method static synthetic f(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->B:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic g(Lcom/dolphin/browser/ui/fake/AlertController;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->P:Z

    return v0
.end method

.method static synthetic h(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/content/DialogInterface;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->c:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic i(Lcom/dolphin/browser/ui/fake/AlertController;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->O:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 213
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 215
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->j:Landroid/view/View;

    invoke-static {v0}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->d:Landroid/view/Window;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f03000c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 220
    invoke-direct {p0}, Lcom/dolphin/browser/ui/fake/AlertController;->d()V

    .line 221
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 377
    iput p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->F:I

    .line 378
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 379
    if-lez p1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    iget v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->F:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    if-nez p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 293
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/ui/fake/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 294
    return-void
.end method

.method public a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 314
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->O:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 318
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 342
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :pswitch_0
    iput-object p2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->q:Ljava/lang/CharSequence;

    .line 322
    iput-object p4, p0, Lcom/dolphin/browser/ui/fake/AlertController;->r:Landroid/os/Message;

    .line 323
    iput-object p5, p0, Lcom/dolphin/browser/ui/fake/AlertController;->s:Landroid/graphics/drawable/Drawable;

    .line 324
    invoke-direct {p0, p6}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->t:Landroid/content/res/ColorStateList;

    .line 344
    :goto_0
    return-void

    .line 328
    :pswitch_1
    iput-object p2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->v:Ljava/lang/CharSequence;

    .line 329
    iput-object p4, p0, Lcom/dolphin/browser/ui/fake/AlertController;->w:Landroid/os/Message;

    .line 330
    iput-object p5, p0, Lcom/dolphin/browser/ui/fake/AlertController;->x:Landroid/graphics/drawable/Drawable;

    .line 331
    invoke-direct {p0, p6}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->y:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 335
    :pswitch_2
    iput-object p2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->A:Ljava/lang/CharSequence;

    .line 336
    iput-object p4, p0, Lcom/dolphin/browser/ui/fake/AlertController;->B:Landroid/os/Message;

    .line 337
    iput-object p5, p0, Lcom/dolphin/browser/ui/fake/AlertController;->C:Landroid/graphics/drawable/Drawable;

    .line 338
    invoke-direct {p0, p6}, Lcom/dolphin/browser/ui/fake/AlertController;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->D:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 318
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
    .line 224
    if-nez p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->g:Landroid/graphics/drawable/Drawable;

    .line 226
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1

    .prologue
    .line 271
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->j:Landroid/view/View;

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->o:Z

    .line 273
    iput p2, p0, Lcom/dolphin/browser/ui/fake/AlertController;->k:I

    .line 274
    iput p3, p0, Lcom/dolphin/browser/ui/fake/AlertController;->l:I

    .line 275
    iput p4, p0, Lcom/dolphin/browser/ui/fake/AlertController;->m:I

    .line 276
    iput p5, p0, Lcom/dolphin/browser/ui/fake/AlertController;->n:I

    .line 277
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 234
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->e:Ljava/lang/CharSequence;

    .line 235
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->I:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 395
    iput-boolean p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->L:Z

    .line 396
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Landroid/widget/TextView;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 403
    packed-switch p1, :pswitch_data_0

    .line 411
    :cond_0
    :goto_0
    return-object v0

    .line 405
    :pswitch_0
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->r:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->p:Landroid/widget/TextView;

    goto :goto_0

    .line 407
    :pswitch_1
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->w:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->u:Landroid/widget/TextView;

    goto :goto_0

    .line 409
    :pswitch_2
    iget-object v1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->B:Landroid/os/Message;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->z:Landroid/widget/TextView;

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 229
    if-nez p1, :cond_0

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->h:Landroid/graphics/drawable/Drawable;

    .line 231
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->K:Landroid/view/View;

    .line 249
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 252
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->f:Ljava/lang/CharSequence;

    .line 253
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->J:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_0
    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->E:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 422
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 388
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->G:Landroid/graphics/drawable/Drawable;

    .line 389
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->G:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/dolphin/browser/ui/fake/AlertController;->j:Landroid/view/View;

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dolphin/browser/ui/fake/AlertController;->o:Z

    .line 264
    return-void
.end method
