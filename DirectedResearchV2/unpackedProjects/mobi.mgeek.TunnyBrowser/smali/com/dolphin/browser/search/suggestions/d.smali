.class Lcom/dolphin/browser/search/suggestions/d;
.super Ljava/lang/Object;
.source "AbstractSearchTabContainer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/dolphin/browser/search/suggestions/d;->a:Lcom/dolphin/browser/search/suggestions/AbstractSearchTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 271
    return-void
.end method
