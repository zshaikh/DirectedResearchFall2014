.class public final enum Lcom/fusepowered/util/FuseLoginError;
.super Ljava/lang/Enum;
.source "FuseLoginError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseLoginError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseLoginError;

.field public static final enum FUSE_ACCOUNT_NOT_CONNECTED:Lcom/fusepowered/util/FuseLoginError;

.field public static final enum FUSE_ACCOUNT_NO_ERROR:Lcom/fusepowered/util/FuseLoginError;

.field public static final enum FUSE_ACCOUNT_REQUEST_FAILED:Lcom/fusepowered/util/FuseLoginError;

.field public static final enum FUSE_ACCOUNT_SERVER_ERROR:Lcom/fusepowered/util/FuseLoginError;

.field public static final enum FUSE_ACCOUNT_SESSION_FAILURE:Lcom/fusepowered/util/FuseLoginError;

.field public static final enum FUSE_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseLoginError;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseLoginError;

    const-string v1, "FUSE_ACCOUNT_NO_ERROR"

    invoke-direct {v0, v1, v4, v4}, Lcom/fusepowered/util/FuseLoginError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NO_ERROR:Lcom/fusepowered/util/FuseLoginError;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseLoginError;

    const-string v1, "FUSE_ACCOUNT_SERVER_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lcom/fusepowered/util/FuseLoginError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_SERVER_ERROR:Lcom/fusepowered/util/FuseLoginError;

    .line 6
    new-instance v0, Lcom/fusepowered/util/FuseLoginError;

    const-string v1, "FUSE_ACCOUNT_NOT_CONNECTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/fusepowered/util/FuseLoginError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NOT_CONNECTED:Lcom/fusepowered/util/FuseLoginError;

    .line 7
    new-instance v0, Lcom/fusepowered/util/FuseLoginError;

    const-string v1, "FUSE_ACCOUNT_REQUEST_FAILED"

    invoke-direct {v0, v1, v7, v7}, Lcom/fusepowered/util/FuseLoginError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_REQUEST_FAILED:Lcom/fusepowered/util/FuseLoginError;

    .line 8
    new-instance v0, Lcom/fusepowered/util/FuseLoginError;

    const-string v1, "FUSE_ACCOUNT_SESSION_FAILURE"

    invoke-direct {v0, v1, v8, v8}, Lcom/fusepowered/util/FuseLoginError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_SESSION_FAILURE:Lcom/fusepowered/util/FuseLoginError;

    .line 9
    new-instance v0, Lcom/fusepowered/util/FuseLoginError;

    const-string v1, "FUSE_ERROR_XML_PARSE_ERROR"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/fusepowered/util/FuseLoginError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseLoginError;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/fusepowered/util/FuseLoginError;

    sget-object v1, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NO_ERROR:Lcom/fusepowered/util/FuseLoginError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_SERVER_ERROR:Lcom/fusepowered/util/FuseLoginError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NOT_CONNECTED:Lcom/fusepowered/util/FuseLoginError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_REQUEST_FAILED:Lcom/fusepowered/util/FuseLoginError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_SESSION_FAILURE:Lcom/fusepowered/util/FuseLoginError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/fusepowered/util/FuseLoginError;->FUSE_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseLoginError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/fusepowered/util/FuseLoginError;->$VALUES:[Lcom/fusepowered/util/FuseLoginError;

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
    iput p3, p0, Lcom/fusepowered/util/FuseLoginError;->errorCode:I

    .line 15
    return-void
.end method

.method public static getFuseLoginErrorByCode(I)Lcom/fusepowered/util/FuseLoginError;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 26
    packed-switch p0, :pswitch_data_0

    .line 40
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NO_ERROR:Lcom/fusepowered/util/FuseLoginError;

    :goto_0
    return-object v0

    .line 28
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NO_ERROR:Lcom/fusepowered/util/FuseLoginError;

    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_SERVER_ERROR:Lcom/fusepowered/util/FuseLoginError;

    goto :goto_0

    .line 32
    :pswitch_2
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_NOT_CONNECTED:Lcom/fusepowered/util/FuseLoginError;

    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_REQUEST_FAILED:Lcom/fusepowered/util/FuseLoginError;

    goto :goto_0

    .line 36
    :pswitch_4
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ACCOUNT_SESSION_FAILURE:Lcom/fusepowered/util/FuseLoginError;

    goto :goto_0

    .line 38
    :pswitch_5
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->FUSE_ERROR_XML_PARSE_ERROR:Lcom/fusepowered/util/FuseLoginError;

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseLoginError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseLoginError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/util/FuseLoginError;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseLoginError;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseLoginError;->$VALUES:[Lcom/fusepowered/util/FuseLoginError;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseLoginError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseLoginError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/fusepowered/util/FuseLoginError;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/fusepowered/util/FuseLoginError;->errorCode:I

    .line 23
    return-void
.end method
