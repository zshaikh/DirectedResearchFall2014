.class public final enum Lcom/fusepowered/util/FuseServer$SERVER_NAMES;
.super Ljava/lang/Enum;
.source "FuseServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/util/FuseServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SERVER_NAMES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseServer$SERVER_NAMES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

.field public static final enum PROD:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

.field public static final enum STAGING:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    const-string v1, "STAGING"

    invoke-direct {v0, v1, v2}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->STAGING:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    .line 9
    new-instance v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    const-string v1, "PROD"

    invoke-direct {v0, v1, v3}, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->PROD:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    sget-object v1, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->STAGING:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->PROD:Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->$VALUES:[Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseServer$SERVER_NAMES;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseServer$SERVER_NAMES;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->$VALUES:[Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseServer$SERVER_NAMES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseServer$SERVER_NAMES;

    return-object v0
.end method
