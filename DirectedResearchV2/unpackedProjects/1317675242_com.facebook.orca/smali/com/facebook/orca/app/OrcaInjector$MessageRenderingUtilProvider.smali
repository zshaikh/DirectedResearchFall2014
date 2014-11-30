.class Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;
.super Ljava/lang/Object;
.source "OrcaInjector.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<",
        "Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/app/OrcaInjector;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/app/OrcaInjector;)V
    .locals 0

    .prologue
    .line 795
    iput-object p1, p0, Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/app/OrcaInjector;Lcom/facebook/orca/app/OrcaInjector$1;)V
    .locals 0

    .prologue
    .line 795
    invoke-direct {p0, p1}, Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;-><init>(Lcom/facebook/orca/app/OrcaInjector;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;
    .locals 4

    .prologue
    .line 799
    new-instance v1, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    iget-object v0, p0, Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;->a:Lcom/facebook/orca/app/OrcaInjector;

    const-class v3, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/app/OrcaInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/share/ShareRenderingLogic;

    invoke-direct {v1, v0, p0}, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;-><init>(Landroid/content/res/Resources;Lcom/facebook/orca/share/ShareRenderingLogic;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/facebook/orca/app/OrcaInjector$MessageRenderingUtilProvider;->a()Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    move-result-object v0

    return-object v0
.end method
