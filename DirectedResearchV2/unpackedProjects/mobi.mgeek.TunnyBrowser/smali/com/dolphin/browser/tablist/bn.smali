.class public abstract Lcom/dolphin/browser/tablist/bn;
.super Landroid/widget/LinearLayout;
.source "TabListAdapter.java"

# interfaces
.implements Lcom/dolphin/browser/ui/aa;


# instance fields
.field private a:Landroid/widget/ImageView;

.field protected b:Landroid/view/View;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Landroid/widget/ImageView;

.field final synthetic f:Lcom/dolphin/browser/tablist/bl;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/bl;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bn;->f:Lcom/dolphin/browser/tablist/bl;

    .line 175
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/tablist/bn;->a(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/tablist/bn;->b(Landroid/content/Context;)V

    .line 178
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/bn;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bp;

    .line 214
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->f:Lcom/dolphin/browser/tablist/bl;

    iget-object v1, v1, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v1}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v1

    .line 215
    iget-object v2, p0, Lcom/dolphin/browser/tablist/bn;->f:Lcom/dolphin/browser/tablist/bl;

    iget-object v2, v2, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/dolphin/browser/core/TabManager;->getTabIndex(Lcom/dolphin/browser/core/ITab;)I

    move-result v0

    .line 217
    if-ne v1, v0, :cond_0

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->setSelected(Z)V

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->setSelected(Z)V

    goto :goto_0
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method a(Lcom/dolphin/browser/tablist/bk;I)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bn;->f:Lcom/dolphin/browser/tablist/bl;

    iget-object v0, v0, Lcom/dolphin/browser/tablist/bl;->b:Lcom/dolphin/browser/core/TabManager;

    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->getCurrentIndex()I

    move-result v0

    .line 264
    if-ne p2, v0, :cond_0

    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->setSelected(Z)V

    .line 269
    :goto_0
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/bn;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bp;

    .line 270
    iput-object p1, v0, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    .line 271
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->b(Lcom/dolphin/browser/tablist/bp;)V

    .line 272
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->a(Lcom/dolphin/browser/tablist/bp;)V

    .line 273
    return-void

    .line 267
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->setSelected(Z)V

    goto :goto_0
.end method

.method a(Lcom/dolphin/browser/tablist/bp;)V
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 239
    iget-object v1, p1, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/bk;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bn;->e:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/dolphin/browser/tablist/bn;->f:Lcom/dolphin/browser/tablist/bl;

    iget-object v3, v3, Lcom/dolphin/browser/tablist/bl;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a012c

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 245
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->e:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202c9

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x7f0202c8

    .line 276
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->a:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/f/a/b;->a()Lcom/dolphin/browser/f/a/b;

    move-result-object v1

    .line 285
    invoke-virtual {v1, p1}, Lcom/dolphin/browser/f/a/b;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 286
    if-nez v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->a:Landroid/widget/ImageView;

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 290
    :cond_1
    iget-object v2, p0, Lcom/dolphin/browser/tablist/bn;->f:Lcom/dolphin/browser/tablist/bl;

    iget-object v3, p0, Lcom/dolphin/browser/tablist/bn;->a:Landroid/widget/ImageView;

    invoke-static {v2, v3, v0, v1}, Lcom/dolphin/browser/tablist/bl;->a(Lcom/dolphin/browser/tablist/bl;Landroid/widget/ImageView;Lcom/dolphin/browser/extensions/ThemeManager;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/bn;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bp;

    .line 227
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->a(Lcom/dolphin/browser/tablist/bp;)V

    .line 228
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->setBackgroundColor(I)V

    .line 185
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080396

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bn;->b:Landroid/view/View;

    .line 186
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bn;->c:Landroid/widget/TextView;

    .line 187
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08038d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bn;->d:Landroid/view/ViewGroup;

    .line 188
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08020b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bn;->e:Landroid/widget/ImageView;

    .line 189
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/bn;->a:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/bn;->updateTheme()V

    .line 191
    return-void
.end method

.method b(Lcom/dolphin/browser/tablist/bp;)V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p1, Lcom/dolphin/browser/tablist/bp;->a:Lcom/dolphin/browser/tablist/bk;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/bk;->a()Lcom/dolphin/browser/core/ITab;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->c:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/dolphin/browser/core/ITab;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bn;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/bn;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bp;

    .line 233
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/bn;->b(Lcom/dolphin/browser/tablist/bp;)V

    .line 234
    return-void
.end method

.method public updateTheme()V
    .locals 6

    .prologue
    const v5, 0x7f0a0062

    .line 196
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->b:Landroid/view/View;

    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a012d

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/dolphin/browser/util/bb;->a(IIII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/bn;->c:Landroid/widget/TextView;

    sget-object v2, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v2, 0x7f0a01b0

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bn;->d:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/dolphin/browser/tablist/bn;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f0202cf

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0202d0

    invoke-static {v1, v2, v3}, Lcom/dolphin/browser/util/cu;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    return-void
.end method
