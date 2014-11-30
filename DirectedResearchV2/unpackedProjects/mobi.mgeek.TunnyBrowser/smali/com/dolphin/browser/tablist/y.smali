.class Lcom/dolphin/browser/tablist/y;
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
    .line 82
    iput-object p1, p0, Lcom/dolphin/browser/tablist/y;->a:Lcom/dolphin/browser/tablist/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dolphin/browser/tablist/y;->a:Lcom/dolphin/browser/tablist/w;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/w;->b(Lcom/dolphin/browser/tablist/w;)V

    .line 88
    return-void
.end method
