.class public Lcom/dolphin/browser/search/suggestions/SuggestionItemView;
.super Landroid/widget/RelativeLayout;
.source "SuggestionItemView.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/ImageView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/view/View;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300fe

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080379

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->a:Landroid/view/View;

    .line 39
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037f

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->b:Landroid/widget/TextView;

    .line 40
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080380

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->c:Landroid/widget/TextView;

    .line 41
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->d:Landroid/widget/ImageView;

    .line 42
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->e:Landroid/widget/ImageView;

    .line 43
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->f:Landroid/view/View;

    .line 44
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/SuggestionItemView;->g:Ljava/lang/String;

    .line 73
    return-void
.end method
