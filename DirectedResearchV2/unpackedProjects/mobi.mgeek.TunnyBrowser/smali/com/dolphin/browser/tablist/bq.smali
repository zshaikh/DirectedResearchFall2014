.class Lcom/dolphin/browser/tablist/bq;
.super Ljava/lang/Object;
.source "TabListBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/TabListBottomBar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/TabListBottomBar;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/dolphin/browser/tablist/bq;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bq;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/bq;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/TabListBottomBar;)Lcom/dolphin/browser/tablist/bz;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/TabListBottomBar;Lcom/dolphin/browser/tablist/bz;)V

    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/tablist/bq;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->b(Lcom/dolphin/browser/tablist/TabListBottomBar;)V

    .line 193
    return-void
.end method
