.class Lcom/dolphin/browser/gesture/ui/a;
.super Landroid/widget/BaseExpandableListAdapter;
.source "ActionChooser.java"


# instance fields
.field protected a:Landroid/content/Context;

.field final synthetic b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/gesture/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/gesture/ui/ActionChooser;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 214
    invoke-static {p1}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->a(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->c:Ljava/util/List;

    .line 215
    iput-object p2, p0, Lcom/dolphin/browser/gesture/ui/a;->a:Landroid/content/Context;

    .line 216
    return-void
.end method


# virtual methods
.method public a(II)Lcom/dolphin/browser/gesture/a/a;
    .locals 1

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/a;->a(I)Lcom/dolphin/browser/gesture/a/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/gesture/a/d;->a(I)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/dolphin/browser/gesture/a/d;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/d;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->a(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->c:Ljava/util/List;

    .line 333
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->e(Lcom/dolphin/browser/gesture/ui/ActionChooser;)V

    .line 334
    invoke-virtual {p0}, Lcom/dolphin/browser/gesture/ui/a;->notifyDataSetChanged()V

    .line 335
    return-void
.end method

.method protected a(IILandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 11

    .prologue
    const v10, 0x7f02027b

    .line 294
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004f

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    .line 295
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08004d

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    .line 296
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08002c

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 297
    if-eqz p1, :cond_0

    .line 298
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/gesture/ui/a;->a(II)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    .line 304
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v1}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->c(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Lcom/dolphin/browser/gesture/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/gesture/i;->a(Ljava/lang/String;)Lcom/dolphin/browser/gesture/Gesture;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_1

    .line 308
    sget v1, Lcom/dolphin/browser/gesture/ui/ActionChooser;->f:I

    sget v2, Lcom/dolphin/browser/gesture/ui/ActionChooser;->f:I

    sget v3, Lcom/dolphin/browser/gesture/ui/ActionChooser;->e:I

    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a0062

    invoke-static {v4}, Lcom/dolphin/browser/util/cu;->b(I)I

    move-result v4

    const/high16 v5, 0x40400000

    const/16 v6, 0xf

    invoke-virtual/range {v0 .. v6}, Lcom/dolphin/browser/gesture/Gesture;->a(IIIIFI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 315
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->b(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->b(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a01a0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 319
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->b(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    invoke-virtual {v0, v10}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected a(IZLandroid/view/View;Landroid/view/ViewGroup;)V
    .locals 2

    .prologue
    .line 265
    check-cast p3, Landroid/widget/TextView;

    .line 266
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/a;->a(I)Lcom/dolphin/browser/gesture/a/d;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->b(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    return-void
.end method

.method public synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/gesture/ui/a;->a(II)Lcom/dolphin/browser/gesture/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 245
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 274
    if-nez p4, :cond_0

    .line 275
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 278
    :cond_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/a;->getChildrenCount(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 279
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020275

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :goto_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/dolphin/browser/gesture/ui/a;->a(IILandroid/view/View;Landroid/view/ViewGroup;)V

    .line 290
    return-object p4

    .line 280
    :cond_1
    if-nez p2, :cond_2

    .line 281
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020277

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/a;->getChildrenCount(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_3

    .line 283
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020274

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 285
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020278

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getChildrenCount(I)I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/gesture/a/d;

    invoke-virtual {v0}, Lcom/dolphin/browser/gesture/a/d;->e()I

    move-result v0

    return v0
.end method

.method public synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/gesture/ui/a;->a(I)Lcom/dolphin/browser/gesture/a/d;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 240
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 256
    if-nez p3, :cond_0

    .line 257
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 259
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/dolphin/browser/gesture/ui/a;->a(IZLandroid/view/View;Landroid/view/ViewGroup;)V

    .line 260
    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public onGroupCollapsed(I)V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/dolphin/browser/gesture/ui/a;->b:Lcom/dolphin/browser/gesture/ui/ActionChooser;

    invoke-static {v0}, Lcom/dolphin/browser/gesture/ui/ActionChooser;->d(Lcom/dolphin/browser/gesture/ui/ActionChooser;)Landroid/widget/ExpandableListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 329
    return-void
.end method
