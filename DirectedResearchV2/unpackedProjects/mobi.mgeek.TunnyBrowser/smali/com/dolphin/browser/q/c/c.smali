.class Lcom/dolphin/browser/q/c/c;
.super Lcom/facebook/dolphin/BaseRequestListener;
.source "FacebookManager.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/q/c/p;

.field final synthetic b:Lcom/dolphin/browser/q/c/b;

.field private c:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/q/c/b;Lcom/dolphin/browser/q/c/p;)V
    .locals 1

    .prologue
    .line 316
    iput-object p1, p0, Lcom/dolphin/browser/q/c/c;->b:Lcom/dolphin/browser/q/c/b;

    iput-object p2, p0, Lcom/dolphin/browser/q/c/c;->a:Lcom/dolphin/browser/q/c/p;

    invoke-direct {p0}, Lcom/facebook/dolphin/BaseRequestListener;-><init>()V

    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/dolphin/browser/q/c/c;->c:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/facebook/dolphin/SessionEvents;->onLogoutFinish()V

    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/q/c/c;->a:Lcom/dolphin/browser/q/c/p;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/q/c/c;->a:Lcom/dolphin/browser/q/c/p;

    invoke-interface {v0}, Lcom/dolphin/browser/q/c/p;->a()V

    .line 361
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/dolphin/browser/q/c/c;)V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/dolphin/browser/q/c/c;->a()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/dolphin/browser/q/c/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/q/c/e;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/c/e;-><init>(Lcom/dolphin/browser/q/c/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 377
    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/dolphin/browser/q/c/c;->c:Landroid/os/Handler;

    new-instance v1, Lcom/dolphin/browser/q/c/d;

    invoke-direct {v1, p0}, Lcom/dolphin/browser/q/c/d;-><init>(Lcom/dolphin/browser/q/c/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 332
    return-void
.end method

.method public onFacebookError(Lcom/facebook/dolphin/FacebookError;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/dolphin/browser/q/c/c;->b()V

    .line 337
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/dolphin/browser/q/c/c;->b()V

    .line 343
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/dolphin/browser/q/c/c;->b()V

    .line 348
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/dolphin/browser/q/c/c;->b()V

    .line 354
    return-void
.end method
