.class public Lcom/dolphin/browser/download/ui/BrowserDownloadPage;
.super Lcom/mgeek/android/ui/TabActivity;
.source "BrowserDownloadPage.java"


# instance fields
.field private a:Lcom/dolphin/browser/extensions/ThemeManager;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/mgeek/android/ui/TabHost;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/mgeek/android/ui/StorageBeam;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/dolphin/browser/theme/aq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/mgeek/android/ui/TabActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->i:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/dolphin/browser/download/ui/c;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/download/ui/c;-><init>(Lcom/dolphin/browser/download/ui/BrowserDownloadPage;)V

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->j:Lcom/dolphin/browser/theme/aq;

    .line 364
    return-void
.end method

.method private a(Lcom/dolphin/browser/download/ui/d;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 242
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    const/high16 v2, 0x3f800000

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 244
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 245
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 246
    return-object v1
.end method

.method private a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f03010c

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 251
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 253
    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    if-nez p2, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200c6

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200c4

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200c5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/util/cu;->a(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    :goto_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080156

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 175
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a017d

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 176
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0200c3

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200c1

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200c2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/dolphin/browser/util/cu;->a(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/BrowserDownloadPage;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/download/ui/BrowserDownloadPage;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    const-string v0, "downloaded"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v0, "fileManage"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 133
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080169

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    .line 135
    invoke-static {}, Lcom/dolphin/browser/core/AppContext;->getInstance()Lcom/dolphin/browser/core/AppContext;

    move-result-object v1

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08016a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08016b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080156

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v3, 0x7f0b0084

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->c()V

    .line 146
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->i:Ljava/util/ArrayList;

    .line 151
    if-nez v2, :cond_1

    .line 158
    :cond_0
    return-void

    .line 155
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 156
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(Landroid/view/View;I)V

    .line 155
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private d()V
    .locals 6

    .prologue
    const v5, 0x7f0a01bb

    const v4, 0x7f0a004d

    .line 179
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a00f6

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08001f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a00ea

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 183
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080150

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 184
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200d3

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabHost;->b()Lcom/mgeek/android/ui/TabWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v1}, Lcom/mgeek/android/ui/TabHost;->b()Lcom/mgeek/android/ui/TabWidget;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-virtual {v1, v5}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->h:Lcom/mgeek/android/ui/StorageBeam;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/StorageBeam;->a()V

    .line 190
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->c()V

    .line 191
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 259
    if-eqz v1, :cond_0

    .line 260
    const-string v0, "tab"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 263
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->W()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_1
    return-object v0
.end method

.method private f()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 288
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 289
    instance-of v1, v0, Lcom/dolphin/browser/download/ui/e;

    if-eqz v1, :cond_2

    .line 290
    check-cast v0, Lcom/dolphin/browser/download/ui/e;

    invoke-interface {v0}, Lcom/dolphin/browser/download/ui/e;->a_()Ljava/util/ArrayList;

    move-result-object v5

    .line 291
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g()V

    .line 311
    :goto_0
    return-void

    .line 295
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 296
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 297
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move v3, v4

    .line 298
    :goto_1
    if-ge v3, v7, :cond_2

    .line 299
    if-lt v3, v6, :cond_3

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 302
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 303
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/download/ui/f;

    .line 304
    iget-boolean v2, v1, Lcom/dolphin/browser/download/ui/f;->a:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 305
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f080156

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 306
    iget v9, v1, Lcom/dolphin/browser/download/ui/f;->b:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 298
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->b()V

    .line 279
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabHost;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "downloaded"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->f()V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 319
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 320
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x52

    if-eq v1, v2, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->b()V

    .line 322
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g()V

    .line 329
    :cond_0
    invoke-super {p0, p1}, Lcom/mgeek/android/ui/TabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 324
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 334
    invoke-super {p0, p1}, Lcom/mgeek/android/ui/TabActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->b()V

    .line 337
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 340
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iget-object v3, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->f:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 341
    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f0a0062

    .line 66
    invoke-super {p0, p1}, Lcom/mgeek/android/ui/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "BrowserDownloadPage"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/dolphin/browser/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    .line 70
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->j:Lcom/dolphin/browser/theme/aq;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Lcom/dolphin/browser/theme/aq;)V

    .line 72
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a()Lcom/mgeek/android/ui/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    .line 76
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e01c7

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v1, Lcom/dolphin/browser/download/ui/d;->a:Lcom/dolphin/browser/download/ui/d;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(Lcom/dolphin/browser/download/ui/d;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    const-string v3, "downloaded"

    invoke-virtual {v2, v3}, Lcom/mgeek/android/ui/TabHost;->a(Ljava/lang/String;)Lcom/mgeek/android/ui/az;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgeek/android/ui/az;->a(Landroid/view/View;)Lcom/mgeek/android/ui/az;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/mgeek/android/ui/az;->a(Landroid/content/Intent;)Lcom/mgeek/android/ui/az;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/az;)V

    .line 81
    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->b:Landroid/widget/TextView;

    .line 83
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e026b

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v1, Lcom/dolphin/browser/download/ui/d;->b:Lcom/dolphin/browser/download/ui/d;

    invoke-direct {p0, v1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(Lcom/dolphin/browser/download/ui/d;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v0, v5, v1}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(IILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/TextView;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    const-string v3, "fileManage"

    invoke-virtual {v2, v3}, Lcom/mgeek/android/ui/TabHost;->a(Ljava/lang/String;)Lcom/mgeek/android/ui/az;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mgeek/android/ui/az;->a(Landroid/view/View;)Lcom/mgeek/android/ui/az;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/mgeek/android/ui/az;->a(Landroid/content/Intent;)Lcom/mgeek/android/ui/az;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/az;)V

    .line 88
    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->c:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    new-instance v1, Lcom/dolphin/browser/download/ui/a;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/download/ui/a;-><init>(Lcom/dolphin/browser/download/ui/BrowserDownloadPage;)V

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabHost;->a(Lcom/mgeek/android/ui/ay;)V

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v0}, Lcom/mgeek/android/ui/TabHost;->b()Lcom/mgeek/android/ui/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgeek/android/ui/TabWidget;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 100
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a:Lcom/dolphin/browser/extensions/ThemeManager;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0200c9

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08014f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->e:Landroid/view/View;

    .line 103
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080151

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->f:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/dolphin/browser/download/ui/b;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/download/ui/b;-><init>(Lcom/dolphin/browser/download/ui/BrowserDownloadPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080152

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mgeek/android/ui/StorageBeam;

    iput-object v0, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->h:Lcom/mgeek/android/ui/StorageBeam;

    .line 112
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->e()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d:Lcom/mgeek/android/ui/TabHost;

    invoke-virtual {v1, v0}, Lcom/mgeek/android/ui/TabHost;->b(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a(Ljava/lang/String;)V

    .line 118
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 120
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->d()V

    .line 121
    return-void
.end method

.method public onMenuItemClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 352
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 353
    invoke-direct {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->g()V

    .line 354
    instance-of v2, v1, Lcom/dolphin/browser/download/ui/f;

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/dolphin/browser/download/ui/e;

    if-eqz v2, :cond_0

    .line 355
    check-cast v0, Lcom/dolphin/browser/download/ui/e;

    check-cast v1, Lcom/dolphin/browser/download/ui/f;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/download/ui/e;->onMenuItemClick(Lcom/dolphin/browser/download/ui/f;)V

    .line 357
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dolphin/browser/downloads/DownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 237
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0}, Lcom/mgeek/android/ui/TabActivity;->onPause()V

    .line 229
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dolphin/browser/download/ui/BrowserDownloadPage;->a()Lcom/mgeek/android/ui/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgeek/android/ui/TabHost;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->g(Ljava/lang/String;)V

    .line 231
    return-void
.end method
