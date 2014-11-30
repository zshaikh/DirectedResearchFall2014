.class public Lcom/dolphin/browser/q/b/b;
.super Ljava/util/Observable;
.source "AsyncTaskRunner.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/b/a;

.field private b:Lcom/c/b/a/a;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/q/b/a;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/dolphin/browser/q/b/b;->a:Lcom/dolphin/browser/q/b/a;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/dolphin/browser/q/b/b;->setChanged()V

    .line 134
    iget-object v0, p0, Lcom/dolphin/browser/q/b/b;->b:Lcom/c/b/a/a;

    invoke-virtual {p0, v0}, Lcom/dolphin/browser/q/b/b;->notifyObservers(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public a(Lcom/c/b/a/a;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/dolphin/browser/q/b/b;->b:Lcom/c/b/a/a;

    .line 130
    return-void
.end method
