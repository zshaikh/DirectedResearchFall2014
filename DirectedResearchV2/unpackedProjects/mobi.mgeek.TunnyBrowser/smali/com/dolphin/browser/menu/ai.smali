.class final Lcom/dolphin/browser/menu/ai;
.super Lcom/dolphin/browser/c/a;
.source "PanelMenuTabBar.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

.field private b:I

.field private c:Lcom/dolphin/browser/c/a;

.field private d:Lcom/dolphin/browser/c/a;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/dolphin/browser/menu/ah;

    invoke-direct {v0, p1, p2}, Lcom/dolphin/browser/menu/ah;-><init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dolphin/browser/menu/ai;-><init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;Lcom/dolphin/browser/c/a;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/dolphin/browser/menu/PanelMenuTabBar;ILcom/dolphin/browser/c/a;Lcom/dolphin/browser/c/a;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/dolphin/browser/menu/ai;->a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 58
    iput p2, p0, Lcom/dolphin/browser/menu/ai;->b:I

    .line 59
    iput-object p3, p0, Lcom/dolphin/browser/menu/ai;->c:Lcom/dolphin/browser/c/a;

    .line 60
    iput-object p4, p0, Lcom/dolphin/browser/menu/ai;->d:Lcom/dolphin/browser/c/a;

    .line 61
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/menu/ai;->d:Lcom/dolphin/browser/c/a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/dolphin/browser/menu/ai;->d:Lcom/dolphin/browser/c/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dolphin/browser/menu/ai;->c:Lcom/dolphin/browser/c/a;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/dolphin/browser/menu/ai;->c:Lcom/dolphin/browser/c/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/c/a;->a()Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/dolphin/browser/menu/ai;->b:I

    iget-object v1, p0, Lcom/dolphin/browser/menu/ai;->a:Lcom/dolphin/browser/menu/PanelMenuTabBar;

    invoke-static {v1}, Lcom/dolphin/browser/menu/PanelMenuTabBar;->b(Lcom/dolphin/browser/menu/PanelMenuTabBar;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ai;->c()Z

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/dolphin/browser/menu/ai;->b()Z

    move-result v0

    goto :goto_0
.end method
