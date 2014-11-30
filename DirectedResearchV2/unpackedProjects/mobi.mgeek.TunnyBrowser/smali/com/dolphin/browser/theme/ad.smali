.class Lcom/dolphin/browser/theme/ad;
.super Ljava/lang/Object;
.source "ThemeActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/theme/ThemeActivity2;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/theme/ThemeActivity2;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/dolphin/browser/theme/ad;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/dolphin/browser/theme/ad;->a:Lcom/dolphin/browser/theme/ThemeActivity2;

    invoke-static {v0}, Lcom/dolphin/browser/theme/ThemeActivity2;->d(Lcom/dolphin/browser/theme/ThemeActivity2;)Lcom/dolphin/browser/theme/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/theme/ar;->g()V

    .line 608
    return-void
.end method
