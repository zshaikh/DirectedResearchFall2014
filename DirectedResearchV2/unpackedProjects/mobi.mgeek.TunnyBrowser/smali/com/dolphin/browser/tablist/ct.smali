.class Lcom/dolphin/browser/tablist/ct;
.super Lcom/dolphin/browser/tablist/bn;
.source "VerticalTablistAdapter.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/cs;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/tablist/cs;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ct;->a:Lcom/dolphin/browser/tablist/cs;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/dolphin/browser/tablist/bn;-><init>(Lcom/dolphin/browser/tablist/bl;Landroid/content/Context;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/dolphin/browser/n/a;->h:Lmobi/mgeek/TunnyBrowser/R$layout;

    const v0, 0x7f030106

    invoke-static {p1, v0, p0}, Lcom/dolphin/browser/tablist/ct;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    return-void
.end method
