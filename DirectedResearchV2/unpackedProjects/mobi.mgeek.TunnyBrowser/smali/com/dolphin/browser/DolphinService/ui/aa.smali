.class Lcom/dolphin/browser/DolphinService/ui/aa;
.super Landroid/widget/ArrayAdapter;
.source "DeviceManageActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/dolphin/browser/push/data/DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->b:Ljava/util/List;

    .line 203
    return-void
.end method

.method private a(Landroid/view/View;Lcom/dolphin/browser/push/data/DeviceInfo;Z)V
    .locals 6

    .prologue
    const v5, 0x7f0e016b

    const v1, 0x7f020212

    .line 281
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 285
    iget v2, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    packed-switch v2, :pswitch_data_0

    .line 298
    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 302
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 303
    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_0

    .line 305
    invoke-static {v1}, Lcom/dolphin/browser/theme/data/p;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    :cond_0
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 309
    iget-object v1, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a006f

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 312
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a006b

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-boolean v1, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v1, :cond_4

    .line 314
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e016c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    :goto_1
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 325
    if-nez p3, :cond_6

    .line 326
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :goto_2
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08013d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 331
    invoke-static {}, Lcom/dolphin/browser/util/bb;->a()Lcom/dolphin/browser/util/bb;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200a7

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/util/bb;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 333
    new-instance v0, Lcom/dolphin/browser/DolphinService/ui/ab;

    invoke-direct {v0, p0, p2}, Lcom/dolphin/browser/DolphinService/ui/ab;-><init>(Lcom/dolphin/browser/DolphinService/ui/aa;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-void

    .line 288
    :pswitch_0
    iget-boolean v2, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f020211

    goto/16 :goto_0

    .line 292
    :pswitch_1
    iget-boolean v1, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202c1

    goto/16 :goto_0

    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f0202c0

    goto/16 :goto_0

    .line 295
    :pswitch_2
    iget-boolean v1, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02020e

    goto/16 :goto_0

    :cond_3
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v1, 0x7f02020d

    goto/16 :goto_0

    .line 316
    :cond_4
    iget-wide v1, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 317
    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 319
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->a:Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;

    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    invoke-virtual {v2, v5}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/dolphin/browser/DolphinService/ui/DeviceManageActivity;->a()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 328
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(I)Lcom/dolphin/browser/push/data/DeviceInfo;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/aa;->b(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    return-void
.end method

.method public b(Lcom/dolphin/browser/push/data/DeviceInfo;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 229
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dolphin/browser/DolphinService/ui/aa;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/aa;->a(I)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 240
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 252
    .line 253
    if-nez p2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/aa;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v3, 0x7f03003a

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/dolphin/browser/DolphinService/ui/aa;->getCount()I

    move-result v2

    .line 259
    if-ne v2, v1, :cond_1

    .line 260
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020275

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    :goto_0
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/aa;->a(I)Lcom/dolphin/browser/push/data/DeviceInfo;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Lcom/dolphin/browser/DolphinService/ui/aa;->a(Landroid/view/View;Lcom/dolphin/browser/push/data/DeviceInfo;Z)V

    .line 276
    return-object p2

    .line 263
    :cond_1
    if-nez p1, :cond_2

    .line 264
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020277

    invoke-virtual {v1, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 267
    :cond_2
    add-int/lit8 v0, v2, -0x1

    if-ne p1, v0, :cond_3

    .line 268
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020274

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_0

    .line 271
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v0

    sget-object v2, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v2, 0x7f020278

    invoke-virtual {v0, v2}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move v0, v1

    goto :goto_0
.end method

.method public synthetic remove(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 195
    check-cast p1, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/DolphinService/ui/aa;->a(Lcom/dolphin/browser/push/data/DeviceInfo;)V

    return-void
.end method
