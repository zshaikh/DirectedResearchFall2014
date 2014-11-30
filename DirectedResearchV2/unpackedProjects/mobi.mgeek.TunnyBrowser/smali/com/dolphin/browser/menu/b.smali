.class Lcom/dolphin/browser/menu/b;
.super Ljava/lang/Object;
.source "AbsMenuBarPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/a;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/dolphin/browser/menu/b;->a:Lcom/dolphin/browser/menu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dolphin/browser/menu/b;->a:Lcom/dolphin/browser/menu/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/dolphin/browser/menu/a;->b:Z

    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/menu/b;->a:Lcom/dolphin/browser/menu/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/a;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/dolphin/browser/menu/b;->a:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/a;->k()Lcom/dolphin/browser/menu/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/menu/b;->a:Lcom/dolphin/browser/menu/a;

    invoke-static {v1}, Lcom/dolphin/browser/menu/a;->a(Lcom/dolphin/browser/menu/a;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/menu/b;->a:Lcom/dolphin/browser/menu/a;

    invoke-static {v2}, Lcom/dolphin/browser/menu/a;->b(Lcom/dolphin/browser/menu/a;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/dolphin/browser/menu/g;->a(Landroid/view/View;Landroid/view/View;)V

    .line 175
    return-void
.end method
