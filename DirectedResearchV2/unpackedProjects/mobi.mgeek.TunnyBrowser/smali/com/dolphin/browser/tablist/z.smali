.class Lcom/dolphin/browser/tablist/z;
.super Ljava/lang/Object;
.source "CloudTabReceivedManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/w;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/w;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/dolphin/browser/tablist/z;->a:Lcom/dolphin/browser/tablist/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/tablist/z;->a:Lcom/dolphin/browser/tablist/w;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/w;->c(Lcom/dolphin/browser/tablist/w;)V

    .line 80
    return-void
.end method
