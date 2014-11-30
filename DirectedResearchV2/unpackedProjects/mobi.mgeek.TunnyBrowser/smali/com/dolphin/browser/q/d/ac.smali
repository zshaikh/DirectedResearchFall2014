.class Lcom/dolphin/browser/q/d/ac;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/dolphin/browser/share/g;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/e;

.field final synthetic b:Lcom/dolphin/browser/q/d/aa;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/e;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/dolphin/browser/q/d/ac;->b:Lcom/dolphin/browser/q/d/aa;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/ac;->a:Lcom/dolphin/browser/q/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Lcom/dolphin/browser/q/d/g;->a()V

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ac;->a:Lcom/dolphin/browser/q/d/e;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ac;->a:Lcom/dolphin/browser/q/d/e;

    invoke-interface {v0}, Lcom/dolphin/browser/q/d/e;->a()V

    .line 165
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/dolphin/browser/q/d/g;->a(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ac;->a:Lcom/dolphin/browser/q/d/e;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/dolphin/browser/q/d/ac;->a:Lcom/dolphin/browser/q/d/e;

    invoke-interface {v1, v0}, Lcom/dolphin/browser/q/d/e;->a(Ljava/lang/String;)V

    .line 174
    :cond_0
    return-void
.end method
