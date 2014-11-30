.class Lcom/dolphin/browser/t/am;
.super Ljava/lang/Object;
.source "TabUIManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/t/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/t/l;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/dolphin/browser/t/am;->a:Lcom/dolphin/browser/t/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/dolphin/browser/t/am;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v0}, Lcom/dolphin/browser/t/l;->j(Lcom/dolphin/browser/t/l;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/t/ap;

    .line 654
    iget-object v1, p0, Lcom/dolphin/browser/t/am;->a:Lcom/dolphin/browser/t/l;

    invoke-static {v1, v0}, Lcom/dolphin/browser/t/l;->a(Lcom/dolphin/browser/t/l;Lcom/dolphin/browser/t/ap;)V

    .line 655
    return-void
.end method
