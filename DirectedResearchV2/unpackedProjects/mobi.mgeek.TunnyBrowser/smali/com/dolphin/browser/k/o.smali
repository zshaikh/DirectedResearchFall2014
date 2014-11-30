.class public Lcom/dolphin/browser/k/o;
.super Ljava/util/Observable;
.source "TabListCountObservable.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/dolphin/browser/k/o;->a:I

    return v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 12
    iget v0, p0, Lcom/dolphin/browser/k/o;->a:I

    if-eq v0, p1, :cond_0

    .line 13
    iput p1, p0, Lcom/dolphin/browser/k/o;->a:I

    .line 14
    invoke-static {}, Lcom/dolphin/browser/k/j;->a()Lcom/dolphin/browser/k/j;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/j;->a(I)Ljava/util/Observable;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/k/g;

    iget v1, p0, Lcom/dolphin/browser/k/o;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/k/g;->a(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/dolphin/browser/k/o;->setChanged()V

    .line 17
    invoke-virtual {p0}, Lcom/dolphin/browser/k/o;->notifyObservers()V

    .line 19
    :cond_0
    return-void
.end method
