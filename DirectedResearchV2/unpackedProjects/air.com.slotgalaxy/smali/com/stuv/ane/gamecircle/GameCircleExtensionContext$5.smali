.class Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$5;
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
    iput-object p1, p0, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$5;->this$0:Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;

    .line 55
    invoke-direct {p0}, Lcom/stuv/ane/gamecircle/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$5;->getString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "leaderboard":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$5;->getDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 61
    .local v1, "score":Ljava/lang/Double;
    invoke-static {v0, v1}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->submitScore(Ljava/lang/String;Ljava/lang/Double;)V

    .line 62
    return-void
.end method
