.class Lcom/dolphin/browser/q/d/ad;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Lcom/dolphin/browser/q/d/c;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/d/f;

.field final synthetic b:Lcom/dolphin/browser/q/d/aa;

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/d/aa;Lcom/dolphin/browser/q/d/f;)V
    .locals 1

    .prologue
    .line 196
    iput-object p1, p0, Lcom/dolphin/browser/q/d/ad;->b:Lcom/dolphin/browser/q/d/aa;

    iput-object p2, p0, Lcom/dolphin/browser/q/d/ad;->a:Lcom/dolphin/browser/q/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/d/ad;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/d/ad;)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/ad;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/dolphin/browser/q/d/g;->c()V

    .line 226
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ad;->a:Lcom/dolphin/browser/q/d/f;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ad;->a:Lcom/dolphin/browser/q/d/f;

    invoke-interface {v0}, Lcom/dolphin/browser/q/d/f;->a()V

    .line 229
    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ad;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/q/d/af;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/d/af;-><init>(Lcom/dolphin/browser/q/d/ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 202
    invoke-static {}, Lcom/dolphin/browser/q/d/g;->b()V

    .line 203
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/dolphin/browser/q/d/ad;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/q/d/ae;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/d/ae;-><init>(Lcom/dolphin/browser/q/d/ad;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/dolphin/browser/q/d/ad;->c()V

    .line 222
    return-void
.end method
