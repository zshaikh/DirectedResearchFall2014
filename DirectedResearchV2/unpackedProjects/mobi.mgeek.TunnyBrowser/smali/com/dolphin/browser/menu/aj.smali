.class Lcom/dolphin/browser/menu/aj;
.super Ljava/lang/Object;
.source "PanelMenuTabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

.field private final b:I

.field private c:Lcom/dolphin/browser/c/a;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/dolphin/browser/menu/aj;->a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p2, p0, Lcom/dolphin/browser/menu/aj;->b:I

    .line 315
    iput-object p3, p0, Lcom/dolphin/browser/menu/aj;->c:Lcom/dolphin/browser/c/a;

    .line 316
    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;Lcom/dolphin/browser/menu/af;)V
    .locals 0

    .prologue
    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/menu/aj;-><init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/dolphin/browser/menu/aj;->b:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dolphin/browser/menu/v;->a(IZ)V

    .line 321
    iget-object v0, p0, Lcom/dolphin/browser/menu/aj;->c:Lcom/dolphin/browser/c/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    .line 323
    return-void
.end method
