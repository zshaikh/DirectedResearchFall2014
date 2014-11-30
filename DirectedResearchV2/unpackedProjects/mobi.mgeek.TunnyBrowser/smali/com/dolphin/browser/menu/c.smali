.class Lcom/dolphin/browser/menu/c;
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
    .line 237
    iput-object p1, p0, Lcom/dolphin/browser/menu/c;->a:Lcom/dolphin/browser/menu/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/dolphin/browser/menu/c;->a:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/dolphin/browser/menu/c;->a:Lcom/dolphin/browser/menu/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 244
    iget-object v1, p0, Lcom/dolphin/browser/menu/c;->a:Lcom/dolphin/browser/menu/a;

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/df;->a(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/menu/c;->a:Lcom/dolphin/browser/menu/a;

    iput-boolean v2, v0, Lcom/dolphin/browser/menu/a;->c:Z

    .line 247
    iget-object v0, p0, Lcom/dolphin/browser/menu/c;->a:Lcom/dolphin/browser/menu/a;

    iput-boolean v2, v0, Lcom/dolphin/browser/menu/a;->b:Z

    .line 248
    return-void
.end method
