.class public final enum Lcom/fusepowered/util/FuseAdErrors;
.super Ljava/lang/Enum;
.source "FuseAdErrors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseAdErrors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseAdErrors;

.field public static final enum FUSE_AD_NOT_CONNECTED:Lcom/fusepowered/util/FuseAdErrors;

.field public static final enum FUSE_AD_NO_ERROR:Lcom/fusepowered/util/FuseAdErrors;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseAdErrors;

    const-string v1, "FUSE_AD_NO_ERROR"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/FuseAdErrors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NO_ERROR:Lcom/fusepowered/util/FuseAdErrors;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseAdErrors;

    const-string v1, "FUSE_AD_NOT_CONNECTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/FuseAdErrors;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NOT_CONNECTED:Lcom/fusepowered/util/FuseAdErrors;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/util/FuseAdErrors;

    sget-object v1, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NO_ERROR:Lcom/fusepowered/util/FuseAdErrors;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NOT_CONNECTED:Lcom/fusepowered/util/FuseAdErrors;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/util/FuseAdErrors;->$VALUES:[Lcom/fusepowered/util/FuseAdErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/fusepowered/util/FuseAdErrors;->errorCode:I

    .line 11
    return-void
.end method

.method public static getFuseAdErrorByCode(I)Lcom/fusepowered/util/FuseAdErrors;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 28
    sget-object v0, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NO_ERROR:Lcom/fusepowered/util/FuseAdErrors;

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NO_ERROR:Lcom/fusepowered/util/FuseAdErrors;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseAdErrors;->FUSE_AD_NOT_CONNECTED:Lcom/fusepowered/util/FuseAdErrors;

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseAdErrors;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseAdErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fusepowered/util/FuseAdErrors;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseAdErrors;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseAdErrors;->$VALUES:[Lcom/fusepowered/util/FuseAdErrors;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseAdErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseAdErrors;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/fusepowered/util/FuseAdErrors;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 18
    iput p1, p0, Lcom/fusepowered/util/FuseAdErrors;->errorCode:I

    .line 19
    return-void
.end method
