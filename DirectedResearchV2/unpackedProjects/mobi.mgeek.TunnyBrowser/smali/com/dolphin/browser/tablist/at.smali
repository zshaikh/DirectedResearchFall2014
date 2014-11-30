.class Lcom/dolphin/browser/tablist/at;
.super Lcom/dolphin/browser/tablist/bn;
.source "HorizontalTabListAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/as;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/as;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/dolphin/browser/tablist/at;->a:Lcom/dolphin/browser/tablist/as;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/bn;-><init>(Lcom/dolphin/browser/tablist/bl;Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030104

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/tablist/at;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    return-void
.end method
