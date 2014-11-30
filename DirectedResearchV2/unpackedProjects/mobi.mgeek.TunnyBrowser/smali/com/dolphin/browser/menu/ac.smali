.class public Lcom/dolphin/browser/menu/ac;
.super Landroid/widget/FrameLayout;
.source "PanelMenuItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/ImageView;

.field protected c:Lcom/dolphin/browser/menu/ae;

.field protected d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/dolphin/browser/menu/ac;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 42
    iput-object p1, p0, Lcom/dolphin/browser/menu/ac;->d:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->removeAllViews()V

    .line 48
    iput-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 51
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/ac;->addView(Landroid/view/View;)V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/menu/ac;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/k;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/k;->a(I)Lcom/dolphin/browser/k/l;

    move-result-object v0

    .line 83
    sget-object v1, Lcom/dolphin/browser/menu/ad;->a:[I

    invoke-virtual {v0}, Lcom/dolphin/browser/k/l;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/menu/ae;->a(Z)V

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/menu/ae;->b(Z)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/menu/ae;->a(Z)V

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/menu/ae;->b(Z)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/menu/ae;->b(Z)V

    .line 94
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/menu/ae;->a(Z)V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 112
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/ae;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dolphin/browser/util/bb;->b()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f02020c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/ae;->g()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 120
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/w;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    .line 121
    iget-object v2, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/ae;->h()I

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v3}, Lcom/dolphin/browser/menu/ae;->h()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->e:Lmobi/mgeek/TunnyBrowser/R$dimen;

    const v1, 0x7f0b00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v4, v0, v4, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/ae;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->b()V

    .line 140
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->c()V

    .line 141
    return-void

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/ae;->g()I

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 125
    invoke-static {}, Lcom/dolphin/browser/menu/w;->a()Lcom/dolphin/browser/menu/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/w;->g()I

    move-result v1

    .line 126
    iget-object v2, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 127
    iget-object v2, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/ae;->h()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v3}, Lcom/dolphin/browser/menu/ae;->h()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ac;->h()V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/menu/ae;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    .line 68
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ac;->g()V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ac;->f()V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->a()V

    .line 73
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->d()V

    .line 74
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->e()Landroid/view/View;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/ae;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->e()Landroid/view/View;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 153
    iget-object v1, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v1}, Lcom/dolphin/browser/menu/ae;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, p0}, Lcom/dolphin/browser/menu/ae;->addObserver(Ljava/util/Observer;)V

    .line 161
    :cond_0
    return-void
.end method

.method public e()Landroid/view/View;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->a:Landroid/widget/TextView;

    .line 209
    :goto_0
    return-object v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->b:Landroid/widget/ImageView;

    goto :goto_0

    .line 209
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v1

    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/dolphin/browser/menu/v;->b(IZ)V

    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->a()Lcom/dolphin/browser/c/a;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    .line 196
    :cond_0
    return-void

    .line 190
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    instance-of v2, p1, Lcom/dolphin/browser/k/k;

    if-eqz v2, :cond_2

    .line 170
    invoke-static {p2}, Lcom/dolphin/browser/k/k;->a(Ljava/lang/Object;)I

    move-result v2

    .line 171
    iget-object v3, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v3}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 174
    check-cast p1, Lcom/dolphin/browser/k/k;

    iget-object v2, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v2}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/dolphin/browser/k/k;->a(I)Lcom/dolphin/browser/k/l;

    move-result-object v2

    .line 175
    sget-object v3, Lcom/dolphin/browser/k/l;->b:Lcom/dolphin/browser/k/l;

    if-eq v3, v2, :cond_4

    .line 176
    iget-object v3, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v3, v0}, Lcom/dolphin/browser/menu/ae;->a(Z)V

    .line 177
    iget-object v3, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    sget-object v4, Lcom/dolphin/browser/k/l;->d:Lcom/dolphin/browser/k/l;

    if-ne v4, v2, :cond_3

    :goto_1
    invoke-virtual {v3, v0}, Lcom/dolphin/browser/menu/ae;->b(Z)V

    .line 183
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/dolphin/browser/menu/ac;->a()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 177
    goto :goto_1

    .line 179
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/ae;->b(Z)V

    .line 180
    iget-object v0, p0, Lcom/dolphin/browser/menu/ac;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/ae;->a(Z)V

    goto :goto_2
.end method
