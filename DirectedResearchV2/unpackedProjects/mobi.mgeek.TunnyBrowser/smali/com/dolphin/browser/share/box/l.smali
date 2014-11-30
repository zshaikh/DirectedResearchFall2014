.class Lcom/dolphin/browser/share/box/l;
.super Ljava/lang/Object;
.source "UploadPathDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/box/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/box/j;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/share/box/l;->a:Lcom/dolphin/browser/share/box/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/share/box/l;->a:Lcom/dolphin/browser/share/box/j;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/j;->c(Lcom/dolphin/browser/share/box/j;)Lcom/dolphin/browser/share/box/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/share/box/l;->a:Lcom/dolphin/browser/share/box/j;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/j;->c(Lcom/dolphin/browser/share/box/j;)Lcom/dolphin/browser/share/box/n;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/share/box/l;->a:Lcom/dolphin/browser/share/box/j;

    invoke-static {v1}, Lcom/dolphin/browser/share/box/j;->a(Lcom/dolphin/browser/share/box/j;)Lcom/b/a/a/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/dolphin/browser/share/box/n;->a(Lcom/b/a/a/b;)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/share/box/l;->a:Lcom/dolphin/browser/share/box/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/box/j;->dismiss()V

    .line 88
    return-void
.end method
