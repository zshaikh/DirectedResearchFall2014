.class Lcom/dolphin/browser/tablist/aj;
.super Ljava/lang/Object;
.source "CurrentTablistView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/dolphin/browser/tablist/aj;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 567
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 568
    sget-object v1, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    const v1, 0x7f080395

    if-ne v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aj;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->k(Lcom/dolphin/browser/tablist/ac;)V

    .line 570
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aj;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/ac;->h()V

    .line 571
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aj;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->h(Lcom/dolphin/browser/tablist/ac;)V

    .line 572
    const-string v0, "tablist"

    const-string v1, "clickbtn"

    const-string v2, "closeall"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    return-void
.end method
