.class public Lcom/flurry/android/monolithic/sdk/impl/cf;
.super Landroid/widget/MediaController;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/flurry/android/monolithic/sdk/impl/n;

.field private c:Lcom/flurry/android/monolithic/sdk/impl/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flurry/android/monolithic/sdk/impl/n;Lcom/flurry/android/monolithic/sdk/impl/o;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/android/monolithic/sdk/impl/cf;->a:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/flurry/android/monolithic/sdk/impl/cf;->b:Lcom/flurry/android/monolithic/sdk/impl/n;

    .line 28
    iput-object p3, p0, Lcom/flurry/android/monolithic/sdk/impl/cf;->c:Lcom/flurry/android/monolithic/sdk/impl/o;

    .line 29
    return-void
.end method


# virtual methods
.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 61
    return-void
.end method
