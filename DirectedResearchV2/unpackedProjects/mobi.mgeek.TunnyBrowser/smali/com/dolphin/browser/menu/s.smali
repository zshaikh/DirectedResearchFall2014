.class Lcom/dolphin/browser/menu/s;
.super Lcom/g/a/c;
.source "MenuBar.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/MenuBar;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/MenuBar;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/dolphin/browser/menu/s;->a:Lcom/dolphin/browser/menu/MenuBar;

    invoke-direct {p0}, Lcom/g/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dolphin/browser/menu/s;->a:Lcom/dolphin/browser/menu/MenuBar;

    invoke-static {v0}, Lcom/dolphin/browser/menu/MenuBar;->a(Lcom/dolphin/browser/menu/MenuBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/dolphin/browser/menu/s;->a:Lcom/dolphin/browser/menu/MenuBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/MenuBar;->setVisibility(I)V

    .line 286
    :cond_0
    return-void
.end method

.method public c(Lcom/g/a/a;)V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/dolphin/browser/menu/s;->a:Lcom/dolphin/browser/menu/MenuBar;

    invoke-static {v0}, Lcom/dolphin/browser/menu/MenuBar;->a(Lcom/dolphin/browser/menu/MenuBar;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/dolphin/browser/menu/s;->a:Lcom/dolphin/browser/menu/MenuBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/menu/MenuBar;->setVisibility(I)V

    .line 294
    :cond_0
    return-void
.end method

.method public d(Lcom/g/a/a;)V
    .locals 0

    .prologue
    .line 299
    return-void
.end method
