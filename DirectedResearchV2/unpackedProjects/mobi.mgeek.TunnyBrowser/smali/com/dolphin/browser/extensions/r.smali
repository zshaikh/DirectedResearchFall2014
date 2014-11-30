.class Lcom/dolphin/browser/extensions/r;
.super Ljava/lang/Object;
.source "ExtensionStub.java"

# interfaces
.implements Lcom/dolphin/browser/extensions/IBaseExtension;


# instance fields
.field private final a:Lcom/dolphin/browser/extensions/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extensions/a;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/dolphin/browser/extensions/r;->a:Lcom/dolphin/browser/extensions/a;

    .line 56
    return-void
.end method


# virtual methods
.method public getExtensionDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/extensions/r;->a:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/extensions/r;->a:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getExtensionTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/extensions/r;->a:Lcom/dolphin/browser/extensions/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/extensions/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateHandler()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onDisable()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onEnable()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onExtensionClick(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public refreshConfig()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method
