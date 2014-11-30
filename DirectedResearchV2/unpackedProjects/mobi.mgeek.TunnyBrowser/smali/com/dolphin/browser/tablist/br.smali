.class Lcom/dolphin/browser/tablist/br;
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
    .line 196
    iput-object p1, p0, Lcom/dolphin/browser/tablist/br;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dolphin/browser/tablist/br;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/TabListBottomBar;)Lcom/dolphin/browser/tablist/bz;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/dolphin/browser/tablist/br;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->c(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 203
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    .line 213
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/dolphin/browser/tablist/br;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/bz;)V

    .line 214
    :goto_1
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/dolphin/browser/tablist/br;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->d(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 205
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->b:Lcom/dolphin/browser/tablist/bz;

    goto :goto_0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/dolphin/browser/tablist/br;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->e(Lcom/dolphin/browser/tablist/TabListBottomBar;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 207
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->a:Lcom/dolphin/browser/tablist/bz;

    iget-object v1, p0, Lcom/dolphin/browser/tablist/br;->a:Lcom/dolphin/browser/tablist/TabListBottomBar;

    invoke-static {v1}, Lcom/dolphin/browser/tablist/TabListBottomBar;->a(Lcom/dolphin/browser/tablist/TabListBottomBar;)Lcom/dolphin/browser/tablist/bz;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 208
    new-instance v0, Lcom/dolphin/browser/c/aa;

    invoke-direct {v0}, Lcom/dolphin/browser/c/aa;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/aa;->a()Z

    goto :goto_1

    .line 211
    :cond_3
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->a:Lcom/dolphin/browser/tablist/bz;

    goto :goto_0
.end method
