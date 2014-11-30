.class Lcom/dolphin/browser/q/a/o;
.super Ljava/lang/Object;
.source "BoxManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/a/s;
.implements Lcom/dolphin/browser/q/a/t;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/j;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/q/a/j;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dolphin/browser/q/a/o;->a:Lcom/dolphin/browser/q/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/k;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/a/o;-><init>(Lcom/dolphin/browser/q/a/j;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dolphin/browser/q/a/o;->a:Lcom/dolphin/browser/q/a/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->e()V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dolphin/browser/q/a/o;->a:Lcom/dolphin/browser/q/a/j;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/j;->a(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/u;->a()V

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/q/a/o;->a:Lcom/dolphin/browser/q/a/j;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/a/j;->b()V

    .line 90
    iget-object v0, p0, Lcom/dolphin/browser/q/a/o;->a:Lcom/dolphin/browser/q/a/j;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/j;->b(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/a/y;->a(Ljava/lang/String;)V

    .line 91
    return-void
.end method
