.class Lcom/dolphin/browser/tablist/x;
.super Ljava/lang/Object;
.source "CloudTabReceivedManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/w;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/dolphin/browser/tablist/x;->a:Lcom/dolphin/browser/tablist/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/tablist/x;->a:Lcom/dolphin/browser/tablist/w;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/w;->a(Lcom/dolphin/browser/tablist/w;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/dolphin/browser/tablist/x;->a:Lcom/dolphin/browser/tablist/w;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/w;->a(Lcom/dolphin/browser/tablist/w;Lcom/dolphin/browser/ui/fake/AlertDialog;)Lcom/dolphin/browser/ui/fake/AlertDialog;

    .line 98
    return-void
.end method
