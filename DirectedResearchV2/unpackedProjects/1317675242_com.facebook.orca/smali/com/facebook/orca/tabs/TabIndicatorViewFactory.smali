.class public Lcom/facebook/orca/tabs/TabIndicatorViewFactory;
.super Ljava/lang/Object;
.source "TabIndicatorViewFactory.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/tabs/TabIndicatorView;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/orca/tabs/TabIndicatorView;

    iget-object v1, p0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/orca/tabs/TabIndicatorView;-><init>(Landroid/content/Context;)V

    .line 22
    iget-object v1, p0, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/tabs/TabIndicatorView;->setText(Ljava/lang/String;)V

    .line 23
    return-object v0
.end method
