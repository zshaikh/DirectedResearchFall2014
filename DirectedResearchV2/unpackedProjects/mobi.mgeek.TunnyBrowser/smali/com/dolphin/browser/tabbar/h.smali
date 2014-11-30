.class Lcom/dolphin/browser/tabbar/h;
.super Landroid/widget/LinearLayout;
.source "TabPageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tabbar/d;

.field private b:Z

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/dolphin/browser/ui/view/LabelView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/dolphin/browser/core/ITab;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tabbar/d;Landroid/content/Context;Lcom/dolphin/browser/core/ITab;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 77
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    .line 79
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p3, p0, Lcom/dolphin/browser/tabbar/h;->f:Lcom/dolphin/browser/core/ITab;

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/h;->setOrientation(I)V

    .line 82
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/h;->setGravity(I)V

    .line 83
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/h;->c:Landroid/widget/ImageView;

    .line 84
    new-instance v0, Lcom/dolphin/browser/ui/view/LabelView;

    invoke-direct {v0, p2}, Lcom/dolphin/browser/ui/view/LabelView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->a(Z)V

    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->c(I)V

    .line 89
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/dolphin/browser/tabbar/h;->addView(Landroid/view/View;II)V

    .line 91
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/dolphin/browser/tabbar/h;->addView(Landroid/view/View;II)V

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/dolphin/browser/tabbar/h;->addView(Landroid/view/View;II)V

    .line 94
    invoke-interface {p3}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/h;->a(Ljava/lang/CharSequence;)V

    .line 95
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/tabbar/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {p0, p0}, Lcom/dolphin/browser/tabbar/h;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/h;->e()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    return-void
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .prologue
    .line 108
    if-nez p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/view/LabelView;->a(Ljava/lang/String;)V

    .line 111
    :cond_1
    return-void

    .line 109
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/d;->a(Lcom/dolphin/browser/tabbar/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/util/cu;->a(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/core/ITab;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->f:Lcom/dolphin/browser/core/ITab;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/core/ITab;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 236
    iput-object p1, p0, Lcom/dolphin/browser/tabbar/h;->f:Lcom/dolphin/browser/core/ITab;

    .line 238
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-interface {p1}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/tabbar/h;->a(Ljava/lang/CharSequence;Z)V

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/h;->b()V

    .line 245
    return-void

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/dolphin/browser/titlebar/k;->b(Lcom/dolphin/browser/core/ITab;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/tabbar/h;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dolphin/browser/tabbar/h;->a(Ljava/lang/CharSequence;Z)V

    .line 104
    return-void
.end method

.method public b()V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v7, -0x1

    const/high16 v6, 0x3f800000

    const/4 v5, 0x0

    .line 125
    invoke-direct {p0}, Lcom/dolphin/browser/tabbar/h;->e()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->f:Lcom/dolphin/browser/core/ITab;

    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v1}, Lcom/dolphin/browser/tabbar/d;->b(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentTab()Lcom/dolphin/browser/core/ITab;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 128
    invoke-virtual {p0, v2}, Lcom/dolphin/browser/tabbar/h;->setSelected(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/h;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 131
    if-eqz v1, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p0, v1, :cond_1

    .line 132
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/LabelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 138
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v1}, Lcom/dolphin/browser/tabbar/d;->d(Lcom/dolphin/browser/tabbar/d;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 139
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/ui/view/LabelView;->setSelected(Z)V

    .line 140
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a01ac

    invoke-static {v3}, Lcom/dolphin/browser/util/cu;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/dolphin/browser/ui/view/LabelView;->a(Landroid/content/res/ColorStateList;)V

    .line 142
    if-eqz v2, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/h;->bringToFront()V

    .line 144
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020157

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0123

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/dolphin/browser/util/bb;->c(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v2}, Lcom/dolphin/browser/tabbar/d;->e(Lcom/dolphin/browser/tabbar/d;)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 153
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v2}, Lcom/dolphin/browser/tabbar/d;->f(Lcom/dolphin/browser/tabbar/d;)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 154
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 155
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 156
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/ui/view/LabelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    invoke-static {}, Lcom/dolphin/browser/tabbar/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    invoke-virtual {v0}, Lcom/dolphin/browser/ui/view/LabelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    .line 181
    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 185
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 187
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->d:Lcom/dolphin/browser/ui/view/LabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/ui/view/LabelView;->c(I)V

    .line 191
    :cond_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v1}, Lcom/dolphin/browser/tabbar/d;->c(Lcom/dolphin/browser/tabbar/d;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/dolphin/browser/tabbar/h;->f:Lcom/dolphin/browser/core/ITab;

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getTabCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_2
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v1}, Lcom/dolphin/browser/tabbar/d;->g(Lcom/dolphin/browser/tabbar/d;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 175
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v1}, Lcom/dolphin/browser/tabbar/d;->h(Lcom/dolphin/browser/tabbar/d;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 176
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 165
    :cond_4
    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 167
    invoke-static {}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->getInstance()Lmobi/mgeek/TunnyBrowser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lmobi/mgeek/TunnyBrowser/BrowserSettings;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    const/16 v2, 0xa8

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 172
    :goto_3
    iget-object v2, p0, Lcom/dolphin/browser/tabbar/h;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 170
    :cond_5
    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/dolphin/browser/tabbar/h;->b:Z

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->f:Lcom/dolphin/browser/core/ITab;

    .line 223
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dolphin/browser/titlebar/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/h;->a(Ljava/lang/CharSequence;)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {v0}, Lcom/dolphin/browser/titlebar/k;->b(Lcom/dolphin/browser/core/ITab;)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tabbar/h;->a(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 206
    invoke-virtual {p0}, Lcom/dolphin/browser/tabbar/h;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 207
    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x3fe51eb851eb851fL

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/dolphin/browser/tabbar/h;->b:Z

    .line 209
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/d;->i(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/tabbar/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-static {v0}, Lcom/dolphin/browser/tabbar/d;->i(Lcom/dolphin/browser/tabbar/d;)Lcom/dolphin/browser/tabbar/i;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/tabbar/h;->f:Lcom/dolphin/browser/core/ITab;

    iget-boolean v2, p0, Lcom/dolphin/browser/tabbar/h;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/tabbar/i;->a(Lcom/dolphin/browser/core/ITab;Z)V

    .line 199
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/dolphin/browser/tabbar/h;->a:Lcom/dolphin/browser/tabbar/d;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/tabbar/d;->showContextMenuForChild(Landroid/view/View;)Z

    .line 251
    const/4 v0, 0x1

    return v0
.end method
