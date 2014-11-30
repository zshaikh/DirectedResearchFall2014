.class final Lcom/dolphin/browser/sidebar/y;
.super Lcom/dolphin/browser/menu/ac;
.source "RightBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/util/Observer;


# instance fields
.field final synthetic e:Lcom/dolphin/browser/sidebar/x;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/sidebar/x;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/y;->e:Lcom/dolphin/browser/sidebar/x;

    .line 48
    invoke-direct {p0, p2}, Lcom/dolphin/browser/menu/ac;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/y;->c:Lcom/dolphin/browser/menu/ae;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/y;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->f()I

    move-result v1

    iget-object v0, p0, Lcom/dolphin/browser/sidebar/y;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/dolphin/browser/sidebar/x;->a(IZ)V

    .line 56
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/y;->c:Lcom/dolphin/browser/menu/ae;

    invoke-virtual {v0}, Lcom/dolphin/browser/menu/ae;->a()Lcom/dolphin/browser/c/a;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    .line 61
    :cond_0
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
