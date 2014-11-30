.class Lcom/dolphin/browser/search/ui/m;
.super Ljava/lang/Object;
.source "SearchDialog.java"

# interfaces
.implements Lcom/dolphin/browser/search/ui/y;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/ui/c;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/ui/c;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/dolphin/browser/search/ui/m;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/m;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->C(Lcom/dolphin/browser/search/ui/c;)Lcom/dolphin/browser/search/suggestions/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/z;->a(Z)V

    .line 1145
    iget-object v0, p0, Lcom/dolphin/browser/search/ui/m;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v0}, Lcom/dolphin/browser/search/ui/c;->D(Lcom/dolphin/browser/search/ui/c;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/search/ui/m;->a:Lcom/dolphin/browser/search/ui/c;

    invoke-static {v1}, Lcom/dolphin/browser/search/ui/c;->D(Lcom/dolphin/browser/search/ui/c;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    .line 1146
    if-eqz v0, :cond_0

    .line 1147
    invoke-virtual {v0, p1}, Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;->a(Z)V

    .line 1149
    :cond_0
    return-void
.end method
