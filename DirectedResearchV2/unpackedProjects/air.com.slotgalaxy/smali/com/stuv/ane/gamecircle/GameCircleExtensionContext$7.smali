.class Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$7;
.super Lcom/stuv/ane/gamecircle/BasicFunction;
.source "GameCircleExtensionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;->getFunctions()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;


# direct methods
.method constructor <init>(Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$7;->this$0:Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;

    .line 77
    invoke-direct {p0}, Lcom/stuv/ane/gamecircle/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->getCloudData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$7;->setResult(Ljava/lang/String;)V

    .line 82
    return-void
.end method
