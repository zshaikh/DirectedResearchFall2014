.class Lcom/dolphin/browser/menu/m;
.super Ljava/lang/Object;
.source "ListMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/l;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/l;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/dolphin/browser/menu/m;->a:Lcom/dolphin/browser/menu/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 458
    new-instance v0, Lcom/dolphin/browser/c/p;

    invoke-direct {v0}, Lcom/dolphin/browser/c/p;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/p;->a()Z

    .line 459
    return-void
.end method
