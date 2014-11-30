.class Lcom/dolphin/browser/share/tabpush/d;
.super Landroid/widget/BaseAdapter;
.source "TabPushShareContentActivity.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

.field private c:Landroid/app/Activity;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dolphin/browser/share/tabpush/d;->b:Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    .line 188
    iput-object p2, p0, Lcom/dolphin/browser/share/tabpush/d;->c:Landroid/app/Activity;

    .line 189
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->d:Landroid/view/LayoutInflater;

    .line 190
    iput-object p3, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/share/tabpush/d;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lcom/dolphin/browser/push/data/DeviceInfo;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 336
    const-string v0, ""

    .line 337
    iget-boolean v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e061a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    :cond_0
    :goto_0
    return-object v0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e0619

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    iget-wide v1, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->g:J

    .line 346
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 347
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {}, Lcom/dolphin/browser/share/tabpush/TabPushShareContentActivity;->d()Ljava/text/SimpleDateFormat;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lcom/dolphin/browser/push/data/DeviceInfo;)I
    .locals 2

    .prologue
    const v0, 0x7f020211

    .line 355
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 357
    iget v1, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    packed-switch v1, :pswitch_data_0

    .line 372
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    .line 375
    :goto_0
    return v0

    .line 360
    :pswitch_0
    iget-boolean v1, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v1, :cond_0

    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020212

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    goto :goto_0

    .line 365
    :pswitch_1
    iget-boolean v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202c1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202c0

    goto :goto_0

    .line 369
    :pswitch_2
    iget-boolean v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02020e

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f02020d

    goto :goto_0

    .line 357
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
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    iput-object p1, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    .line 196
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 212
    :cond_0
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/share/tabpush/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 220
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 225
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/share/tabpush/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 226
    if-nez v0, :cond_0

    .line 331
    :goto_0
    return-object p2

    .line 230
    :cond_0
    if-nez p2, :cond_1

    .line 231
    new-instance v2, Lcom/dolphin/browser/share/tabpush/j;

    invoke-direct {v2}, Lcom/dolphin/browser/share/tabpush/j;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/dolphin/browser/share/tabpush/d;->d:Landroid/view/LayoutInflater;

    sget-object v3, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v3, 0x7f030107

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 233
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080397

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/dolphin/browser/share/tabpush/j;->c:Landroid/widget/ImageView;

    .line 234
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080398

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/dolphin/browser/share/tabpush/j;->a:Landroid/widget/TextView;

    .line 235
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080399

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/dolphin/browser/share/tabpush/j;->b:Landroid/widget/TextView;

    .line 236
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 241
    :goto_1
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f0200ab

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a01a0

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 246
    iget-object v3, v1, Lcom/dolphin/browser/share/tabpush/j;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 247
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/tabpush/d;->b(Lcom/dolphin/browser/push/data/DeviceInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 248
    invoke-static {v2}, Lcom/dolphin/browser/theme/data/p;->b(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v3, v1, Lcom/dolphin/browser/share/tabpush/j;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v2, v1, Lcom/dolphin/browser/share/tabpush/j;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, v1, Lcom/dolphin/browser/share/tabpush/j;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/dolphin/browser/share/tabpush/d;->a(Lcom/dolphin/browser/push/data/DeviceInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v1, Lcom/dolphin/browser/share/tabpush/e;

    invoke-direct {v1, p0, v0}, Lcom/dolphin/browser/share/tabpush/e;-><init>(Lcom/dolphin/browser/share/tabpush/d;Lcom/dolphin/browser/push/data/DeviceInfo;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 238
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/share/tabpush/j;

    goto :goto_1
.end method
