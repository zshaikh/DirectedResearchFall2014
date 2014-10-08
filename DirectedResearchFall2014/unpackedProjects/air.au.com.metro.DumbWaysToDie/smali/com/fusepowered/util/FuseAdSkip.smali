.class public final enum Lcom/fusepowered/util/FuseAdSkip;
.super Ljava/lang/Enum;
.source "FuseAdSkip.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fusepowered/util/FuseAdSkip;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fusepowered/util/FuseAdSkip;

.field public static final enum FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

.field public static final enum FUSE_AD_SKIP_TIMEOUT:Lcom/fusepowered/util/FuseAdSkip;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/fusepowered/util/FuseAdSkip;

    const-string v1, "FUSE_AD_SKIP_NO_HTML"

    invoke-direct {v0, v1, v2, v2}, Lcom/fusepowered/util/FuseAdSkip;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

    .line 5
    new-instance v0, Lcom/fusepowered/util/FuseAdSkip;

    const-string v1, "FUSE_AD_SKIP_TIMEOUT"

    invoke-direct {v0, v1, v3, v3}, Lcom/fusepowered/util/FuseAdSkip;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_TIMEOUT:Lcom/fusepowered/util/FuseAdSkip;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fusepowered/util/FuseAdSkip;

    sget-object v1, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_TIMEOUT:Lcom/fusepowered/util/FuseAdSkip;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fusepowered/util/FuseAdSkip;->$VALUES:[Lcom/fusepowered/util/FuseAdSkip;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/fusepowered/util/FuseAdSkip;->errorCode:I

    .line 11
    return-void
.end method

.method public static getFuseAdSkipErrorByCode(I)Lcom/fusepowered/util/FuseAdSkip;
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 22
    packed-switch p0, :pswitch_data_0

    .line 28
    sget-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    sget-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_NO_HTML:Lcom/fusepowered/util/FuseAdSkip;

    goto :goto_0

    .line 26
    :pswitch_1
    sget-object v0, Lcom/fusepowered/util/FuseAdSkip;->FUSE_AD_SKIP_TIMEOUT:Lcom/fusepowered/util/FuseAdSkip;

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fusepowered/util/FuseAdSkip;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/fusepowered/util/FuseAdSkip;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/fusepowered/util/FuseAdSkip;

    return-object p0
.end method

.method public static values()[Lcom/fusepowered/util/FuseAdSkip;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/fusepowered/util/FuseAdSkip;->$VALUES:[Lcom/fusepowered/util/FuseAdSkip;

    invoke-virtual {v0}, [Lcom/fusepowered/util/FuseAdSkip;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fusepowered/util/FuseAdSkip;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/fusepowered/util/FuseAdSkip;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/fusepowered/util/FuseAdSkip;->errorCode:I

    .line 19
    return-void
.end method
