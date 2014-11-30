.class Lcom/dolphin/browser/q/d/aj;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/h;
.implements Lcom/dolphin/browser/q/d/i;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/aa;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/q/d/aa;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/dolphin/browser/q/d/aj;->a:Lcom/dolphin/browser/q/d/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/ab;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/dolphin/browser/q/d/aj;-><init>(Lcom/dolphin/browser/q/d/aa;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aj;->a:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/aa;->b(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/j;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/q/d/aj;->a:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v1}, Lcom/dolphin/browser/q/d/aa;->a(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/d/j;->b(Lcom/dolphin/browser/q/d/k;)V

    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aj;->a:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->g()V

    .line 86
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aj;->a:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/aa;->b(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/j;->a()V

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aj;->a:Lcom/dolphin/browser/q/d/aa;

    invoke-virtual {v0}, Lcom/dolphin/browser/q/d/aa;->b()V

    .line 100
    iget-object v0, p0, Lcom/dolphin/browser/q/d/aj;->a:Lcom/dolphin/browser/q/d/aa;

    invoke-static {v0}, Lcom/dolphin/browser/q/d/aa;->c(Lcom/dolphin/browser/q/d/aa;)Lcom/dolphin/browser/q/d/ao;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/d/ao;->a(Ljava/lang/String;)V

    .line 101
    return-void
.end method
