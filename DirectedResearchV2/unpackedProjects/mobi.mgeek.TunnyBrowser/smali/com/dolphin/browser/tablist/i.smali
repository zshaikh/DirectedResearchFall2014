.class public Lcom/dolphin/browser/tablist/i;
.super Ljava/lang/Object;
.source "CloudTabListAdapter.java"

# interfaces
.implements Landroid/widget/ExpandableListAdapter;


# static fields
.field private static final d:Ljava/text/SimpleDateFormat;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dolphin/browser/tablist/i;->d:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    .line 42
    iput-object v1, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    .line 43
    iput-object v1, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    .line 44
    iput-object v1, p0, Lcom/dolphin/browser/tablist/i;->c:Ljava/util/List;

    .line 45
    iput-object v1, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    .line 50
    iput-object p1, p0, Lcom/dolphin/browser/tablist/i;->f:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    .line 52
    iput-object p2, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    .line 53
    iput-object p3, p0, Lcom/dolphin/browser/tablist/i;->c:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/i;->c:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/dolphin/browser/tablist/i;->a(Ljava/util/List;Ljava/util/List;)V

    .line 58
    return-void
.end method

.method private a(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 254
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 269
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202d3

    .line 272
    :goto_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 273
    return-object v0

    .line 259
    :pswitch_0
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202cc

    .line 260
    goto :goto_0

    .line 263
    :pswitch_1
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202ca

    .line 264
    goto :goto_0

    .line 266
    :pswitch_2
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202cb

    .line 267
    goto :goto_0

    .line 256
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

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/push/data/DeviceInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/tablist/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dolphin/browser/tablist/h;

    .line 73
    iget-object v5, v0, Lcom/dolphin/browser/push/data/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/dolphin/browser/tablist/h;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    :cond_3
    return-void
.end method

.method private b(II)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lt p1, v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    iget v3, p0, Lcom/dolphin/browser/tablist/i;->e:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p2, :cond_0

    move v0, v1

    .line 247
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p2, :cond_2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public a(F)I
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 174
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 353
    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lt p1, v0, :cond_0

    .line 354
    const-string v0, "DBS Cloud Tabs"

    const-string v1, "click"

    const-string v2, "tab"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 357
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    .line 101
    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 180
    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lt p1, v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    sub-int v0, p1, v0

    iget-object v2, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    iget v2, p0, Lcom/dolphin/browser/tablist/i;->e:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 191
    :goto_0
    return-object v0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dolphin/browser/tablist/i;->e:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_4

    :cond_3
    move-object v0, v1

    .line 189
    goto :goto_0

    .line 191
    :cond_4
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildId(II)J
    .locals 2

    .prologue
    .line 198
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 205
    if-nez p4, :cond_0

    .line 206
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->f:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030102

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 209
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/i;->b(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const v0, 0x410e3d71

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/i;->a(F)I

    move-result v0

    invoke-virtual {p4, v3, v3, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 215
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/tablist/i;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/h;

    .line 216
    if-nez v0, :cond_2

    .line 239
    :goto_1
    return-object p4

    .line 212
    :cond_1
    invoke-virtual {p4, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 219
    :cond_2
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08022d

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 220
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v3, 0x7f020277

    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v2

    .line 224
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/h;->a()Ljava/lang/String;

    move-result-object v3

    .line 225
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080035

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 226
    sget-object v4, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v4, 0x7f0a00ee

    invoke-virtual {v2, v4}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08002c

    invoke-virtual {p4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 231
    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/h;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_3

    .line 233
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    invoke-virtual {v2, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(Landroid/graphics/drawable/Drawable;)V

    .line 235
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 237
    :cond_3
    invoke-static {}, Lcom/dolphin/browser/util/a/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public getChildrenCount(I)I
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lt p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/dolphin/browser/tablist/i;->e:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    if-nez v0, :cond_1

    .line 283
    const/4 v0, 0x0

    goto :goto_0

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCombinedChildId(JJ)J
    .locals 0

    .prologue
    .line 292
    return-wide p3
.end method

.method public getCombinedGroupId(J)J
    .locals 0

    .prologue
    .line 106
    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->b:Ljava/util/List;

    iget v1, p0, Lcom/dolphin/browser/tablist/i;->e:I

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/tablist/i;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    .prologue
    .line 129
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 136
    if-nez p3, :cond_0

    .line 137
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->f:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v1, 0x7f030103

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 140
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/extensions/ThemeManager;->a()Lcom/dolphin/browser/extensions/ThemeManager;

    move-result-object v4

    .line 141
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    sget-object v1, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v1, 0x7f0a00ee

    invoke-virtual {v4, v1}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f08002c

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 145
    sget-object v2, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v2, 0x7f08038a

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 146
    sget-object v3, Lcom/dolphin/browser/n/a;->d:Lmobi/mgeek/TunnyBrowser/R$color;

    const v3, 0x7f0a006b

    invoke-virtual {v4, v3}, Lcom/dolphin/browser/extensions/ThemeManager;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    iget v3, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lt p1, v3, :cond_2

    .line 148
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/tablist/i;->getGroup(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dolphin/browser/push/data/DeviceInfo;

    .line 149
    if-nez v3, :cond_1

    .line 166
    :goto_0
    return-object p3

    .line 152
    :cond_1
    iget-object v5, v3, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 153
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget v0, v3, Lcom/dolphin/browser/push/data/DeviceInfo;->b:I

    .line 155
    invoke-direct {p0, v0}, Lcom/dolphin/browser/tablist/i;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-wide v0, v3, Lcom/dolphin/browser/push/data/DeviceInfo;->f:J

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    sget-object v3, Lcom/dolphin/browser/tablist/i;->d:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :goto_1
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f020274

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 160
    :cond_2
    sget-object v3, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v3, 0x7f0e0614

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 161
    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    sget-object v0, Lcom/dolphin/browser/n/a;->f:Lmobi/mgeek/TunnyBrowser/R$drawable;

    const v0, 0x7f0202d3

    invoke-virtual {v4, v0}, Lcom/dolphin/browser/extensions/ThemeManager;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dolphin/browser/tablist/i;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/dolphin/browser/tablist/i;->e:I

    add-int/2addr v0, v1

    if-gtz v0, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGroupCollapsed(I)V
    .locals 0

    .prologue
    .line 330
    return-void
.end method

.method public onGroupExpanded(I)V
    .locals 4

    .prologue
    .line 335
    iget v0, p0, Lcom/dolphin/browser/tablist/i;->e:I

    if-lt p1, v0, :cond_0

    .line 336
    const-string v0, "DBS Cloud Tabs"

    const-string v1, "click"

    const-string v2, "device"

    sget-object v3, Lcom/dolphin/browser/util/Tracker$Priority;->Critical:Lcom/dolphin/browser/util/Tracker$Priority;

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dolphin/browser/util/Tracker$Priority;)V

    .line 339
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method
