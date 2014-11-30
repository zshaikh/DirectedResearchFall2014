.class public Lcom/mgeek/android/ui/StorageBeam;
.super Landroid/widget/RelativeLayout;
.source "StorageBeam.java"


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/StorageBeam;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/StorageBeam;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-direct {p0, p1}, Lcom/mgeek/android/ui/StorageBeam;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method private a(F)I
    .locals 2

    .prologue
    const v0, 0x7f0a005e

    .line 116
    const v1, 0x3ea8f5c3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 117
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    const v1, 0x3f28f5c3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 119
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    goto :goto_0

    .line 121
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a005f

    goto :goto_0
.end method

.method private a(JJ)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 93
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 94
    long-to-float v1, p3

    long-to-float v2, p1

    div-float/2addr v1, v2

    .line 95
    const/high16 v2, 0x3f800000

    sub-float/2addr v2, v1

    .line 97
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 99
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 100
    iget-object v4, p0, Lcom/mgeek/android/ui/StorageBeam;->c:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/mgeek/android/ui/StorageBeam;->b(F)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 101
    iget-object v4, p0, Lcom/mgeek/android/ui/StorageBeam;->c:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 104
    iget-object v1, p0, Lcom/mgeek/android/ui/StorageBeam;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    invoke-virtual {p0}, Lcom/mgeek/android/ui/StorageBeam;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    invoke-direct {p0, v2}, Lcom/mgeek/android/ui/StorageBeam;->a(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    .line 107
    iget-object v2, p0, Lcom/mgeek/android/ui/StorageBeam;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v2, p0, Lcom/mgeek/android/ui/StorageBeam;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0652

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/StorageBeam;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->e:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e0087

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/mgeek/android/ui/StorageBeam;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03003f

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08014b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->b:Landroid/view/View;

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08014a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->c:Landroid/view/View;

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08014c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->d:Landroid/widget/TextView;

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08014d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->e:Landroid/widget/TextView;

    .line 51
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080149

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->a:Landroid/widget/RelativeLayout;

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030040

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 54
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080047

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->f:Landroid/widget/TextView;

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08014e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->g:Landroid/widget/RelativeLayout;

    .line 57
    invoke-virtual {p0}, Lcom/mgeek/android/ui/StorageBeam;->a()V

    .line 58
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/mgeek/android/ui/StorageBeam;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(F)I
    .locals 1

    .prologue
    .line 126
    const v0, 0x3ea8f5c3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 127
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a005b

    .line 131
    :goto_0
    return v0

    .line 128
    :cond_0
    const v0, 0x3f28f5c3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 129
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a005c

    goto :goto_0

    .line 131
    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v0, 0x7f0a005d

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/mgeek/android/ui/StorageBeam;->b()V

    .line 62
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/mgeek/android/ui/StorageBeam;->f:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a005e

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    .line 69
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->c()J

    move-result-wide v0

    .line 71
    invoke-static {}, Lcom/dolphin/browser/util/StorageHelper;->d()J

    move-result-wide v4

    .line 74
    :goto_0
    cmp-long v2, v4, v2

    if-gtz v2, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/StorageBeam;->a(Z)V

    .line 80
    :goto_1
    return-void

    .line 77
    :cond_0
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/mgeek/android/ui/StorageBeam;->a(JJ)V

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mgeek/android/ui/StorageBeam;->a(Z)V

    goto :goto_1

    :cond_1
    move-wide v0, v2

    move-wide v4, v2

    goto :goto_0
.end method
