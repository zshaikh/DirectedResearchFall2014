.class synthetic Lcom/fusepowered/util/FuseServer$1;
.super Ljava/lang/Object;
.source "FuseServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/util/FuseServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    invoke-static {}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->values()[Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    :try_start_0
    sget-object v0, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v1, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->STAGING:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v1}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fusepowered/util/FuseServer$1;->$SwitchMap$com$fusepowered$util$FuseServer$SERVER_NAMES:[I

    sget-object v1, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->PROD:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v1}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
