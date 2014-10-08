.class public Lcom/buffalostudios/aneutils/ANEUtils$SetInForeground;
.super Ljava/lang/Object;
.source "ANEUtils.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/buffalostudios/aneutils/ANEUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetInForeground"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p1, "context"    # Lcom/adobe/fre/FREContext;
    .param p2, "args"    # [Lcom/adobe/fre/FREObject;

    .prologue
    const/4 v4, 0x0

    .line 34
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, p2, v2

    invoke-virtual {v2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result v1

    .line 35
    .local v1, "inForeground":Z
    # invokes: Lcom/buffalostudios/aneutils/ANEUtils;->setInForeground(Z)V
    invoke-static {v1}, Lcom/buffalostudios/aneutils/ANEUtils;->access$0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 40
    .end local v1    # "inForeground":Z
    :goto_0
    return-object v2

    .line 36
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ANEUtils"

    const-string v3, "Parse exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 38
    goto :goto_0
.end method
