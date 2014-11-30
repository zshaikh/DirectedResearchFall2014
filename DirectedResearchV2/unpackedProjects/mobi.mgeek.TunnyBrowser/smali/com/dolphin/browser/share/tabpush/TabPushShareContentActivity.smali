.class public Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "TabPushShareContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final b:Ljava/text/SimpleDateFormat;


# instance fields
.field a:Ljava/lang/Runnable;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/dolphin/browser/share/tabpush/d;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/Button;

.field private m:Landroid/widget/ScrollView;

.field private n:Landroid/app/ProgressDialog;

.field private o:Landroid/widget/Button;

.field private p:Lcom/dolphin/browser/push/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j:Lcom/dolphin/browser/share/tabpush/d;

    .line 413
    new-instance v0, Lcom/dolphin/browser/share/tabpush/a;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/tabpush/a;-><init>(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->p:Lcom/dolphin/browser/push/g;

    .line 428
    new-instance v0, Lcom/dolphin/browser/share/tabpush/b;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/share/tabpush/b;-><init>(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->a:Ljava/lang/Runnable;

    .line 536
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->k()V

    return-void
.end method

.method static synthetic d()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->b:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 87
    .line 90
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_2

    .line 94
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 95
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-interface {v3}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    move-object v3, v2

    move-object v2, v0

    .line 102
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080347

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->c:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080349

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->d:Landroid/widget/LinearLayout;

    .line 105
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08034a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->f:Landroid/widget/ImageView;

    .line 106
    if-nez v3, :cond_0

    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f02001d

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08034b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->g:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08034c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->h:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08034d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->e:Landroid/widget/LinearLayout;

    .line 117
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080350

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    .line 118
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->m:Landroid/widget/ScrollView;

    .line 119
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->m:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 120
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0801a6

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->k:Landroid/widget/TextView;

    .line 121
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080101

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->l:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080351

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->o:Landroid/widget/Button;

    .line 124
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Lcom/dolphin/browser/share/tabpush/d;

    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/dolphin/browser/share/tabpush/d;-><init>(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j:Lcom/dolphin/browser/share/tabpush/d;

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j:Lcom/dolphin/browser/share/tabpush/d;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 128
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->k()V

    .line 129
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->a()V

    .line 130
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_1
    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    .line 454
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 455
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e050b

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 457
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/dolphin/browser/share/tabpush/c;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/share/tabpush/c;-><init>(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/app/Dialog;)Z

    .line 469
    :cond_1
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Landroid/content/DialogInterface;)Z

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->n:Landroid/app/ProgressDialog;

    .line 477
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 481
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->m:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j:Lcom/dolphin/browser/share/tabpush/d;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j:Lcom/dolphin/browser/share/tabpush/d;

    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/share/tabpush/d;->a(Ljava/util/List;)V

    .line 486
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->j:Lcom/dolphin/browser/share/tabpush/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/tabpush/d;->notifyDataSetChanged()V

    .line 488
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->g()V

    .line 489
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 493
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->m:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->o:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 496
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->f()V

    .line 497
    return-void
.end method

.method private j()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/f;->f()Ljava/util/List;

    move-result-object v0

    .line 502
    new-instance v1, Lcom/dolphin/browser/push/data/c;

    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dolphin/browser/push/data/c;-><init>(Ljava/util/Locale;)V

    .line 504
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->h()V

    .line 534
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->m()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->h()V

    goto :goto_0

    .line 526
    :cond_1
    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i()V

    goto :goto_0

    .line 529
    :cond_2
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i()V

    .line 532
    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->c()Z

    goto :goto_0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/dolphin/browser/DolphinService/Account/b;->a()Lcom/dolphin/browser/DolphinService/Account/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/DolphinService/Account/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 9

    .prologue
    const v8, 0x7f0a01a0

    const v4, 0x7f0a015d

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 149
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 151
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 152
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020237

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020225

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 154
    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v3, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->g:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->k:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a009b

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020245

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0061

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 164
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v4, 0x7f0b005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 165
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v5, 0x7f0b0060

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 166
    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    iget-object v2, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 168
    iget-object v2, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v1, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->l:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02004c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->l:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0148

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 173
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->i:Landroid/widget/ListView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202b3

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 174
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020095

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 176
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v2, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->o:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->o:Landroid/widget/Button;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v0, v8}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 179
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->p:Lcom/dolphin/browser/push/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/f;->a(Lcom/dolphin/browser/push/g;)V

    .line 443
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 447
    invoke-static {}, Lcom/dolphin/browser/push/f;->a()Lcom/dolphin/browser/push/f;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->p:Lcom/dolphin/browser/push/g;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/f;->b(Lcom/dolphin/browser/push/g;)V

    .line 448
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 545
    packed-switch p1, :pswitch_data_0

    .line 557
    :goto_0
    return-void

    .line 547
    :pswitch_0
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 548
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->k()V

    goto :goto_0

    .line 550
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->finish()V

    goto :goto_0

    .line 545
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 136
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080101

    if-ne v1, v0, :cond_1

    .line 137
    invoke-static {}, Lcom/dolphin/browser/push/t;->a()Lcom/dolphin/browser/push/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->e()Z

    .line 138
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->f()V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080351

    if-ne v1, v0, :cond_2

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 142
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080347

    if-ne v1, v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300f1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->setContentView(I)V

    .line 76
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/push/t;->a(Landroid/content/Context;)Lcom/dolphin/browser/push/t;

    .line 77
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->e()V

    .line 78
    invoke-direct {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/DolphinService/ui/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->b()V

    .line 83
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->c()V

    .line 567
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onDestroy()V

    .line 568
    return-void
.end method
