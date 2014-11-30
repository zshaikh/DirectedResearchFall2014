.class public final Lcom/nativex/common/ServerConfig;
.super Ljava/lang/Object;
.source "ServerConfig.java"


# static fields
.field private static serverUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/nativex/common/ServerConfig;->serverUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyConfiguration(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-object v0, Lcom/nativex/common/ServerConfig;->serverUrl:Ljava/lang/String;

    .line 29
    .local v0, "urltoApply":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 30
    const-string v0, "http://appclick.co/"

    .line 32
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p0

    goto :goto_0
.end method
