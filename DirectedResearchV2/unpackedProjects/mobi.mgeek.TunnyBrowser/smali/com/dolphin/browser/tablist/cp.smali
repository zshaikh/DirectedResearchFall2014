.class Lcom/dolphin/browser/tablist/cp;
.super Ljava/lang/Object;
.source "VerticalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/VerticalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/VerticalListView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cp;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cp;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/VerticalListView;->b(Lcom/dolphin/browser/tablist/VerticalListView;)V

    .line 126
    return-void
.end method
