.class public Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;
.super Lmobi/mgeek/TunnyBrowser/BaseActivity;
.source "SendCriticalBugsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;-><init>()V

    .line 105
    new-instance v0, Lcom/dolphin/browser/feedback/k;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/feedback/k;-><init>(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)V

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a:Landroid/view/View;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080075

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 87
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020020

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/util/bb;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    new-instance v1, Lcom/dolphin/browser/feedback/j;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/feedback/j;-><init>(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    return-void
.end method

.method private a(Landroid/content/Context;ZZZZ)V
    .locals 8

    .prologue
    .line 183
    invoke-static {}, Lcom/dolphin/browser/feedback/a;->a()Lcom/dolphin/browser/feedback/a;

    move-result-object v0

    .line 184
    const/4 v4, 0x0

    new-instance v7, Lcom/dolphin/browser/feedback/l;

    invoke-direct {v7, p0, p1}, Lcom/dolphin/browser/feedback/l;-><init>(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;Landroid/content/Context;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/dolphin/browser/feedback/a;->a(Landroid/content/Context;ZZZZZLcom/dolphin/browser/feedback/c;)V

    .line 211
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;Landroid/content/Context;ZZZZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p5}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a(Landroid/content/Context;ZZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 168
    iget-object v3, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->i:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 173
    if-eqz p1, :cond_3

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 178
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 168
    goto :goto_0

    :cond_1
    move v2, v1

    .line 170
    goto :goto_1

    .line 171
    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->f:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    goto :goto_3
.end method

.method static synthetic b(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b:Landroid/view/View;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-static {v0}, Lcom/dolphin/browser/theme/bf;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00f3

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    return-void
.end method

.method static synthetic c(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    const v5, 0x7f08020b

    const v4, 0x7f080035

    const v3, 0x7f020259

    const v2, 0x7f0a01a0

    .line 125
    invoke-virtual {p0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020331

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020338

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080129

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080209

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080202

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080204

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08020e

    invoke-virtual {p0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-direct {p0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b()V

    .line 136
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 138
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080208

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 142
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0189

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 143
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->g:Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00f3

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->i:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a0062

    invoke-static {v1}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 148
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/dolphin/browser/util/cu;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080210

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    invoke-static {v2}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 159
    return-void
.end method

.method static synthetic d(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->finish()V

    .line 217
    sget-object v0, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v0, 0x7f040006

    sget-object v1, Lcom/dolphin/browser/n/a;->a:Lmobi/mgeek/TunnyBrowser/R$anim;

    const v1, 0x7f040009

    invoke-virtual {p0, v0, v1}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->overridePendingTransition(II)V

    .line 218
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 163
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08020b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 165
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f08020b

    const/4 v2, 0x1

    .line 48
    invoke-super {p0, p1}, Lmobi/mgeek/TunnyBrowser/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->setContentView(I)V

    .line 50
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->a(Landroid/app/Activity;)V

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->e:Landroid/widget/TextView;

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v0, 0x7f0e0567

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08020a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08020c

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->i:Landroid/widget/RelativeLayout;

    .line 65
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->h:Landroid/widget/TextView;

    .line 66
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->g:Landroid/widget/TextView;

    .line 68
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0201d2

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->f:Landroid/graphics/drawable/Drawable;

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 77
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d:Landroid/view/View;

    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 80
    invoke-direct {p0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a()V

    .line 81
    invoke-direct {p0}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c()V

    .line 82
    return-void
.end method
