.class Lcom/dolphin/browser/tablist/aq;
.super Ljava/lang/Object;
.source "HorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/HorizontalListView;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/dolphin/browser/tablist/aq;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dolphin/browser/tablist/aq;->a:Lcom/dolphin/browser/tablist/HorizontalListView;

    invoke-static {v0}, Lcom/dolphin/browser/tablist/HorizontalListView;->c(Lcom/dolphin/browser/tablist/HorizontalListView;)V

    .line 309
    return-void
.end method
