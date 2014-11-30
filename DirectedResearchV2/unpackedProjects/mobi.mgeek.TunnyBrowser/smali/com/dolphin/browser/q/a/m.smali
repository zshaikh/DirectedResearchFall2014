.class Lcom/dolphin/browser/q/a/m;
.super Ljava/lang/Object;
.source "BoxManager.java"

# interfaces
.implements Lcom/b/a/c/f;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/a/q;

.field final synthetic b:Lcom/dolphin/browser/q/a/j;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/a/j;Lcom/dolphin/browser/q/a/q;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dolphin/browser/q/a/m;->b:Lcom/dolphin/browser/q/a/j;

    iput-object p2, p0, Lcom/dolphin/browser/q/a/m;->a:Lcom/dolphin/browser/q/a/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 192
    invoke-static {}, Lcom/dolphin/browser/q/a/r;->c()V

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/q/a/m;->a:Lcom/dolphin/browser/q/a/q;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/dolphin/browser/q/a/m;->a:Lcom/dolphin/browser/q/a/q;

    invoke-interface {v0}, Lcom/dolphin/browser/q/a/q;->b()V

    .line 196
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/IOException;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/m;->a()V

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/dolphin/browser/q/a/m;->a()V

    .line 189
    return-void
.end method
