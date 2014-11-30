.class Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$6;
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
    iput-object p1, p0, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$6;->this$0:Lcom/stuv/ane/gamecircle/GameCircleExtensionContext;

    .line 66
    invoke-direct {p0}, Lcom/stuv/ane/gamecircle/BasicFunction;-><init>()V

    return-void
.end method


# virtual methods
.method protected processCall()V
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$6;->getString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/stuv/ane/gamecircle/GameCircleExtensionContext$6;->getString()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "data":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/stuv/ane/gamecircle/GameCircleWrapper;->setCloudData(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
