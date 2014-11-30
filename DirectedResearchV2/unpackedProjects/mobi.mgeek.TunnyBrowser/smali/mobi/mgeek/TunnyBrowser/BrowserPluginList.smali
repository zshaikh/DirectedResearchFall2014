.class public Lmobi/mgeek/TunnyBrowser/BrowserPluginList;
.super Landroid/view/CustomMenuActivity;
.source "BrowserPluginList.java"


# instance fields
.field b:Lcom/mgeek/android/ui/q;

.field c:Lcom/mgeek/android/ui/p;

.field private d:Lcom/mgeek/android/ui/DraggableListView;

.field private e:Lcom/dolphin/browser/extensions/ay;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/view/CustomMenuActivity;-><init>()V

    .line 133
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bu;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/bu;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->k:Landroid/view/View$OnClickListener;

    .line 160
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bv;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/bv;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->b:Lcom/mgeek/android/ui/q;

    .line 172
    new-instance v0, Lmobi/mgeek/TunnyBrowser/bw;

    invoke-direct {v0, p0}, Lmobi/mgeek/TunnyBrowser/bw;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->c:Lcom/mgeek/android/ui/p;

    return-void
.end method

.method static synthetic a(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->d()V

    return-void
.end method

.method static synthetic b(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)Lcom/mgeek/android/ui/DraggableListView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->d:Lcom/mgeek/android/ui/DraggableListView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->g:Landroid/widget/RelativeLayout;

    .line 105
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->h:Landroid/widget/TextView;

    .line 106
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->i:Landroid/widget/ImageView;

    .line 107
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080298

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->j:Landroid/widget/ImageView;

    .line 109
    invoke-static {}, Lcom/dolphin/browser/preload/m;->a()Lcom/dolphin/browser/preload/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/preload/m;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    :cond_0
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->i:Landroid/widget/ImageView;

    new-instance v1, Lmobi/mgeek/TunnyBrowser/bt;

    invoke-direct {v1, p0}, Lmobi/mgeek/TunnyBrowser/bt;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->c()V

    .line 122
    return-void
.end method

.method static synthetic c(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;)Lcom/dolphin/browser/extensions/ay;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->e:Lcom/dolphin/browser/extensions/ay;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 126
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->g:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->g:Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->h:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00af

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->i:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->j:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02000a

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/dolphin/browser/c/p;

    invoke-direct {v0}, Lcom/dolphin/browser/c/p;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/p;->a()Z

    .line 192
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->finish()V

    .line 193
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/view/CustomMenuActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/dolphin/browser/ui/x;->a()Lcom/dolphin/browser/ui/x;

    move-result-object v0

    new-instance v1, Lcom/dolphin/browser/ui/fake/r;

    invoke-direct {v1}, Lcom/dolphin/browser/ui/fake/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/x;->a(Lcom/dolphin/browser/ui/w;)V

    .line 55
    :cond_0
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 56
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v3

    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300ae

    invoke-static {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserActivity;->a(Landroid/app/Activity;I)V

    .line 58
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->b()V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->f:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->f:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00f2

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08029c

    invoke-virtual {p0, v0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/DraggableListView;

    .line 64
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080299

    invoke-virtual {p0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 65
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08029a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v4, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v4, 0x7f0201f0

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08029b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0062

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v2, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setEmptyView(Landroid/view/View;)V

    .line 73
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(I)V

    .line 74
    invoke-virtual {v0, v5}, Lcom/mgeek/android/ui/DraggableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 75
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201b8

    invoke-virtual {v3, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0}, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(Landroid/view/WindowManager;)V

    .line 77
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->b:Lcom/mgeek/android/ui/q;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/q;)V

    .line 78
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->c:Lcom/mgeek/android/ui/p;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/p;)V

    .line 79
    sget-object v1, Lcom/mgeek/android/ui/s;->a:Lcom/mgeek/android/ui/s;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->a(Lcom/mgeek/android/ui/s;)V

    .line 80
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setCacheColorHint(I)V

    .line 81
    invoke-static {p0}, Lcom/dolphin/browser/extensions/ay;->a(Landroid/content/Context;)Lcom/dolphin/browser/extensions/ay;

    move-result-object v1

    iput-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->e:Lcom/dolphin/browser/extensions/ay;

    .line 82
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->e:Lcom/dolphin/browser/extensions/ay;

    new-instance v2, Lmobi/mgeek/TunnyBrowser/bx;

    invoke-direct {v2, p0, v5}, Lmobi/mgeek/TunnyBrowser/bx;-><init>(Lmobi/mgeek/TunnyBrowser/BrowserPluginList;Lmobi/mgeek/TunnyBrowser/bt;)V

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ay;->a(Lcom/dolphin/browser/extensions/az;)V

    .line 83
    iget-object v1, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->e:Lcom/dolphin/browser/extensions/ay;

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/DraggableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iput-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->d:Lcom/mgeek/android/ui/DraggableListView;

    .line 85
    iget-object v0, p0, Lmobi/mgeek/TunnyBrowser/BrowserPluginList;->e:Lcom/dolphin/browser/extensions/ay;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ay;->getCount()I

    move-result v0

    .line 86
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->b(Landroid/content/Context;)J

    move-result-wide v1

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 88
    const-wide/32 v5, 0x5265c00

    add-long/2addr v1, v5

    cmp-long v1, v3, v1

    if-lez v1, :cond_1

    .line 89
    const-string v1, "add-ons"

    const-string v2, "installed"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1, p0, v3, v4}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/content/Context;J)V

    .line 92
    :cond_1
    if-nez v0, :cond_2

    .line 93
    invoke-static {}, Lcom/dolphin/browser/extensions/g;->a()Lcom/dolphin/browser/extensions/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/g;->b()V

    .line 95
    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/view/CustomMenuActivity;->onPause()V

    .line 158
    return-void
.end method
