.class public Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;
.super Lcom/dolphin/browser/launcher/ShortcutIcon;
.source "MyShortcutIcon.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# instance fields
.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/dolphin/browser/launcher/ShortcutIcon;-><init>(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method private a(Lcom/dolphin/browser/launcher/cl;)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p1}, Lcom/dolphin/browser/launcher/cl;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/w;

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/dolphin/browser/ui/launcher/w;

    invoke-direct {v0}, Lcom/dolphin/browser/ui/launcher/w;-><init>()V

    .line 84
    invoke-virtual {p1, v0}, Lcom/dolphin/browser/launcher/cl;->a(Ljava/lang/Object;)V

    .line 102
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->f()V

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;Lcom/dolphin/browser/launcher/cl;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->a(Lcom/dolphin/browser/launcher/cl;)V

    return-void
.end method

.method static synthetic b(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)Lcom/dolphin/browser/launcher/cl;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    return-object v0
.end method

.method static synthetic c(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)Lcom/dolphin/browser/launcher/cl;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_0

    .line 128
    invoke-static {}, Lcom/dolphin/browser/theme/ak;->H()Lcom/dolphin/browser/theme/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/theme/ak;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->p:Lmobi/mgeek/TunnyBrowser/R$integer;

    const v2, 0x7f0c001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 134
    :goto_0
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 136
    :cond_0
    return-void

    .line 132
    :cond_1
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/w;

    .line 175
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/dolphin/browser/ui/launcher/w;->b:Z

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->invalidate()V

    .line 182
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a()V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->setWillNotDraw(Z)V

    .line 71
    return-void
.end method

.method public a(Lcom/dolphin/browser/launcher/bi;)V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->a(Lcom/dolphin/browser/launcher/bi;)V

    .line 76
    check-cast p1, Lcom/dolphin/browser/launcher/cl;

    invoke-direct {p0, p1}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->a(Lcom/dolphin/browser/launcher/cl;)V

    .line 77
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->updateTheme()V

    .line 78
    return-void
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const v1, 0x7fffffff

    .line 153
    if-nez p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/w;

    .line 155
    if-eqz v0, :cond_1

    iget v0, v0, Lcom/dolphin/browser/ui/launcher/w;->a:I

    .line 156
    :goto_0
    if-eq v0, v1, :cond_0

    .line 157
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/dolphin/browser/f/a/b;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 160
    :cond_0
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->b(Landroid/graphics/Bitmap;)V

    .line 161
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->e()V

    .line 162
    return-void

    :cond_1
    move v0, v1

    .line 155
    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->t()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/w;

    .line 166
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/dolphin/browser/ui/launcher/w;->b:Z

    if-eqz v1, :cond_0

    .line 167
    invoke-static {}, Lcom/dolphin/browser/f/b/d;->a()Lcom/dolphin/browser/f/b/d;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v2}, Lcom/dolphin/browser/launcher/cl;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/f/b/d;->a(Ljava/lang/String;)V

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dolphin/browser/ui/launcher/w;->b:Z

    .line 169
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->f()V

    .line 171
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->d(Ljava/lang/Object;)V

    .line 142
    new-instance v0, Lcom/dolphin/browser/ui/launcher/v;

    invoke-direct {v0, p0}, Lcom/dolphin/browser/ui/launcher/v;-><init>(Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;)V

    invoke-static {v0}, Lcom/dolphin/browser/util/df;->a(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/dolphin/browser/launcher/ShortcutIcon;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d:Landroid/graphics/drawable/Drawable;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 190
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 191
    iget-object v3, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->a:Landroid/widget/ImageView;

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int v1, v4, v1

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    :cond_0
    return-void
.end method

.method public updateTheme()V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->c:Lcom/dolphin/browser/launcher/cl;

    invoke-virtual {v0}, Lcom/dolphin/browser/launcher/cl;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/dolphin/browser/ui/launcher/x;->a(Landroid/widget/TextView;)V

    .line 113
    :goto_0
    invoke-direct {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->e()V

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d:Landroid/graphics/drawable/Drawable;

    .line 117
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-virtual {p0}, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->invalidate()V

    .line 120
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/ui/launcher/MyShortcutIcon;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a0164

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
