.class Lcom/dolphin/browser/feedback/k;
.super Ljava/lang/Object;
.source "SendCriticalBugsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/dolphin/browser/feedback/k;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x7f08020b

    .line 110
    const-string v0, "Other Critical Bugs"

    const-string v1, "click"

    const-string v2, "send"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/dolphin/browser/feedback/k;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    iget-object v1, p0, Lcom/dolphin/browser/feedback/k;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    iget-object v2, p0, Lcom/dolphin/browser/feedback/k;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-static {v2}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isSelected()Z

    move-result v2

    iget-object v3, p0, Lcom/dolphin/browser/feedback/k;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-static {v3}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->b(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    iget-object v4, p0, Lcom/dolphin/browser/feedback/k;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-static {v4}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->c(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;

    move-result-object v4

    sget-object v5, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isSelected()Z

    move-result v4

    iget-object v5, p0, Lcom/dolphin/browser/feedback/k;->a:Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;

    invoke-static {v5}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->d(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;)Landroid/view/View;

    move-result-object v5

    sget-object v6, Lcom/dolphin/browser/n/a;->g:Lmobi/mgeek/TunnyBrowser/R$id;

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;->a(Lcom/dolphin/browser/feedback/SendCriticalBugsActivity;Landroid/content/Context;ZZZZ)V

    .line 121
    return-void
.end method
