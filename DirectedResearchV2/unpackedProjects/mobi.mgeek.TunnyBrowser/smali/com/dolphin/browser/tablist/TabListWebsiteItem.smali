.class public Lcom/dolphin/browser/tablist/TabListWebsiteItem;
.super Landroid/widget/RelativeLayout;
.source "TabListWebsiteItem.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/TextView;

.field protected e:J

.field protected f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->e:J

    .line 29
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->e:J

    .line 23
    invoke-direct {p0, p1}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->a(Landroid/content/Context;)V

    .line 24
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300fd

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080379

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->a:Landroid/view/View;

    .line 36
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->b:Landroid/widget/ImageView;

    .line 37
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->c:Landroid/widget/ImageView;

    .line 38
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->d:Landroid/widget/TextView;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/dolphin/browser/tablist/TabListWebsiteItem;->f:Ljava/lang/String;

    .line 52
    return-void
.end method
