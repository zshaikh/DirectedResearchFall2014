.class Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;
.super Ljava/lang/Object;
.source "FbSdkLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playtika/extensions/fbsdk/FbSdkLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedMessage"
.end annotation


# instance fields
.field public additionalParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public level:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

.field public message:Ljava/lang/String;

.field public state:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "level"    # Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p4, "additionalParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->state:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->message:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->level:Lcom/playtika/extensions/concurrency/logging/GraylogLoggerService$Level;

    .line 128
    iput-object p4, p0, Lcom/playtika/extensions/fbsdk/FbSdkLogger$CachedMessage;->additionalParams:Ljava/util/HashMap;

    .line 129
    return-void
.end method
