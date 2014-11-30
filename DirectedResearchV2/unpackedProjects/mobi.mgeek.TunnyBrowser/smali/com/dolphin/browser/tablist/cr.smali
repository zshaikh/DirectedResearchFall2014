.class Lcom/dolphin/browser/tablist/cr;
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
    .line 299
    iput-object p1, p0, Lcom/dolphin/browser/tablist/cr;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/dolphin/browser/tablist/cr;->a:Lcom/dolphin/browser/tablist/VerticalListView;

    invoke-virtual {v0}, Lcom/dolphin/browser/tablist/VerticalListView;->d()V

    .line 303
    return-void
.end method
