.class Lcom/dolphin/browser/extensions/w;
.super Ljava/lang/Object;
.source "FakeAddon.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IAddonBarExtention;
.implements Lcom/dolphin/browser/extensions/IBaseExtension;
.implements Lcom/dolphin/browser/extensions/ISelectionExtension;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extensions/s;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/extensions/s;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/extensions/s;Lcom/dolphin/browser/extensions/t;)V
    .locals 0

    .prologue
    .line 392
    invoke-direct {p0, p1}, Lcom/dolphin/browser/extensions/w;-><init>(Lcom/dolphin/browser/extensions/s;)V

    return-void
.end method


# virtual methods
.method public getAddonBarIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/s;->b(Lcom/dolphin/browser/extensions/s;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getAddonBarTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    iget-object v0, v0, Lcom/dolphin/browser/extensions/s;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/s;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleText(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/s;->b(Landroid/content/Context;)V

    .line 417
    const/4 v0, 0x1

    return v0
.end method

.method public onAddonClick(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/s;->b(Landroid/content/Context;)V

    .line 402
    return-void
.end method

.method public onCreateHandler()V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public onDisable()V
    .locals 0

    .prologue
    .line 434
    return-void
.end method

.method public onEnable()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onExtensionClick(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/extensions/s;->b(Landroid/content/Context;)V

    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method public refreshConfig()V
    .locals 0

    .prologue
    .line 422
    return-void
.end method

.method public wantToShowInAddonBar()Z
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/dolphin/browser/extensions/w;->a:Lcom/dolphin/browser/extensions/s;

    invoke-static {v0}, Lcom/dolphin/browser/extensions/s;->c(Lcom/dolphin/browser/extensions/s;)Z

    move-result v0

    return v0
.end method
