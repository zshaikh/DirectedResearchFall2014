.class Lcom/dolphin/browser/share/box/k;
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
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/share/box/k;->a:Lcom/dolphin/browser/share/box/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/share/box/k;->a:Lcom/dolphin/browser/share/box/j;

    iget-object v1, p0, Lcom/dolphin/browser/share/box/k;->a:Lcom/dolphin/browser/share/box/j;

    invoke-static {v1}, Lcom/dolphin/browser/share/box/j;->a(Lcom/dolphin/browser/share/box/j;)Lcom/b/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/a/b;->c()Lcom/b/a/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/share/box/j;->a(Lcom/dolphin/browser/share/box/j;Lcom/b/a/a/b;)Lcom/b/a/a/b;

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/share/box/k;->a:Lcom/dolphin/browser/share/box/j;

    invoke-static {v0}, Lcom/dolphin/browser/share/box/j;->b(Lcom/dolphin/browser/share/box/j;)V

    .line 77
    return-void
.end method
