.class Lcom/dolphin/browser/h/g;
.super Ljava/lang/Object;
.source "ShowCloseTabPopListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/h/f;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/h/f;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/dolphin/browser/h/g;->a:Lcom/dolphin/browser/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/dolphin/browser/core/TabManager;->getInstance()Lcom/dolphin/browser/core/TabManager;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/dolphin/browser/core/TabManager;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/h/g;->a:Lcom/dolphin/browser/h/f;

    iget-object v0, v0, Lcom/dolphin/browser/h/f;->a:Landroid/content/Context;

    sget-object v1, Lcom/dolphin/browser/n/a;->l:Lmobi/mgeek/TunnyBrowser/R$string;

    const v1, 0x7f0e03c7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/h/g;->a:Lcom/dolphin/browser/h/f;

    iget-object v0, v0, Lcom/dolphin/browser/h/f;->q:Lcom/dolphin/browser/c/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    goto :goto_0
.end method
