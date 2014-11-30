.class public Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;
.super Landroid/widget/RelativeLayout;
.source "SuggestionRecordItem.java"


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Landroid/widget/ImageView;

.field protected g:Landroid/widget/ImageView;

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/ViewGroup;

.field protected j:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f0300ff

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080379

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->a:Landroid/view/View;

    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037b

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->f:Landroid/widget/ImageView;

    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037a

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->g:Landroid/widget/ImageView;

    .line 49
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080382

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->b:Landroid/widget/TextView;

    .line 50
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080383

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->c:Landroid/widget/TextView;

    .line 52
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080385

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->d:Landroid/widget/TextView;

    .line 53
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080386

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->e:Landroid/widget/TextView;

    .line 55
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080381

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->i:Landroid/view/ViewGroup;

    .line 56
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f080384

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->j:Landroid/view/ViewGroup;

    .line 58
    sget-object v0, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v0, 0x7f08037d

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/search/suggestions/SuggestionRecordItem;->h:Landroid/view/View;

    .line 59
    return-void
.end method
