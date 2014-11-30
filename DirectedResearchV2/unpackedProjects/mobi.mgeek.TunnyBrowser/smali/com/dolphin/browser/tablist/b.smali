.class Lcom/dolphin/browser/tablist/b;
.super Ljava/lang/Object;
.source "AnimListItemParent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/AnimListItemParent;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/AnimListItemParent;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dolphin/browser/tablist/b;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/tablist/b;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/AnimListItemParent;)Lcom/dolphin/browser/tablist/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/tablist/b;->a:Lcom/dolphin/browser/tablist/AnimListItemParent;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/AnimListItemParent;->a(Lcom/dolphin/browser/tablist/AnimListItemParent;)Lcom/dolphin/browser/tablist/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/tablist/f;->a()V

    .line 128
    :cond_0
    return-void
.end method
