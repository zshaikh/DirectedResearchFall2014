.class Lcom/dolphin/browser/menu/ak;
.super Landroid/widget/ScrollView;
.source "PanelMenuView.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuView;

.field private b:Landroid/widget/RelativeLayout;

.field private final c:Lcom/dolphin/browser/extensions/p;

.field private final d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/menu/PanelMenuView;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 137
    iput-object p1, p0, Lcom/dolphin/browser/menu/ak;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    .line 139
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 265
    new-instance v0, Lcom/dolphin/browser/menu/al;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/al;-><init>(Lcom/dolphin/browser/menu/ak;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/ak;->c:Lcom/dolphin/browser/extensions/p;

    .line 280
    new-instance v0, Lcom/dolphin/browser/menu/am;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/menu/am;-><init>(Lcom/dolphin/browser/menu/ak;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/ak;->d:Landroid/view/View$OnClickListener;

    .line 140
    invoke-direct {p0, p2}, Lcom/dolphin/browser/menu/ak;->a(Landroid/content/Context;)V

    .line 141
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 145
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/ak;->b:Landroid/widget/RelativeLayout;

    .line 146
    iget-object v0, p0, Lcom/dolphin/browser/menu/ak;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/ak;->addView(Landroid/view/View;)V

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/menu/ak;)V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ak;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/menu/ak;->b:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/ak;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 183
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ak;->d()I

    move-result v0

    if-gtz v0, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ak;->c()V

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ak;->invalidate()V

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 191
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ak;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-static {v1}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 192
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 193
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/ak;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-static {v2}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0201f1

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 200
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/w;->c()I

    move-result v2

    .line 201
    div-int/lit8 v3, v2, 0x3

    div-int/lit8 v2, v2, 0xc

    invoke-virtual {v1, v5, v3, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 202
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    const/high16 v3, 0x3f800000

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/ak;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-static {v2}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 210
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
    sget-object v2, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v2, 0x7f0e01ff

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 212
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a0062

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    iget-object v1, p0, Lcom/dolphin/browser/menu/ak;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v1, p0, Lcom/dolphin/browser/menu/ak;->b:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    return-void
.end method

.method private d()I
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 222
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/menu/ak;->c:Lcom/dolphin/browser/extensions/p;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/al;->a(Lcom/dolphin/browser/extensions/p;)V

    .line 223
    invoke-static {}, Lcom/dolphin/browser/extensions/al;->a()Lcom/dolphin/browser/extensions/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/al;->g()[Lcom/dolphin/browser/extensions/ba;

    move-result-object v3

    .line 225
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->b()I

    move-result v7

    .line 228
    invoke-virtual {v0}, Lcom/dolphin/browser/menu/w;->c()I

    move-result v8

    .line 231
    array-length v4, v3

    move v2, v5

    move v6, v5

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 233
    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/ba;->a()[Lcom/dolphin/browser/extensions/n;

    move-result-object v9

    .line 235
    array-length v10, v9

    move v1, v5

    move v0, v6

    :goto_1
    if-ge v1, v10, :cond_1

    aget-object v6, v9, v1

    .line 236
    invoke-virtual {v6}, Lcom/dolphin/browser/extensions/n;->k()Z

    move-result v11

    if-nez v11, :cond_0

    .line 235
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    :cond_0
    new-instance v11, Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    iget-object v12, p0, Lcom/dolphin/browser/menu/ak;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-static {v12}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v11, v6}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->a(Lcom/dolphin/browser/extensions/n;)V

    .line 241
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 243
    rem-int/lit8 v12, v0, 0x3

    mul-int/2addr v12, v7

    div-int/lit8 v13, v0, 0x3

    mul-int/2addr v13, v8

    invoke-virtual {v6, v12, v13, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    iget-object v12, p0, Lcom/dolphin/browser/menu/ak;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v12, v11, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 231
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v6, v0

    goto :goto_0

    .line 250
    :cond_2
    if-lez v6, :cond_3

    .line 251
    new-instance v0, Lcom/dolphin/browser/menu/PanelMenuAddonItem;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ak;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-static {v1}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/menu/ak;->a:Lcom/dolphin/browser/menu/PanelMenuView;

    invoke-static {v2}, Lcom/dolphin/browser/menu/PanelMenuView;->a(Lcom/dolphin/browser/menu/PanelMenuView;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e03e7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->k:Lmobi/mgeek/TunnyBrowser/R$raw;

    const v4, 0x7f060027

    invoke-virtual {v3, v4}, Lcom/dolphin/browser/util/bb;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IZ)V

    .line 255
    iget-object v1, p0, Lcom/dolphin/browser/menu/ak;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/PanelMenuAddonItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 258
    rem-int/lit8 v2, v6, 0x3

    mul-int/2addr v2, v7

    div-int/lit8 v3, v6, 0x3

    mul-int/2addr v3, v8

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 260
    iget-object v2, p0, Lcom/dolphin/browser/menu/ak;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    :cond_3
    return v6
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ak;->b()V

    .line 175
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 153
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ak;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 170
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 158
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 159
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 165
    return-void
.end method
