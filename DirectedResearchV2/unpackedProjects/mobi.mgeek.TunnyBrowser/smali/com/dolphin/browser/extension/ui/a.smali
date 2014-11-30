.class Lcom/dolphin/browser/extension/ui/a;
.super Ljava/lang/Object;
.source "AddonAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/extension/ui/AddonAboutActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/extension/ui/AddonAboutActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/dolphin/browser/extension/ui/a;->a:Lcom/dolphin/browser/extension/ui/AddonAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dolphin/browser/extension/ui/a;->a:Lcom/dolphin/browser/extension/ui/AddonAboutActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/extension/ui/AddonAboutActivity;->finish()V

    .line 58
    return-void
.end method
