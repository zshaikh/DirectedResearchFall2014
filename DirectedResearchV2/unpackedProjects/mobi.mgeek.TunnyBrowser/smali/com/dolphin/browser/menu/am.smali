.class Lcom/dolphin/browser/menu/am;
.super Ljava/lang/Object;
.source "PanelMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/ak;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/ak;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/dolphin/browser/menu/am;->a:Lcom/dolphin/browser/menu/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/dolphin/browser/c/p;

    invoke-direct {v0}, Lcom/dolphin/browser/c/p;-><init>()V

    invoke-virtual {v0}, Lcom/dolphin/browser/c/p;->a()Z

    .line 286
    return-void
.end method
