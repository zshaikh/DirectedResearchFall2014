.class Lcom/dolphin/browser/q/a/l;
.super Ljava/lang/Object;
.source "BoxManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/a/a;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/p;

.field final synthetic b:Lcom/dolphin/browser/q/a/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/p;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/dolphin/browser/q/a/l;->b:Lcom/dolphin/browser/q/a/j;

    iput-object p2, p0, Lcom/dolphin/browser/q/a/l;->a:Lcom/dolphin/browser/q/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    invoke-static {p1}, Lcom/dolphin/browser/q/a/r;->a(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/q/a/l;->a:Lcom/dolphin/browser/q/a/p;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/dolphin/browser/q/a/l;->a:Lcom/dolphin/browser/q/a/p;

    invoke-interface {v0, p1}, Lcom/dolphin/browser/q/a/p;->a(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/dolphin/browser/q/a/r;->a()V

    .line 152
    iget-object v0, p0, Lcom/dolphin/browser/q/a/l;->a:Lcom/dolphin/browser/q/a/p;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/dolphin/browser/q/a/l;->a:Lcom/dolphin/browser/q/a/p;

    invoke-interface {v0}, Lcom/dolphin/browser/q/a/p;->a()V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/a/l;->b(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/q/a/l;->b:Lcom/dolphin/browser/q/a/j;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/j;->d(Lcom/dolphin/browser/q/a/j;)Lcom/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/b/a/a;->b(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/q/a/l;->b:Lcom/dolphin/browser/q/a/j;

    invoke-static {v0}, Lcom/dolphin/browser/q/a/j;->a(Lcom/dolphin/browser/q/a/j;)Lcom/dolphin/browser/q/a/u;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/q/a/l;->b:Lcom/dolphin/browser/q/a/j;

    invoke-static {v1}, Lcom/dolphin/browser/q/a/j;->d(Lcom/dolphin/browser/q/a/j;)Lcom/b/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/q/a/u;->b(Lcom/b/a/a;)V

    .line 142
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/l;->c()V

    .line 143
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dolphin/browser/q/a/l;->b(Ljava/lang/String;)V

    .line 148
    return-void
.end method
