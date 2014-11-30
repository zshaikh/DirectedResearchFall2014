.class public Lcom/facebook/ane/AneLoginButton;
.super Lcom/facebook/widget/LoginButton;
.source "AneLoginButton.java"


# instance fields
.field public final clickListener:Lcom/facebook/widget/LoginButton$LoginClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;)V

    iput-object v0, p0, Lcom/facebook/ane/AneLoginButton;->clickListener:Lcom/facebook/widget/LoginButton$LoginClickListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;)V

    iput-object v0, p0, Lcom/facebook/ane/AneLoginButton;->clickListener:Lcom/facebook/widget/LoginButton$LoginClickListener;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/LoginButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;)V

    iput-object v0, p0, Lcom/facebook/ane/AneLoginButton;->clickListener:Lcom/facebook/widget/LoginButton$LoginClickListener;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/facebook/widget/LoginButton$LoginClickListener;

    invoke-direct {v0, p0}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;)V

    iput-object v0, p0, Lcom/facebook/ane/AneLoginButton;->clickListener:Lcom/facebook/widget/LoginButton$LoginClickListener;

    .line 46
    invoke-virtual {p0, p2}, Lcom/facebook/ane/AneLoginButton;->setApplicationId(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected finishInit()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/ane/AneLoginButton;->clickListener:Lcom/facebook/widget/LoginButton$LoginClickListener;

    invoke-virtual {p0, v0}, Lcom/facebook/ane/AneLoginButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-super {p0}, Lcom/facebook/widget/LoginButton;->finishInit()V

    .line 53
    return-void
.end method
