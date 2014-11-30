.class Lcom/dolphin/browser/theme/ao;
.super Ljava/lang/Object;
.source "ThemeInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeInstaller;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeInstaller;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/dolphin/browser/theme/ao;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dolphin/browser/theme/ao;->a:Lcom/dolphin/browser/theme/ThemeInstaller;

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ThemeInstaller;->finish()V

    .line 183
    return-void
.end method
