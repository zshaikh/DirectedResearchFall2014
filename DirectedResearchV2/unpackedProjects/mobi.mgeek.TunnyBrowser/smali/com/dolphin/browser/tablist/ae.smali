.class Lcom/dolphin/browser/tablist/ae;
.super Ljava/lang/Object;
.source "CurrentTablistView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/tablist/ac;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/tablist/ac;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/dolphin/browser/tablist/ae;->a:Lcom/dolphin/browser/tablist/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/tablist/ae;->a:Lcom/dolphin/browser/tablist/ac;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/dolphin/browser/tablist/ac;->a(Lcom/dolphin/browser/tablist/ac;I)I

    .line 157
    return-void
.end method
