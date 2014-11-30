.class Lcom/dolphin/browser/tablist/ad;
.super Ljava/lang/Object;
.source "CurrentTablistView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ad;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ad;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/ac;->a(Lcom/dolphin/browser/tablist/ac;)Lcom/dolphin/browser/tablist/cu;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/cu;->a()V

    .line 141
    return-void
.end method
