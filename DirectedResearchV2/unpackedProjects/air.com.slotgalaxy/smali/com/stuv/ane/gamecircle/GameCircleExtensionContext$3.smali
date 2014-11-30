.class Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$3;
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
    iput-object p1, p0, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$3;->this$0:Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;

    .line 35
    invoke-direct {p0}, Lcom/stuv/ane/gamecircle/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$3;->getString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "achievement":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$3;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 41
    .local v1, "progress":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->updateAchievement(Ljava/lang/String;D)V

    .line 42
    return-void
.end method
