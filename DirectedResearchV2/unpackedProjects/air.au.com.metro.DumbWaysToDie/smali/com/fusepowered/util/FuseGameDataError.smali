.class public final enum Lcom/fusepowered/util/FuseGameDataError;
.super Ljava/lang/Enum;
.source "FuseGameDataError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseGameDataError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseGameDataError;

.field public static final enum FUSE_GD_ERROR_NONE:Lcom/fusepowered/util/FuseGameDataError;

.field public static final enum FUSE_GD_ERROR_NOT_CONNECTED:Lcom/fusepowered/util/FuseGameDataError;

.field public static final enum FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

.field public static final enum FUSE_GD_ERROR_REQUEST_FAILED:Lcom/fusepowered/util/FuseGameDataError;

.field public static final enum FUSE_GD_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseGameDataError;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseGameDataError;

    const-string v1, "FUSE_GD_ERROR_NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/FuseGameDataError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NONE:Lcom/fusepowered/util/FuseGameDataError;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseGameDataError;

    const-string v1, "FUSE_GD_ERROR_NO_ACCOUNT"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/FuseGameDataError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

    .line 6
    new-instance v0, Lcom/fusepowered/util/FuseGameDataError;

    const-string v1, "FUSE_GD_ERROR_NOT_CONNECTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/FuseGameDataError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NOT_CONNECTED:Lcom/fusepowered/util/FuseGameDataError;

    .line 7
    new-instance v0, Lcom/fusepowered/util/FuseGameDataError;

    const-string v1, "FUSE_GD_ERROR_REQUEST_FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/FuseGameDataError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_REQUEST_FAILED:Lcom/fusepowered/util/FuseGameDataError;

    .line 8
    new-instance v0, Lcom/fusepowered/util/FuseGameDataError;

    const-string v1, "FUSE_GD_ERROR_XML_PARSE_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/util/FuseGameDataError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseGameDataError;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/fusepowered/util/FuseGameDataError;

    sget-object v1, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NONE:Lcom/fusepowered/util/FuseGameDataError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NOT_CONNECTED:Lcom/fusepowered/util/FuseGameDataError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_REQUEST_FAILED:Lcom/fusepowered/util/FuseGameDataError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseGameDataError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/fusepowered/util/FuseGameDataError;->$VALUES:[Lcom/fusepowered/util/FuseGameDataError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/fusepowered/util/FuseGameDataError;->errorCode:I

    .line 15
    return-void
.end method

.method public static getFuseGameDataErrorByCode(I)Lcom/fusepowered/util/FuseGameDataError;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 38
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NONE:Lcom/fusepowered/util/FuseGameDataError;

    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NONE:Lcom/fusepowered/util/FuseGameDataError;

    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NO_ACCOUNT:Lcom/fusepowered/util/FuseGameDataError;

    goto :goto_0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_NOT_CONNECTED:Lcom/fusepowered/util/FuseGameDataError;

    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_REQUEST_FAILED:Lcom/fusepowered/util/FuseGameDataError;

    goto :goto_0

    .line 36
    :pswitch_4
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->FUSE_GD_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseGameDataError;

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseGameDataError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseGameDataError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/util/FuseGameDataError;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseGameDataError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseGameDataError;->$VALUES:[Lcom/fusepowered/util/FuseGameDataError;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseGameDataError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseGameDataError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fusepowered/util/FuseGameDataError;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/fusepowered/util/FuseGameDataError;->errorCode:I

    .line 23
    return-void
.end method
