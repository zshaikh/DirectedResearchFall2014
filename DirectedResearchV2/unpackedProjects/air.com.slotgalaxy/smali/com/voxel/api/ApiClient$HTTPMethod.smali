.class public final enum Lcom/voxel/api/ApiClient$HTTPMethod;
.super Ljava/lang/Enum;
.source "ApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/api/ApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HTTPMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/voxel/api/ApiClient$HTTPMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/api/ApiClient$HTTPMethod;

.field public static final enum DELETE:Lcom/voxel/api/ApiClient$HTTPMethod;

.field public static final enum GET:Lcom/voxel/api/ApiClient$HTTPMethod;

.field public static final enum POST:Lcom/voxel/api/ApiClient$HTTPMethod;

.field public static final enum PUT:Lcom/voxel/api/ApiClient$HTTPMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/voxel/api/ApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/api/ApiClient$HTTPMethod;->GET:Lcom/voxel/api/ApiClient$HTTPMethod;

    new-instance v0, Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v3}, Lcom/voxel/api/ApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/api/ApiClient$HTTPMethod;->PUT:Lcom/voxel/api/ApiClient$HTTPMethod;

    new-instance v0, Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/voxel/api/ApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/api/ApiClient$HTTPMethod;->POST:Lcom/voxel/api/ApiClient$HTTPMethod;

    new-instance v0, Lcom/voxel/api/ApiClient$HTTPMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/voxel/api/ApiClient$HTTPMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/api/ApiClient$HTTPMethod;->DELETE:Lcom/voxel/api/ApiClient$HTTPMethod;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/voxel/api/ApiClient$HTTPMethod;

    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->GET:Lcom/voxel/api/ApiClient$HTTPMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->PUT:Lcom/voxel/api/ApiClient$HTTPMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->POST:Lcom/voxel/api/ApiClient$HTTPMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/api/ApiClient$HTTPMethod;->DELETE:Lcom/voxel/api/ApiClient$HTTPMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/api/ApiClient$HTTPMethod;->$VALUES:[Lcom/voxel/api/ApiClient$HTTPMethod;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/api/ApiClient$HTTPMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/voxel/api/ApiClient$HTTPMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/voxel/api/ApiClient$HTTPMethod;

    return-object p0
.end method

.method public static values()[Lcom/voxel/api/ApiClient$HTTPMethod;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/voxel/api/ApiClient$HTTPMethod;->$VALUES:[Lcom/voxel/api/ApiClient$HTTPMethod;

    invoke-virtual {v0}, [Lcom/voxel/api/ApiClient$HTTPMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/api/ApiClient$HTTPMethod;

    return-object v0
.end method
