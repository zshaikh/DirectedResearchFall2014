.class Lcom/dolphin/browser/share/a/n;
.super Ljava/lang/Object;
.source "EvernoteShareViewContent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/share/a/g;

.field final synthetic b:Lcom/dolphin/browser/share/a/k;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/share/a/k;Lcom/dolphin/browser/share/a/g;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/dolphin/browser/share/a/n;->b:Lcom/dolphin/browser/share/a/k;

    iput-object p2, p0, Lcom/dolphin/browser/share/a/n;->a:Lcom/dolphin/browser/share/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dolphin/browser/share/a/n;->a:Lcom/dolphin/browser/share/a/g;

    invoke-virtual {v0, p2}, Lcom/dolphin/browser/share/a/g;->a(I)Lcom/c/b/c/l;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/dolphin/browser/share/a/n;->b:Lcom/dolphin/browser/share/a/k;

    invoke-virtual {v1, v0}, Lcom/dolphin/browser/share/a/k;->a(Lcom/c/b/c/l;)V

    .line 315
    iget-object v0, p0, Lcom/dolphin/browser/share/a/n;->b:Lcom/dolphin/browser/share/a/k;

    invoke-virtual {v0}, Lcom/dolphin/browser/share/a/k;->e()V

    .line 316
    return-void
.end method
